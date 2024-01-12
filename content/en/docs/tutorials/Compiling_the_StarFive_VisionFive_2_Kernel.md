---
title: Compiling the StarFive VisionFive 2 Kernel
description: >
  How to compile kernel 6.1x for StarFive VisionFive 2.
date: 2017-01-05
weight: 5
---

Hi,
Here's how to compile kernel 6.1x for StarFive VisionFive 2.

**Install dependencies :**

Manjaro / Arch Linux :

`pacman -S --needed ncurses openssl bc flex bison make gcc riscv64-linux-gnu-gcc git`

Ubuntu / Debian :

`apt install -y libncurses-dev libssl-dev bc flex bison make gcc gcc-riscv64-linux-gnu git`

Fedora / CentOS :

`yum install -y ncurses-devel openssl openssl-devel bc flex bison make gcc gcc-riscv64-linux-gnu git`

**Download the sources :** (Official)
```
git clone https://github.com/starfive-tech/linux
cd linux || exit
git checkout JH7110_VisionFive2_6.1.y_devel
```

**Download the sources :** (Unofficial)
```
git clone https://github.com/MichaIng/linux
cd linux || exit
git checkout 6.1-visionfive2
```

**Compile the Kernel :** (Cross Compilation)
```
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- starfive_visionfive2_defconfig
make ARCH=riscv -j$(nproc) CROSS_COMPILE=riscv64-linux-gnu-
```

**Compile the Kernel :** (On Debian x86_64)
```
cp arch/riscv/configs/starfive_visionfive2_defconfig .config
make ARCH=riscv olddefconfig CROSS_COMPILE=riscv64-linux-gnu-
make ARCH=riscv -j$(nproc) CROSS_COMPILE=riscv64-linux-gnu- bindeb-pkg
```

**Compile the Kernel :** (On Debian Riscv64)
```
cp arch/riscv/configs/starfive_visionfive2_defconfig .config
make ARCH=riscv olddefconfig
make ARCH=riscv -j$(nproc) bindeb-pkg
```

**Install the Kernel :**

`dpkg -i *.deb`