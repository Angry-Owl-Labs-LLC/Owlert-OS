# ESP32 firmware

The Owlert's ESP32 sensors (Watch and Scout) and the ESP32-C6 display run firmware we build with arduino-cli 1.4.1 and
the **Arduino-ESP32 core 3.3.8**. The core is licensed LGPL-2.1 (its HAL files Apache-2.0) and is statically linked into
the firmware, so the LGPL lets you relink the firmware against a modified core.

What you need to do that is published with each release: the exact core version, the libraries and their versions
(LVGL 8.4.0, GFX Library for Arduino 1.6.5), and the materials to rebuild or relink the firmware. Until they're attached
to a release, ask under the [written offer](../WRITTEN-OFFER.md).

Flashing: the Owlert flashes its ESP32 boards itself with esptool 5.3.0 (GPL-2.0-or-later, see `components.md` of each
release). The web flasher at the Owlert portal uses esptool-js (Apache-2.0).
