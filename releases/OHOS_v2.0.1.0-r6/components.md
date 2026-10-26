# Components outside the Debian package list, OHOS_v2.0.1.0 r6

| Component | Version | Licence | In the image | Upstream |
|---|---|---|---|---|
| esptool (packaged single-file binary; bundles CPython and Python libraries) | 5.3.0 | GPL-2.0-or-later | `/opt/owlert/nest/esp-tools/esptool` | https://github.com/espressif/esptool |
| OpenOCD, plus Arduino's `arduino-flash/reset/debug.sh` | from Arduino's base image | GPL-2.0-or-later | `/opt/openocd` | https://openocd.org |
| Arduino-ESP32 core (statically linked into the ESP32 sensor and display firmware) | 3.3.8 | LGPL-2.1 core, Apache-2.0 HAL | ESP32 firmware under `/opt/owlert` | https://github.com/espressif/arduino-esp32 |
| ESP-IDF and its components (FreeRTOS, lwIP, mbedTLS, wpa_supplicant, newlib) | as used by core 3.3.8 | Apache-2.0 and per-component permissive licences | ESP32 firmware | https://github.com/espressif/esp-idf |
| LVGL | 8.4.0 | MIT | ESP32 display firmware | https://lvgl.io |
| GFX Library for Arduino | 1.6.5 | BSD | ESP32 display firmware | https://github.com/moononournation/Arduino_GFX |
| Poppins font | | SIL OFL-1.1 | ESP32 display firmware | https://fonts.google.com/specimen/Poppins |
| Tailscale client, built from source (`golang.org/x/net` 0.60.0) | 1.104.2 (commit `e26db7a5`) | BSD-3-Clause | `/usr/bin/tailscale`, `/usr/sbin/tailscaled`; licence in `/usr/share/doc/tailscale/` | https://github.com/tailscale/tailscale |
| flask-sock (device web terminal) | 0.7.0 | MIT | `/usr/local/lib/python3.13/dist-packages/flask_sock/` | https://github.com/miguelgrinberg/flask-sock |
| Qualcomm boot firmware | from Arduino's base image | Qualcomm binary licence ([`LICENSES/QUALCOMM-LICENSE.txt`](../../LICENSES/QUALCOMM-LICENSE.txt)) | boot partitions | |
| MediaTek MT7961 Wi-Fi/Bluetooth firmware | linux-firmware | MediaTek firmware licence ([`LICENSES/MEDIATEK-FIRMWARE-LICENSE.txt`](../../LICENSES/MEDIATEK-FIRMWARE-LICENSE.txt)) | `/usr/lib/firmware/mediatek` | |
