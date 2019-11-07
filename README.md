# ICPC-Client

## Introduction
In last two competion @MohammadHossein provide clients with using Qubic, Systemback and Serva.

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
- Python2
- Python3

### IDEs - Editors

- VIM
- PyCharm
- CLion
- CodeBlocks
- Eclipse
- Intellij
- Geany
- Sublime
- Emacs

### Docs

- JavaDocs
