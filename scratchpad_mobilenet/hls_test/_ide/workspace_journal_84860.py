# 2026-02-23T12:34:24.185520900
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_test")

vitis.dispose()

