setenv kernel_addr_r 0x2000000
setenv fdt_addr_r 0x4000000
setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p3 earlycon clk_ignore_unused
load mmc 0:2 ${kernel_addr_r} Image
load mmc 0:2 ${fdt_addr_r} th1520-beaglev-ahead.dtb
booti ${kernel_addr_r} - ${fdt_addr_r}
