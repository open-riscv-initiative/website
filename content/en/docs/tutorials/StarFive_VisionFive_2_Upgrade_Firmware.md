---
title: StarFive VisionFive 2 Upgrade Firmware
description: >
  How to Flash the StarFive VisionFive 2 Firmware.
date: 2017-01-05
weight: 5
---

Hi,

Here's how to Flash the StarFive VisionFive 2 Firmware

**Install mtd :**

`apt update && apt install mtd-utils -y`

**Download Firmware :**
```
wget https://github.com/starfive-tech/VisionFive2/releases/download/VF2_v3.8.2/u-boot-spl.bin.normal.out
wget https://github.com/starfive-tech/VisionFive2/releases/download/VF2_v3.8.2/visionfive2_fw_payload.img
```

**Check MTD :**
```
cat /proc/mtd 
dev:    size   erasesize  name
mtd0: 00040000 00001000 "spl"
mtd1: 00010000 00001000 "uboot-env"
mtd2: 00300000 00001000 "uboot"
mtd3: 00100000 00001000 "data"
```

**Flash Firmware :**
```
flashcp -v u-boot-spl.bin.normal.out /dev/mtd0 (SPL)
flashcp -v visionfive2_fw_payload.img /dev/mtd2 (Uboot)
```
There you have flashed the firmware.

Useful link : https://github.com/starfive-tech/VisionFive2/releases