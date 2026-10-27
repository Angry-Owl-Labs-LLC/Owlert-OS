# Corresponding source, OHOS_v2.0.1.0 r8

Source archives for every GPL/LGPL part of this release. They're attached to GitHub releases of this repository. If
anything is missing, the [written offer](../../WRITTEN-OFFER.md) applies: email support@owlertos.com with the subject
"Owlert OS source request" and we send a download link, free.

| Part | Source | Archive |
|---|---|---|
| Linux kernel `7.0.0-g122c2c22d838` | `arduino/linux-qcom` @ `122c2c22d838` + config | attached: [`kernel-7.0.0-g122c2c22d838`](../../../../releases/tag/kernel-7.0.0-g122c2c22d838) |
| Debian packages (236 source packages with GPL/LGPL parts; see `packages.tsv`) | exact source package versions from snapshot.debian.org ([`scripts/fetch-debian-sources.sh`](../../scripts/fetch-debian-sources.sh)) | attached: [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0), one `<source>_<version>.src.tar` each |
| Arduino and Qualcomm packages (`android-platform-tools 34.0.5-12arduino7`, `alsa-ucm-conf 1.2.14-1qcom0.1arduino3`) | no GPL or LGPL licence in these packages, so no source offer is needed | not needed |
| `hexagon-dsp-binaries 0~20260110-0qcom1~bpo1` | Qualcomm's packaging (github.com/qualcomm-linux/pkg-hexagon-dsp-binaries @ e598cc97); the DSP images are binary firmware under Qualcomm's redistribution licences | attached: [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0) |
| esptool 5.3.0 | esptool at v5.3.0. The image ships Espressif's own single-file build, unmodified. | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) |
| OpenOCD (`/opt/openocd`, from Arduino's base image) | `arduino/OpenOCD` @ e6a2c12f4 + submodules (jimtcl, libjaylink) | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) |
| Arduino-ESP32 core 3.3.8 (LGPL-2.1, in the ESP32 firmware) | arduino-esp32 at 3.3.8, plus relink kits: Owlert's firmware objects and link steps, so you can relink with a modified core | attached: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026) (`RELINK-README.md`) |

Tailscale (BSD-3-Clause) and flask-sock (MIT) need no source offer; both upstream sources are public and linked in
[`components.md`](components.md). This image carries no mt76 modules.
