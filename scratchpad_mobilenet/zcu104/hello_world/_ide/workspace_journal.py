# 2026-02-12T14:23:08.255531500
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_world")

platform = client.get_component(name="hello_world_platform")
status = platform.build()

comp = client.get_component(name="hello_world_app")
status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

