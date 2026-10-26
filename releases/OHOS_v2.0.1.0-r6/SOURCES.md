# Corresponding source, OHOS_v2.0.1.0 r6

Status of each GPL/LGPL source archive for this release. Archives are attached to the matching GitHub release as they
are assembled. Until an archive is attached, the [written offer](../../WRITTEN-OFFER.md) applies: email
support@owlertos.com with the subject "Owlert OS source request" and we send a download link, free.

| Part | Source | Archive |
|---|---|---|
| Linux kernel `7.0.0-g122c2c22d838` | `arduino/linux-qcom` @ `122c2c22d838` + config | attached: [`kernel-7.0.0-g122c2c22d838`](../../../../releases/tag/kernel-7.0.0-g122c2c22d838) |
| Debian packages (236 source packages with GPL/LGPL parts; see `packages.tsv`) | exact source package versions, from Debian's archive and snapshot.debian.org ([`scripts/fetch-debian-sources.sh`](../../scripts/fetch-debian-sources.sh)) | being assembled |
| Arduino and Qualcomm packages (`android-platform-tools 34.0.5-12arduino7`, `alsa-ucm-conf 1.2.14-1qcom0.1arduino3`; `hexagon-dsp-binaries` is binary firmware) | Arduino's package sources at those versions | being assembled |
| esptool 5.3.0 | esptool source at v5.3.0 + the packaging recipe | being attached |
| OpenOCD | OpenOCD source for Arduino's build | being assembled |
| Arduino-ESP32 core 3.3.8 (LGPL-2.1, in the ESP32 firmware) | arduino-esp32 at 3.3.8 + what's needed to relink the firmware | being assembled |

Tailscale (BSD-3-Clause) and flask-sock (MIT) need no source offer; both upstream sources are public and linked in
[`components.md`](components.md).
