From: Thomas D. Dean <tomdean@speakeasy.org>
Date: Sun, 24 Feb 2013 00:59:22 -0800
Subject: b43 Load Problems
In-Reply-To: <5129CDAD.3080105@speakeasy.org>
References: <5129CDAD.3080105@speakeasy.org>
Message-ID: <5129D66A.6090502@speakeasy.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/24/13 00:22, Thomas D. Dean wrote:
> # uname -a
> Linux zd7000 2.6.32-5-686 #1 SMP Sun Sep 23 09:49:36 UTC 2012 i686
> GNU/Linux
>
> At boot time, I see several error messages about wlan (b43) (below)
>
> wlan0 does not come up.  ifup wlan0 fails.
>
> # locate b43.ko
> /lib/modules/2.6.32-5-686/kernel/drivers/net/wireless/b43/b43.ko
> /lib/modules/2.6.32-5-686/updates/drivers/net/wireless/b43/b43.ko
>
> The second one corresponds to the driver built from
>    compat-drivers-3.7.6-1
>
> After boot, I log in and
>
> # modprobe -r b43
> # modprobe b43
> # ifup wlan0
>
> and wlan0 works!
>
> It appears I have some disagreement between the compat-drivers-3.7.6-1
> driver and the kernel.  I have the correct headers (see below)
>
> Just to be sure, I did a make uninstall, deleted the
> compat-drivers-3.7.6-1 directory, downloaded the tar.bz2 again, and
> repeated the build/install process.  Same results.
>
> In the build process, there was one warning about initialization
> removing qualifiers on a variable...
>
> Any ideas?
>
> Tom Dean
>
> # dmesg | grep b43
> [    1.356093] b43-pci-bridge 0000:02:03.0: PCI INT A -> GSI 21 (level,
> low) -> IRQ 21
> [    6.239072] b43: disagrees about version of symbol ssb_device_is_enabled
> [    6.239078] b43: Unknown symbol ssb_device_is_enabled
> [    6.239432] b43: disagrees about version of symbol ssb_pmu_set_ldo_paref
> [    6.239435] b43: Unknown symbol ssb_pmu_set_ldo_paref
> [    6.239697] b43: disagrees about version of symbol
> ssb_pcicore_dev_irqvecs_enable
> [    6.239700] b43: Unknown symbol ssb_pcicore_dev_irqvecs_enable
> [    6.240110] b43: disagrees about version of symbol ssb_bus_may_powerdown
> [    6.240113] b43: Unknown symbol ssb_bus_may_powerdown
> [    6.240704] b43: disagrees about version of symbol ssb_bus_suspend
> [    6.240706] b43: Unknown symbol ssb_bus_suspend
> [    6.240909] b43: disagrees about version of symbol ssb_bus_unregister
> [    6.240912] b43: Unknown symbol ssb_bus_unregister
> [    6.241352] b43: disagrees about version of symbol ssb_bus_resume
> [    6.241355] b43: Unknown symbol ssb_bus_resume
> [    6.241475] b43: disagrees about version of symbol ssb_set_devtypedata
> [    6.241478] b43: Unknown symbol ssb_set_devtypedata
> [    6.242511] b43: disagrees about version of symbol ssb_device_disable
> [    6.242514] b43: Unknown symbol ssb_device_disable
> [    6.242626] b43: disagrees about version of symbol
> ssb_pmu_set_ldo_voltage
> [    6.242629] b43: Unknown symbol ssb_pmu_set_ldo_voltage
> [    6.244185] b43: disagrees about version of symbol ssb_device_enable
> [    6.244188] b43: Unknown symbol ssb_device_enable
> [    6.244610] b43: Unknown symbol ssb_chipco_gpio_control
> [    6.244714] b43: disagrees about version of symbol ssb_driver_unregister
> [    6.244716] b43: Unknown symbol ssb_driver_unregister
> [    6.245130] b43: disagrees about version of symbol __ssb_driver_register
> [    6.245133] b43: Unknown symbol __ssb_driver_register
> [    6.245630] b43: disagrees about version of symbol
> ssb_bus_sdiobus_register
> [    6.245633] b43: Unknown symbol ssb_bus_sdiobus_register
> [    6.245737] b43: disagrees about version of symbol
> ssb_bus_pcmciabus_register
> [    6.245740] b43: Unknown symbol ssb_bus_pcmciabus_register
> [    6.245872] b43: disagrees about version of symbol ssb_bus_powerup
> [    6.245874] b43: Unknown symbol ssb_bus_powerup
> [    6.246270] b43: Unknown symbol ssb_commit_settings
> [    6.247774] b43: disagrees about version of symbol ssb_dma_translation
> [    6.247777] b43: Unknown symbol ssb_dma_translation
> [   84.097824] b43: disagrees about version of symbol ssb_device_is_enabled
> [   84.097829] b43: Unknown symbol ssb_device_is_enabled
> [   84.098203] b43: disagrees about version of symbol ssb_pmu_set_ldo_paref
> [   84.098206] b43: Unknown symbol ssb_pmu_set_ldo_paref
> [   84.098480] b43: disagrees about version of symbol
> ssb_pcicore_dev_irqvecs_enable
> [   84.098484] b43: Unknown symbol ssb_pcicore_dev_irqvecs_enable
> [   84.098861] b43: disagrees about version of symbol ssb_bus_may_powerdown
> [   84.098864] b43: Unknown symbol ssb_bus_may_powerdown
> [   84.099452] b43: disagrees about version of symbol ssb_bus_suspend
> [   84.099455] b43: Unknown symbol ssb_bus_suspend
> [   84.099661] b43: disagrees about version of symbol ssb_bus_unregister
> [   84.099664] b43: Unknown symbol ssb_bus_unregister
> [   84.100117] b43: disagrees about version of symbol ssb_bus_resume
> [   84.100120] b43: Unknown symbol ssb_bus_resume
> [   84.100240] b43: disagrees about version of symbol ssb_set_devtypedata
> [   84.100243] b43: Unknown symbol ssb_set_devtypedata
> [   84.101490] b43: disagrees about version of symbol ssb_device_disable
> [   84.101496] b43: Unknown symbol ssb_device_disable
> [   84.101689] b43: disagrees about version of symbol
> ssb_pmu_set_ldo_voltage
> [   84.101694] b43: Unknown symbol ssb_pmu_set_ldo_voltage
> [   84.103398] b43: disagrees about version of symbol ssb_device_enable
> [   84.103402] b43: Unknown symbol ssb_device_enable
> [   84.103860] b43: Unknown symbol ssb_chipco_gpio_control
> [   84.103972] b43: disagrees about version of symbol ssb_driver_unregister
> [   84.103975] b43: Unknown symbol ssb_driver_unregister
> [   84.104421] b43: disagrees about version of symbol __ssb_driver_register
> [   84.104424] b43: Unknown symbol __ssb_driver_register
> [   84.104957] b43: disagrees about version of symbol
> ssb_bus_sdiobus_register
> [   84.104960] b43: Unknown symbol ssb_bus_sdiobus_register
> [   84.105137] b43: disagrees about version of symbol
> ssb_bus_pcmciabus_register
> [   84.105142] b43: Unknown symbol ssb_bus_pcmciabus_register
> [   84.105370] b43: disagrees about version of symbol ssb_bus_powerup
> [   84.105375] b43: Unknown symbol ssb_bus_powerup
> [   84.106006] b43: Unknown symbol ssb_commit_settings
> [   84.107543] b43: disagrees about version of symbol ssb_dma_translation
> [   84.107546] b43: Unknown symbol ssb_dma_translation
> [   94.425174] b43-pci-bridge 0000:02:03.0: PCI INT A disabled
> [  102.897978] b43-pci-bridge 0000:02:03.0: PCI INT A -> GSI 21 (level,
> low) -> IRQ 21
> [  102.972985] b43-phy0: df1a3ea4
> [  102.997018] b43-phy0: df1a3e50
> [  103.130708] Registered led device: b43-phy0::tx
> [  103.130751] Registered led device: b43-phy0::rx
> [  103.130785] Registered led device: b43-phy0::radio
>
>
> # apt-cache show linux-headers-$(uname -r)
> Package: linux-headers-2.6.32-5-686
> Priority: optional
> Section: kernel
> Installed-Size: 6784
> Maintainer: Debian Kernel Team <debian-kernel@lists.debian.org>
> Architecture: i386
> Source: linux-2.6
> Version: 2.6.32-46
> Provides: linux-headers, linux-headers-2.6
> Depends: linux-headers-2.6.32-5-common (= 2.6.32-46),
> linux-kbuild-2.6.32, gcc-4.3
> Filename:
> pool/main/l/linux-2.6/linux-headers-2.6.32-5-686_2.6.32-46_i386.deb
> Size: 504436
> MD5sum: 824ef36d242e4f541eefa2a55c26bf08
> SHA1: 479dc514c7bebfe8dc8bbb3e53b194715a607ff1
> SHA256: fb1fa87b17a919a2ff0a476683f25c1b7f5a788f738e9cc149b3d6ce7481c02b
> Description: Header files for Linux 2.6.32-5-686
>   This package provides the architecture-specific kernel header files for
>   Linux kernel 2.6.32-5-686, generally used for building out-of-tree kernel
>   modules.  These files are going to be installed into
>   /usr/src/linux-headers-2.6.32-5-686, and can be used for building modules
>   that load into the kernel provided by the linux-image-2.6.32-5-686
>   package.
>
> Package: linux-headers-2.6.32-5-686
> Source: linux-2.6
> Version: 2.6.32-44
> Installed-Size: 6784
> Maintainer: Debian Kernel Team <debian-kernel@lists.debian.org>
> Architecture: i386
> Provides: linux-headers, linux-headers-2.6
> Depends: linux-headers-2.6.32-5-common (= 2.6.32-44),
> linux-kbuild-2.6.32, gcc-4.3
> Description: Header files for Linux 2.6.32-5-686
>   This package provides the architecture-specific kernel header files for
>   Linux kernel 2.6.32-5-686, generally used for building out-of-tree kernel
>   modules.  These files are going to be installed into
>   /usr/src/linux-headers-2.6.32-5-686, and can be used for building modules
>   that load into the kernel provided by the linux-image-2.6.32-5-686
>   package.
> Section: kernel
> Priority: optional
> Filename:
> pool/updates/main/l/linux-2.6/linux-headers-2.6.32-5-686_2.6.32-44_i386.deb
> Size: 503984
> MD5sum: ea2799a1892d22bf2b91aa20ee533ae6
> SHA1: dc37cf4e49ae60e77c3a84cdca425bdb58cd5c24
> SHA256: 6b6cc0c55b05acfecf719f9a2ad2c19f1426b8016846af4f944fa3afbc9aebd5
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>
After more investigation, it appears that some time is needed between 
loading the driver and ifup.

# ifdown wlan0 && modprobe -v -r b43 && modprobe -v b43 && ifup wlan0

fails.

# ifdown wlan0 && modprobe -v -r b43 && modprobe -v b43 && sleep 1 && 
ifup wlan0

works.

Tom Dean
