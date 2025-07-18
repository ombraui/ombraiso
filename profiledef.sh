#!/usr/bin/env bash
# shellcheck disable=SC2034
set +u

if [ -n "$CI" ]; then
   IMGNAME="_ci-roller"
else
   IMGNAME="_homemade"
fi

iso_name="ombrauidesktop"
iso_label="OMBRA_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="ombraUI <https://github.com/ombraui/>"
iso_application="ombraUI Recovery Tool"
iso_version="starman_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d-%H%M)$IMGNAME" # bringup 1.0 codename starman
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
