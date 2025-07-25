# GT7-Simdash Images

<picture>
  <source srcset="assets/sd_card_light.svg" media="(prefers-color-scheme: dark)">
  <source srcset="assets/sd_card_dark.svg" media="(prefers-color-scheme: light)">
  <img src="assets/sd_card_light.svg" alt="SD Card">
</picture>

This repository contains the _Buildroot external tree_ for building Raspberry Pi images for the [GT7-Simdash](https://github.com/chrshdl/gt7-simdash) HMI project.

[![Build Status](https://github.com/chrshdl/gt7-br2-external/actions/workflows/build.yml/badge.svg)](https://github.com/chrshdl/gt7-br2-external/actions/workflows/build.yml)

[![Download Pi 4 Image](https://img.shields.io/badge/download-pi4--image-blue?logo=raspberry-pi)](https://github.com/chrshdl/gt7-br2-external/releases/download/latest/sdcard-raspberrypi4.img)

## Features

- **Automated CI/CD**
  - Builds an SD card image for the Raspberry Pi with DSI display support on every push/PR/dispatch.

- **Supported Hardware**
  - **Boards**
    - Raspberry Pi 4
  - **Displays**
    - Official Raspberry Pi DSI Display
    - Waveshare 7" DSI LCD (C), 1024x600

## Usage

You can always download the latest SD card image for the Raspberry Pi 4 from the badge.

[![Download Pi 4 Image](https://img.shields.io/badge/download-pi4--image-blue?logo=raspberry-pi)](https://github.com/chrshdl/gt7-br2-external/releases/download/latest/sdcard-raspberrypi4.img)

Use [Raspberry Pi Imager](https://www.raspberrypi.com/software/) or [balenaEtcher](https://www.balena.io/etcher/) to flash the image to your SD card.

### Kernel and Boot Configuration

- `/boot/config.txt` is customized via Buildroot overlay to support both DSI display types.
- Kernel config includes all required DRM/KMS and panel drivers.

### Overlay Structure

```
board/
└── raspberrypi4/
└── overlay/
└── boot/
└── config.txt
```

### Contributing
Pull requests and improvements are welcome!
If you encounter problems with builds, display support, or want to add new hardware, open an issue or PR.

## License
All of my code is MIT licensed. Libraries follow their respective licenses.


_Happy hacking and sim racing!_