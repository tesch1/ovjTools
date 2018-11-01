# 
# 
nvld  "/tftpboot/nddslib.o"
nvld  "/tftpboot/nvlib.o"
nvrdate("wormhole")
date
#
# systemInit(NetworkDisk_BasePath, BringUp_Level, DebugLevel, ConsoleType, Flags)
#
# NetworkDisk_BasePath - if NULL then the bit and exec files are loaded from flash
#                      Otherwise used as the directory on the network drive to load from.
#  e.g. NetworkDisk_BasePath = /tftpboot    /tftpboot/xxxexec.o are loaded
#
#       systemInit("/tftpboot",0,1,0,0)  load bit and exec.o from /tftpboot
#
# BringUp_Level - level of software service, etc.  started
#    0 = only dma drivers initialized.
#    1 = DMA, NDDS, initialized
#        Bringup is called.
#    2-9 Reserved for future use.
#
# DebugLevel - Level of Diagnostic Output, 0 = None, 1 - minimum, 
#                                          2 - NDDS output,  3-10 more output
#
# ConsoleType - Type of console , used to load proper varient of FPGA 
#    0 = VNMRS (a.k.a. Nirvana)
#    1 = 
#
# Flags - reserved for special purposes
#    0 = default
# 0x20 = special Solids Amp mode
#
systemInit(0,1,-2,1,0)

