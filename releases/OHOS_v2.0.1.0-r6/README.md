# OHOS_v2.0.1.0, image r6

Flashable Owlert OS image for the Arduino® UNO Q. Built 2026-10-26 from Arduino's UNO Q Debian image
`arduino-unoq-debian-image-20260528-558` (sha256 `d692a12fab2b60acab3138db32c270ad29827c394553c97079b0d2a5c00dc0c8`).
On the Stable channel of the Owlert flasher since 2026-10-26 (replaces r5).

| File | What it is |
|---|---|
| [`packages.tsv`](packages.tsv) | All 559 installed packages: package, version, source package, source version, licences (from each package's `/usr/share/doc/<package>/copyright` in the image). 392 of them carry a GPL or LGPL licence, from 236 source packages. |
| [`kernel.md`](kernel.md) | The kernel, its configuration, and where its source is. |
| [`components.md`](components.md) | Software that isn't a Debian package: esptool, OpenOCD, the ESP32 firmware libraries, Tailscale, flask-sock. |
| [`NOTICE.txt`](NOTICE.txt) | The notice file shipped inside the image. |
| [`SOURCES.md`](SOURCES.md) | Where to get the corresponding source of each GPL/LGPL part. |

## What changed from r5

- **Tailscale is built from Tailscale's own BSD-3-Clause source** (tag `v1.104.2`, commit `e26db7a5`), with
  `golang.org/x/net` raised to 0.60.0 for a security fix. The licence text ships in `/usr/share/doc/tailscale/`.
- **Smaller:** 196 fewer packages. Unused desktop and graphics software is gone (OpenCL/LLVM, Mesa and Vulkan tools, Qt 6,
  SDL, PipeWire and WirePlumber, WebKit documentation, X11 tools), and so are the Arduino App Lab container images
  (nothing in the image runs them) and the mt76 USB Wi-Fi modules, which were built for a kernel this image doesn't boot.
- **flask-sock 0.7.0** (MIT) for the device's web terminal, with Debian's `python3-simple-websocket`.
- Owlert's own software: a fix for false "RF jamming" alerts, and install fixes.
