# ICPC-Client

## Introduction
For AUT-ICPC competitions of 2017 and 2018, [MohammadHossein](https://github.com/MohammadHossein) and [Ahmad Anvari](https://github.com/anvari1313) provided contestants with an Ubuntu iso image loaded with a PXE server using Cubic/Systemback and Serva.

## Setting up

- To block internet access just run **`sudo ./rules.sh`** as superuser. **Change server addresses if necessary **
- To block access to system's hard drives and two solutions are available
  - 1. Writing a `udev` rules file to ignore disks from boot( file is available as **`skip-hard.rules`**). Just place it under `/etc/udev/rules.d/` and call ``sudo udevadm trigger``.
    2. A shell script to read available devices from `/dev/disk/by-uuid` and adding them to `/etc/fstab` with `noauto`. just execute **`sudo ./hide-hard.sh`**



## Client checklist

### General

- [ ] Keyboard
- [ ] Mouse
- [ ] Judge Connectivity
- [ ] Compilers
- [ ] IDEs - Editors
- [ ] Docs (DomJudge handles this)

### Compilers

- Java
- C / C++
- C++11 / C++14
- ~Python2~ *Will be deprecated on Jan 1st. 2020*
- Python 3

### IDEs - Editors

- VIM
- PyCharm
- CLion
- CodeBlocks
- Eclipse
- IntelliJ
- Geany
- Sublime Text
- Emacs
- Visual Studio Code

### Docs

- JavaDocs
