# Releases

Every Owlert OS release we have distributed, newest first. Each folder has the release's package list and a
`SOURCES.md` saying where each source archive is. The archives are GitHub releases of this repository:
[kernel](../../../releases/tag/kernel-7.0.0-g122c2c22d838),
[Debian packages](../../../releases/tag/sources-debian-OHOS_v2.0.1.0) and
[tools + ESP32 firmware relink kits](../../../releases/tag/sources-tools-20261026). The
[written offer](../WRITTEN-OFFER.md) covers all of them for at least three years after each was last distributed.

## Flashable images (Arduino® UNO Q)

| Release | Built | Packages | Notes |
|---|---|---|---|
| [`OHOS_v2.0.1.0-r6`](OHOS_v2.0.1.0-r6) | 2026-10-26 | 559 | Current Stable release. Tailscale from source, smaller image. |
| [`OHOS_v2.0.1.0-r5`](OHOS_v2.0.1.0-r5) | 2026-10-26 | 755 | Superseded by r6. |
| [`OHOS_v2.0.1.0-r4`](OHOS_v2.0.1.0-r4) | 2026-10-25 | 755 | Superseded by r5. |
| [`OHOS_v2.0.1.0-r3`](OHOS_v2.0.1.0-r3) | 2026-10 | 730 | Superseded. |
| [`OHOS_v2.0.1.0-r2`](OHOS_v2.0.1.0-r2) | 2026-10 | 729 | Superseded. |
| [`OHOS_v2.0.1.0-r1`](OHOS_v2.0.1.0-r1) | 2026-10 | 729 | Withdrawn. |

All six are built on Arduino's UNO Q Debian image `arduino-unoq-debian-image-20260528-558` with the Arduino kernel
`7.0.0-g122c2c22d838` (`arduino/linux-qcom` @ `122c2c22d838`).

## Update bundles (installed on existing Owlerts)

| Bundles | Distributed |
|---|---|
| `OHOS_v2.0.1.0` | July to October 2026 |
| `OHOS_v2.0.0.1`, `OHOS_v2.0.0.2`, `OMOS_v2.0.0.2`, `OMOS_v2.0.1.0`, `OMOS_v2.0.1.1`, `OPOS_v2.0.0.2`, `OOS_v2.0.0.1` | July to August 2026 |
| `v1.0.2.1` to `v1.0.5.2` | June 2026 |

What each bundle carries from third parties: [`update-bundles/`](update-bundles).
