# Corresponding source, OHOS_v2.0.1.0 r5

Also for r1 to r4, whose packages are a subset of r5's or differ only as their `packages.tsv` shows. Source archives
are attached to GitHub releases of this repository. If anything is missing, the
[written offer](../../WRITTEN-OFFER.md) applies: email support@owlertos.com with the subject "Owlert OS source
request" and we send a download link, free.

| Part | Source | Archive |
|---|---|---|
| Linux kernel `7.0.0-g122c2c22d838` | `arduino/linux-qcom` @ `122c2c22d838` (config: with r6's) | attached: [`kernel-7.0.0-g122c2c22d838`](../../../../releases/tag/kernel-7.0.0-g122c2c22d838) |
| Debian packages (294 source packages with GPL/LGPL parts across r1 to r5; see `packages.tsv`) | exact source package versions from snapshot.debian.org | attached: [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0), one `<source>_<version>.src.tar` each |
| Qualcomm builds `pipewire 1.4.2-1~qcom1` and `webkit2gtk 2.48.3-1qcom1` | Debian's `1.4.2-1` and `2.48.3-1` sources (the base Qualcomm built from) are attached. Qualcomm's own changes aren't public in its packaging repository: the written offer covers them. | attached (base): [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0) |
| `hexagon-dsp-binaries 0~20260110-0qcom1~bpo1` | Qualcomm's packaging @ e598cc97; the DSP images are binary firmware under Qualcomm's redistribution licences | attached: [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0) |
| Arduino packages (`android-platform-tools 34.0.5-12arduino7`, `alsa-ucm-conf 1.2.14-1qcom0.1arduino3`) | no GPL or LGPL licence in these packages, so no source offer is needed | not needed |
| esptool 5.3.0 | esptool at v5.3.0 (the image ships Espressif's own single-file build, unmodified) | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) |
| OpenOCD (`/opt/openocd`) | `arduino/OpenOCD` @ e6a2c12f4 + submodules | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) |
| Arduino-ESP32 core 3.3.8 (LGPL-2.1, in the ESP32 firmware) | arduino-esp32 at 3.3.8 + relink kits for Owlert's firmware | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) |
| Arduino App Lab container images (in Arduino's base image) | sources of the GPL/LGPL components in those image layers | on request under the written offer (no longer shipped from r6) |
| mt76 USB Wi-Fi modules (`mt76-usb.ko`, `mt792x-usb.ko`, `mt7921u.ko`, built for kernel `6.16.7-g0dd6551ae96b`) | the out-of-tree mt76 driver these were built from was never pinned to a commit, so we can't provide the exact source. The modules couldn't load on this image's kernel. We stopped shipping them (not in r6) and removed them from every Owlert on 2026-10-26. | not available: see note |

The mt76 driver is upstream Linux code (dual BSD/GPL). The closest source is the `drivers/net/wireless/mediatek/mt76`
tree of the kernel these modules targeted; ask under the written offer and we'll send what we have, including the build
commands.
