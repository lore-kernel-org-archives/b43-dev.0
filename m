From: Zlatko Calusic <zcalusic@bitsync.net>
Date: Fri, 2 Oct 2015 19:23:22 +0200
Subject: Trouble loading firmware (error -2)
Message-ID: <560EBD8A.4090400@bitsync.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

please help with this issue, the error message is cryptic I don't know 
what error -2 means:

b43 bcma0:1: Direct firmware load for b43/ucode30_mimo.fw failed with 
error -2
b43 bcma0:1: Direct firmware load for b43/ucode30_mimo.fw failed with 
error -2
b43 bcma0:1: Direct firmware load for b43-open/ucode30_mimo.fw failed 
with error -2
b43 bcma0:1: Direct firmware load for b43-open/ucode30_mimo.fw failed 
with error -2
b43-phy0 ERROR: Firmware file "b43/ucode30_mimo.fw" not found
b43-phy0 ERROR: Firmware file "b43-open/ucode30_mimo.fw" not found
b43-phy0 ERROR: You must go to 
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and 
download the correct firmware for this driver version. Please carefully 
read all instructions on this website.

Yet, ls -al /lib/firmware/b43/ucode30_mimo.fw:

-rw-r--r-- 1 root root 39632 Apr  6 18:09 /lib/firmware/b43/ucode30_mimo.fw

it's there, as put by b43-fwcutter package (Debian 1:019-2). Though I 
don't have b43-open directory, tried symlinking it, didn't help.

The kernel is virgin 4.2.0 Linus, custom compiled, relevant config 
entries below, am I missing something?

CONFIG_B43=y
CONFIG_B43_BCMA=y
# CONFIG_B43_BUSES_BCMA_AND_SSB is not set
CONFIG_B43_BUSES_BCMA=y
# CONFIG_B43_BUSES_SSB is not set
CONFIG_B43_BCMA_PIO=y
CONFIG_B43_PHY_N=y
# CONFIG_B43_PHY_HT is not set
# CONFIG_B43_DEBUG is not set
# CONFIG_B43LEGACY is not set
CONFIG_BCMA=y
CONFIG_BCMA_BLOCKIO=y
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
CONFIG_BCMA_HOST_PCI=y
# CONFIG_BCMA_HOST_SOC is not set
CONFIG_BCMA_DRIVER_PCI=y
# CONFIG_BCMA_DRIVER_GMAC_CMN is not set
# CONFIG_BCMA_DEBUG is not set

CONFIG_PREVENT_FIRMWARE_BUILD=y
CONFIG_FW_LOADER=y
CONFIG_FIRMWARE_IN_KERNEL=y
CONFIG_EXTRA_FIRMWARE=""
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set

Thanks for any help and please Cc: (not subscribed).

-- 
Zlatko
