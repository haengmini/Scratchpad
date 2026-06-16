# 2026-02-11T16:10:15.411105800
import vitis

client = vitis.create_client()
client.set_workspace(path="hello_world")

vitis.dispose()

