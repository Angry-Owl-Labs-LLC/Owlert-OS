# Update bundles

Update bundles install Owlert OS onto an Owlert that already runs Arduino's UNO Q Debian image. Besides our own Owlert
software they carry these third-party parts, listed file by file in [`bundle-contents.tsv`](bundle-contents.tsv)
(bundle, path, kind):

| Kind | What | Licence | Bundles |
|---|---|---|---|
| `debian-package` | Offline Debian packages: `iw 6.9-1+b1`, `libnl-3-200` and `libnl-genl-3-200 3.7.0-2`, and Python packages (Flask 3.1.1, Werkzeug, Jinja2, MarkupSafe, Click, ItsDangerous, Blinker, msgpack, pySerial) | iw ISC; **libnl LGPL-2.1**; Python packages BSD/MIT | `v1.0.4.3`, all `v2.0.x` |
| `esptool-binary` | esptool 5.3.0, packaged single-file binary | **GPL-2.0-or-later** | all `v2.0.x` |
| `kernel-module` | `mt76-usb.ko`, `mt792x-usb.ko`, `mt7921u.ko` for kernel `6.16.7-g0dd6551ae96b` | **GPL-2.0** (source files dual BSD/GPL) | `v1.0.4.2` to `v1.0.5.2`, all `v2.0.x` |
| `esp32-firmware` | ESP32 sensor and display firmware images | Statically linked **Arduino-ESP32 core (LGPL-2.1)** + ESP-IDF (Apache-2.0) | `v1.0.3.2` onward |

The Debian packages' source is part of each release's source archives; the others are covered in each release's
`SOURCES.md` and by the [written offer](../../WRITTEN-OFFER.md).
