# 2026-02-14T14:24:53.602828300
import vitis

client = vitis.create_client()
client.set_workspace(path="hm_workspace")

platform = client.get_component(name="zcu104_platform")
status = platform.build()

domain = platform.get_domain(name="standalone_psu_cortexa53_0")

status = domain.set_lib(lib_name="xilfpga", path="D:\Programs\Vitis\2024.2\data\embeddedsw\lib\sw_services\xilfpga_v6_7")

status = client.add_platform_repos(platform=["d:\Lab\Project\FPGA_accel\workspace\hm_workspace\zcu104_platform"])

status = client.add_platform_repos(platform=["d:\Lab\Project\FPGA_accel\workspace\hm_workspace\zcu104_platform"])

status = client.add_platform_repos(platform=["d:\Lab\Project\FPGA_accel\workspace\hm_workspace\zcu104_platform"])

status = client.add_platform_repos(platform=["d:\Lab\Project\FPGA_accel\workspace\hm_workspace\zcu104_platform"])

vitis.dispose()

