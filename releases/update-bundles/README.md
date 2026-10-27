# Update bundles

Update bundles install Owlert OS onto an Owlert that already runs Arduino's UNO Q Debian image. Besides our own Owlert
software they carry these third-party parts, listed file by file in [`bundle-contents.tsv`](bundle-contents.tsv)
(bundle, path, kind):

| Kind | What | Licence | Bundles |
|---|---|---|---|
| `debian-package` | Offline Debian packages: `iw 6.9-1+b1`, `libnl-3-200` and `libnl-genl-3-200 3.7.0-2`, and Python packages (Flask 3.1.1, Werkzeug, Jinja2, MarkupSafe, Click, ItsDangerous, Blinker, msgpack, pySerial) | iw ISC; **libnl LGPL-2.1**; Python packages BSD/MIT | `v1.0.4.3`, all `v2.0.x` |
| `esptool-binary` | esptool 5.3.0, packaged single-file binary | **GPL-2.0-or-later** | all `v2.0.x` |
| `kernel-module` | `mt76-usb.ko`, `mt792x-usb.ko`, `mt7921u.ko` for kernel `6.16.7-g0dd6551ae96b` (removed from every Owlert and from our release trees on 2026-10-26) | **GPL-2.0** (source files dual BSD/GPL) | `v1.0.4.2` to `v1.0.5.2`, all `v2.0.x` |
| `esp32-firmware` | ESP32 sensor and display firmware images | Statically linked **Arduino-ESP32 core (LGPL-2.1)** + ESP-IDF (Apache-2.0) | `v1.0.3.2` onward |

Sources:
- libnl3 3.7.0-2: [`sources-debian-OHOS_v2.0.1.0`](../../../../releases/tag/sources-debian-OHOS_v2.0.1.0) (`libnl3_3.7.0-2.src.tar`).
- esptool 5.3.0 and the Arduino-ESP32 core 3.3.8 with relink kits for the firmware: [`sources-tools-20261026`](../../../../releases/tag/sources-tools-20261026).
- mt76 modules: the exact out-of-tree source was never pinned, so it can't be provided; see [r5's `SOURCES.md`](../OHOS_v2.0.1.0-r5/SOURCES.md). The [written offer](../../WRITTEN-OFFER.md) covers anything else.
