# Kernel and modules, OHOS_v2.0.1.0 r5

**Kernel:** `7.0.0-g122c2c22d838`, Debian package `linux-image-7.0.0-g122c2c22d838` version `7.0.0-g122c2c22d838-1`,
built by Arduino for the UNO Q. Licence: GPL-2.0-only with Linux-syscall-note.

**Source:** https://github.com/arduino/linux-qcom at commit `122c2c22d838` (branch `qcom-v7.0.0-unoq`). The source
archive of that exact tree and its configuration is attached to the GitHub release.

**Modules shipped in the image but not loaded by this kernel:** three MediaTek USB Wi-Fi modules
(`mt76-usb.ko`, `mt792x-usb.ko`, `mt7921u.ko`, licence "Dual BSD/GPL") under `/opt/owlert`, built for an earlier
kernel (`6.16.7-g0dd6551ae96b`). This kernel never loads them. They come from the mt76 driver project
(https://github.com/openwrt/mt76); see [`SOURCES.md`](SOURCES.md) for their source.
