# 2026-02-12T16:33:00.102542700
import vitis

client = vitis.create_client()
client.set_workspace(path="hm_workspace")

platform = client.create_platform_component(name = "zcu104_platform",hw_design = "$COMPONENT_LOCATION/../mobilenet/mobilenet_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="sd_img_loader",platform = "$COMPONENT_LOCATION/../zcu104_platform/export/zcu104_platform/zcu104_platform.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="zcu104_platform")
domain = platform.get_domain(name="standalone_psu_cortexa53_0")

status = domain.set_lib(lib_name="xilffs", path="D:\Programs\Vitis\2024.2\data\embeddedsw\lib\sw_services\xilffs_v5_3")

status = domain.set_config(option = "lib", param = "XILFFS_use_lfn", value = "1", lib_name="xilffs")

status = platform.build()

status = platform.build()

comp = client.get_component(name="sd_img_loader")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

