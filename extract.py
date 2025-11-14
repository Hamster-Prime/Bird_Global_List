import pandas as pd
import os

input_file = 'ipinfo_lite.csv'

if not os.path.exists(input_file):
    print(f"错误: 未找到文件 {input_file}")
else:
    df = pd.read_csv(input_file)

    df_ipv4 = df[~df['network'].str.contains(':')].copy()
    df_ipv6 = df[df['network'].str.contains(':')].copy()

    output_dir = 'Country_CIDR'
    os.makedirs(output_dir, exist_ok=True)

    for cc, group in df_ipv4.groupby('country_code'):
        list_name = f"{cc}"
        filename = os.path.join(output_dir, f"{list_name}.conf")

        print(f"正在生成 {filename}...")

        with open(filename, 'w') as f:
            f.write(f"# {list_name} cidr address-list\n")
            for net in group['network']:
                if '/' not in str(net):
                    net = f"{net}/32"
                f.write(f"route {net} via \"lo\";\n")

    if not df_ipv6.empty:
        for cc, group in df_ipv6.groupby('country_code'):
            list_name = f"{cc}"
            ipv6_filename = os.path.join(output_dir, f"{list_name}_IPv6.conf")

            print(f"正在生成 {ipv6_filename}...")

            with open(ipv6_filename, 'w') as f:
                f.write(f"# {list_name} IPv6 cidr address-list\n")
                for net in group['network']:
                    if '/' not in str(net):
                        net = f"{net}/128"
                    f.write(f"route {net} via \"lo\";\n")

    print("批量处理完成！")