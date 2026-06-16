# 2026-02-23T14:34:09.281923500
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_test")

vitis.dispose()

