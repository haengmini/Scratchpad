# 2026-02-12T13:03:06.863139
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_world")

vitis.dispose()

