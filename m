From: =?ISO-8859-1?Q?Christian_Sch=E4fer?= <schaefer@rostlab.org>
Date: Sun, 27 Mar 2011 11:23:56 +0200
Subject: New device in MacBook Pro, yet unsupported?
Message-ID: <4D8F022C.2050606@rostlab.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi there,

I've got here a recent 13" MacBook Pro (8,1), running Ubuntu on it 
(natty). The wireless device seems to be currently unsupported by the 
b43 driver (as of kernel 2.6.38). It seems to be a bcm4331, lspci -vn 
gives the following:

03:00.0 0280: 14e4:4331 (rev 02)
     Subsystem: 106b:00d6
     Flags: bus master, fast devsel, latency 0, IRQ 11
     Memory at a0600000 (64-bit, non-prefetchable) [size=16K]
     Capabilities: [40] Power Management version 3
     Capabilities: [58] Vendor Specific Information: Len=78 <?>
     Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
     Capabilities: [d0] Express Endpoint, MSI 00
     Capabilities: [100] Advanced Error Reporting
     Capabilities: [13c] Virtual Channel
     Capabilities: [160] Device Serial Number 83-0e-47-ff-ff-36-e0-f8
     Capabilities: [16c] Power Budgeting <?>

To my current knowledge, the only way to get it working is by means of 
ndiswrapper. Are there any plans already to get this device supported 
natively? Please let me know if you need further information regarding 
the device.

Thanks,
Chris

-- 
Dipl.-Bioinf. Christian Schaefer
Technical University Munich
Department for Bioinformatics / Rostlab
http://www.rostlab.org/~schaefer
http://gsish.tum.edu/
