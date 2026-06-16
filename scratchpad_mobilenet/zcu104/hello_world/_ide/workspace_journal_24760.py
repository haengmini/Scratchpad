# 2026-02-11T16:11:04.489741
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_world")

platform = client.get_component(name="hello_world_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world_app")
comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

