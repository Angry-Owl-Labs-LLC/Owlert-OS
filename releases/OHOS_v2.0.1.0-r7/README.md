# OHOS_v2.0.1.0, image r7

Flashable Owlert OS image for the Arduino® UNO Q. Built 2026-10-26 from Arduino's UNO Q Debian image
`arduino-unoq-debian-image-20260528-558` (sha256 `d692a12fab2b60acab3138db32c270ad29827c394553c97079b0d2a5c00dc0c8`).
On the Stable channel of the Owlert flasher since 2026-10-27 (replaces r6).

| File | What it is |
|---|---|
| [`packages.tsv`](packages.tsv) | All 559 installed packages: package, version, source package, source version, licences (from each package's `/usr/share/doc/<package>/copyright` in the image), read from r7's signed release. Identical to r6's. |
| [`kernel.md`](kernel.md) | The kernel, its configuration, and where its source is. |
| [`components.md`](components.md) | Software that isn't a Debian package: esptool, OpenOCD, the ESP32 firmware libraries, Tailscale, flask-sock. |
| [`NOTICE.txt`](NOTICE.txt) | The notice file shipped inside the image. |
| [`SOURCES.md`](SOURCES.md) | Where to get the corresponding source of each GPL/LGPL part. |

## What changed from r6

Only Owlert's own software. The third-party contents are the same as r6: the same 559 packages at the same
versions, the same kernel and configuration, and the same components.

- ESP32 board discovery waits while a board is busy, instead of switching off its radios, LEDs and screen.
- Device discovery only reads descriptions from devices on the Owlert's own network.
- Install fix for trees without the old mt76 driver folder.
