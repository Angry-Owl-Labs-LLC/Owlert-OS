# OHOS_v2.0.1.0, image r8

Flashable Owlert OS image for the Arduino® UNO Q, and the first one built and signed for the **Stable** channel (signing
key `owlert-os-stable-9de6ed1832391cbf`). Built 2026-10-26 from Arduino's UNO Q Debian image
`arduino-unoq-debian-image-20260528-558` (sha256 `d692a12fab2b60acab3138db32c270ad29827c394553c97079b0d2a5c00dc0c8`).
On the Stable channel of the Owlert flasher since 2026-10-27 (replaces r7).

| File | What it is |
|---|---|
| [`packages.tsv`](packages.tsv) | All 559 installed packages: package, version, source package, source version, licences (from each package's `/usr/share/doc/<package>/copyright` in the image), read from r8's signed release. Identical to r7's. |
| [`kernel.md`](kernel.md) | The kernel, its configuration, and where its source is. |
| [`components.md`](components.md) | Software that isn't a Debian package: esptool, OpenOCD, the ESP32 firmware libraries, Tailscale, flask-sock. |
| [`NOTICE.txt`](NOTICE.txt) | The notice file shipped inside the image. |
| [`SOURCES.md`](SOURCES.md) | Where to get the corresponding source of each GPL/LGPL part. |

## What changed from r7

Nothing in the software. r8 is built from the same source as r7, with the same 559 packages, kernel and components.
The only difference is the release channel. r1 to r7 were built and signed as Developer-channel images, and r8 is
built and signed as Stable.
