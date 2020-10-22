FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-tiny:"

KCONFIG_MODE_mt7621 = "--alldefconfig"


#SRCREV_machine = "a915fbeae8ed987402f69666d90bef15a01c5823"
#SRCREV_meta = "ad6f8b357720ca8167a090713b7746230cf4b314"
#PR = "${INC_PR}.2"

SRC_URI_mt7621 = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
                  git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.4;destsuffix=${KMETA} \
"

COMPATIBLE_MACHINE = "mt7621"

DEPENDS += "u-boot-mkimage-native"

# Functionality flags
KERNEL_FEATURES = ""

# Hardware specific settings
SRC_URI_append_mt7621 += "file://mt7621/defconfig \
                   file://0001-edgerouterx-dts-build-and-boot.patch \
                   file://0002-change-device-tree-dts-to-reserve-more-space-for-ker.patch \
                   file://0003-MIPS-Fix-memory-reservation-in-bootmem_init-for-cert.patch \
                   file://0005-MIPS-use-set_mode-to-enable-disable-the-cevt-r4k-irq.patch \
                   file://0006-MIPS-ralink-add-cpu-frequency-scaling.patch \
                   file://0007-MIPS-ralink-copy-the-commandline-from-the-devicetree.patch \
                   file://0024-GPIO-add-named-gpio-exports.patch \
                   file://0026-DT-Add-documentation-for-gpio-ralink.patch \
                   file://0027-GPIO-MIPS-ralink-add-gpio-driver-for-ralink-SoC.patch \
                   file://0029-gpio-ralink-Add-support-for-GPIO-as-interrupt-contro.patch \
                   file://0031-uvc-add-iPassion-iP2970-support.patch \
                   file://0037-mtd-cfi-cmdset-0002-force-word-write.patch \
                   file://0041-DT-Add-documentation-for-spi-rt2880.patch \
                   file://0042-SPI-ralink-add-Ralink-SoC-spi-driver.patch \
                   file://0044-i2c-MIPS-adds-ralink-I2C-driver.patch \
                   file://0048-asoc-add-mt7620-support.patch \
                   file://0051-serial-add-ugly-custom-baud-rate-hack.patch \
                   file://0052-pwm-add-mediatek-support.patch \
                   file://0069-awake-rt305x-dwc2-controller.patch \
                   file://0070-weak_reordering.patch \
                   file://0098-disable_cm.patch \
                   file://0100-staging-mt7621-pci-simplify-mt7621_pcie_init_virtual.patch \
                   file://0101-staging-mt7621-pci-enable-clock-bit-for-each-port.patch \
                   file://0102-staging-mt7621-pci-use-gpios-for-properly-reset.patch \
                   file://0103-staging-mt7621-pci-change-value-for-PERST_DELAY_MS.patch \
                   file://0104-staging-mt7621-pci-release-gpios-after-pci-initializ.patch \
                   file://0105-staging-mt7621-pci-delete-no-more-needed-mt7621_rese.patch \
                   file://0106-staging-mt7621-pci-phy-add-mt7621_phy_rmw-to-simplif.patch \
                   file://0107-staging-mt7621-pci-fix-io-space-and-properly-set-res.patch \
                   file://0108-staging-mt7621-pci-fix-register-to-set-up-virtual-br.patch \
                   file://0109-staging-mt7621-pci-don-t-return-if-get-gpio-fails.patch \
                   file://0110-staging-mt7621-pci-phy-avoid-to-create-to-different-.patch \
                   file://0111-staging-mt7621-pci-use-only-two-phys-from-device-tre.patch \
                   file://0112-staging-mt7621-pci-change-variable-to-print-for-slot.patch \
                   file://0113-staging-mt7621-pci-be-sure-gpio-descriptor-is-null-o.patch \
                   file://0114-staging-mt7621-pci-avoid-to-poweroff-the-phy-for-slo.patch \
                   file://0115-staging-mt7621-pci-delete-release-gpios-related-code.patch \
                   file://0116-staging-mt7621-pci-use-builtin_platform_driver.patch \
                   file://0117-staging-mt7621-pci-phy-use-builtin_platform_driver.patch \
                   file://0118-staging-mt7621-pci-phy-re-do-xtal_mode-detection.patch \
                   file://0119-staging-mt7621-pci-avoid-to-set-iomem_resource-addre.patch \
                   file://0120-staging-mt7621-pci-properly-power-off-dual-ported-pc.patch \
                   file://0121-staging-mt7621-pci-fix-PCIe-interrupt-mapping.patch \
                   file://0300-mtd-rawnand-add-driver-support-for-MT7621-nand-flash.patch \
                   file://0301-dt-bindings-add-documentation-for-mt7621-nand-driver.patch \
                   file://0400-net-ethernet-mediatek-use-napi_consume_skb.patch \
                   file://0401-net-ethernet-mediatek-significantly-reduce-mdio-bus-.patch \
                   file://101-mt7621-timer.patch  \
                   file://102-mt7621-fix-cpu-clk-add-clkdev.patch \
                   file://105-mt7621-memory-detect.patch \
                   file://110-mt7621-perfctr-fix.patch \
                   file://111-gpio-mmio-introduce-BGPIOF_NO_SET_ON_INPUT.patch \
                   file://112-gpio-mt7621-add-BGPIOF_NO_SET_ON_INPUT-flag.patch \
                   file://300-mt7620-export-chip-version-and-pkg.patch \
                   file://302-spi-nor-add-gd25q512.patch\ 
                   file://401-net-ethernet-mediatek-support-net-labels.patch \
                   file://990-NET-no-auto-carrier-off-support.patch \
                   file://991-at803x.patch \
                   file://999-fix-pci-init-mt7620.patch \
                   file://301-MIPS-ralink-mt7621-introduce-soc_device-initializati.patch \
                   file://erx-0001-dts-fix-mtd-partitions.patch \
                   file://erx-0002-clock-patch-from-owrt.patch \
                   file://erx-0003-openwrt-diffs.patch \
                   file://erx-0004-more-from-openwrt.-virt-concat-mtd-parser.patch \
                   file://erx-0005-phy-and-switch-diffs-from-owrt.patch \
                   file://erx-0006-of-net-get-mtd-mac-addrs.patch \
                   file://erx-0007-more-dts-partition-fixes.patch \
"

SRC_URI_append_mt7621 += "file://nfnetlinkq.cfg"
SRC_URI_append_mt7621 += "file://nftables.cfg"
SRC_URI_append_mt7621 += "file://iptables.cfg"
SRC_URI_append_mt7621 += "file://loop.cfg"


#
# not for 7621
# file://0015-arch-mips-do-not-select-illegal-access-driver-by-def.patch 
# not whole patch
# file://0046-mmc-MIPS-ralink-add-sdhci-for-mt7620a-SoC.patch 
#
# don't need this we're only using edge router x
#                   file://100-mt7621-core-detect-hack.patch 
# already applied

# not complete where is ralink eth driver     
#              file://200-add-ralink-eth.patch 


