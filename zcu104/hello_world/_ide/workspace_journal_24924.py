# 2026-02-11T15:27:28.321220700
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_world")

platform = client.create_platform_component(name = "hello_world_platform",hw_design = "$COMPONENT_LOCATION/../hello_world/hello_world_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="hello_world_app",platform = "$COMPONENT_LOCATION/../hello_world_platform/export/hello_world_platform/hello_world_platform.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="hello_world_platform")
status = platform.build()

comp = client.get_component(name="hello_world_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

