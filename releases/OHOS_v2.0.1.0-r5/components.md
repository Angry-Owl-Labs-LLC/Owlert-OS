# Components outside the Debian package list, OHOS_v2.0.1.0 r5

| Component | Version | Licence | In the image | Upstream |
|---|---|---|---|---|
| esptool (packaged single-file binary; bundles CPython and Python libraries) | 5.3.0 | GPL-2.0-or-later | `/opt/owlert/nest/esp-tools/esptool` | https://github.com/espressif/esptool |
| OpenOCD, plus Arduino's `arduino-flash/reset/debug.sh` | from Arduino's base image | GPL-2.0-or-later | `/opt/openocd` | https://openocd.org |
| Arduino-ESP32 core (statically linked into the ESP32 sensor and display firmware) | 3.3.8 | LGPL-2.1 core, Apache-2.0 HAL | ESP32 firmware under `/opt/owlert` | https://github.com/espressif/arduino-esp32 |
| ESP-IDF and its components (FreeRTOS, lwIP, mbedTLS, wpa_supplicant, newlib) | as used by core 3.3.8 | Apache-2.0 and per-component permissive licences | ESP32 firmware | https://github.com/espressif/esp-idf |
| LVGL | 8.4.0 | MIT | ESP32 display firmware | https://lvgl.io |
| GFX Library for Arduino | 1.6.5 | BSD | ESP32 display firmware | https://github.com/moononournation/Arduino_GFX |
| Poppins font | | SIL OFL-1.1 | ESP32 display firmware | https://fonts.google.com/specimen/Poppins |
| Arduino App Lab container images: `ghcr.io/arduino/app-bricks/python-apps-base`, `ghcr.io/arduino/app-bricks/ei-models-runner`, `influxdb` | from Arduino's base image | app-bricks MPL-2.0; InfluxDB MIT; base layers mixed | `/var/lib/docker` | https://github.com/arduino/app-bricks-py |
| Tailscale client | 1.104.2 | BSD-3-Clause | system package | https://github.com/tailscale/tailscale |
| Qualcomm boot firmware | from Arduino's base image | Qualcomm binary licence ([`LICENSES/QUALCOMM-LICENSE.txt`](../../LICENSES/QUALCOMM-LICENSE.txt)) | boot partitions | |
| MediaTek MT7961 Wi-Fi/Bluetooth firmware | linux-firmware | MediaTek firmware licence ([`LICENSES/MEDIATEK-FIRMWARE-LICENSE.txt`](../../LICENSES/MEDIATEK-FIRMWARE-LICENSE.txt)) | `/usr/lib/firmware/mediatek` | |
