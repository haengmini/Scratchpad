# 2026-02-13T11:36:45.529237600
import vitis

client = vitis.create_client()
client.set_workspace(path="hm_workspace")

vitis.dispose()

