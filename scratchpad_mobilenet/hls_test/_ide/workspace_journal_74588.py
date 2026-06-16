# 2026-02-23T12:52:25.904431900
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_test")

vitis.dispose()

