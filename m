From: Dmitry Kozlov <dmitry.f.kozlov@gmail.com>
Date: Tue, 24 Oct 2017 01:43:16 +0300
Subject: FATAL: Module wl not found in directory
 /lib/modules/4.13.0-16-lowlatency Ubuntu 17.10
Message-ID: <CAGSoEtrBubdcVhSzfn1uagqAdoq2V2YOV1tR2cXTaXH=gNxX2w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I have following problems with my BCM43142 802.11b/g/n wireless
adapter after upgrading to Ubuntu 17.10:

08:00.0 Network controller: Broadcom Limited BCM43142 802.11b/g/n (rev 01)
    Subsystem: Hewlett-Packard Company BCM43142 802.11b/g/n
    Flags: fast devsel, IRQ 255
    Memory at c6100000 (64-bit, non-prefetchable) [size=32K]
    Capabilities: [40] Power Management version 3
    Capabilities: [58] Vendor Specific Information: Len=78 <?>
    Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
    Capabilities: [d0] Express Endpoint, MSI 00
    Capabilities: [100] Advanced Error Reporting
    Capabilities: [13c] Virtual Channel
    Capabilities: [160] Device Serial Number 00-00-af-ff-ff-e6-74-29
    Capabilities: [16c] Power Budgeting <?>

$ sudo apt install --reinstall bcmwl-kernel-source
Reading package lists... Done
Building dependency tree
Reading state information... Done
0 upgraded, 0 newly installed, 1 reinstalled, 0 to remove and 0 not upgraded.
Need to get 0 B/1 544 kB of archives.
After this operation, 0 B of additional disk space will be used.
(Reading database ... 240009 files and directories currently installed.)
Preparing to unpack
.../bcmwl-kernel-source_6.30.223.271+bdcom-0ubuntu3_amd64.deb ...
Removing all DKMS Modules
Done.
Unpacking bcmwl-kernel-source (6.30.223.271+bdcom-0ubuntu3) over
(6.30.223.271+bdcom-0ubuntu3) ...
Setting up bcmwl-kernel-source (6.30.223.271+bdcom-0ubuntu3) ...
Loading new bcmwl-6.30.223.271+bdcom DKMS files...
Building for 4.13.0-16-lowlatency
Building for architecture x86_64
Module build for kernel 4.13.0-16-lowlatency was skipped since the
kernel headers for this kernel does not seem to be installed.
modprobe: FATAL: Module wl not found in directory
/lib/modules/4.13.0-16-lowlatency
update-initramfs: deferring update (trigger activated)
Processing triggers for shim-signed (1.32+0.9+1474479173.6c180c6-1ubuntu1) ...
Secure Boot not enabled on this system.
Processing triggers for initramfs-tools (0.125ubuntu12) ...
update-initramfs: Generating /boot/initrd.img-4.13.0-16-lowlatency


-- 
Best regards,
Dmitry Kozlov
