# For ralink
LICENSE_${PN}-${MACHINE} = "Firmware-ralink-firmware"
LICENSE_${PN}-${MACHINE}-license = "Firmware-ralink-firmware"

FILES_${PN}-${MACHINE}-license = "${nonarch_base_libdir}/firmware/LICENCE.ralink-firmware.txt"
FILES_${PN}-${MACHINE} = " \
  ${nonarch_base_libdir}/firmware/rt*.bin \
"

RDEPENDS_${PN}-${MACHINE} += "${PN}-${MACHINE}-license"

