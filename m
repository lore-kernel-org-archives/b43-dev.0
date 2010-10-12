From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 13 Oct 2010 02:12:29 +0400
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <AANLkTim63Nh2zABjrRSHy5Dn_rcXG++TaUqLv7EytbcC@mail.gmail.com>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTim63Nh2zABjrRSHy5Dn_rcXG++TaUqLv7EytbcC@mail.gmail.com>
Message-ID: <20101012221229.GE1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

On Sun, Oct 10, 2010 at 06:50:55PM +0200, G?bor Stefanik wrote:
> 2010/10/10 Paul Fertser <fercerpav@gmail.com>:
> > On Sat, Oct 09, 2010 at 11:37:37PM +0200, G?bor Stefanik wrote:
> >> 2010/10/9 Paul Fertser <fercerpav@gmail.com>:
> >> > Indeed there's a fatal dma error there in the non-working case (and switching
> >> > to PIO doesn't help). But it doesn't happen after wl. Both dmesgs attached.
> >> >
> >>
> >> The PhoenixBIOS DMA problem is known not to appear if wl has been
> >> loaded beforehand. Be patient, we are working on this. (But good to
> >> know the S9 also reproduces it - it's probably less expensive than the
> >> S10 for the team to buy.)
> >
> > Even simply loading wl (without bringing the interface up etc) helps.
> > Attached is a parsed mmiotrace of that (hail to nouveau). Alas simply
> > replaying it (even with a 5ms delay inbetween writes) doesn't improve
> > anything.
> 
> That definitely won't help - if you just brainlessly replay an
> mmiotrace, the writes will end up on the wrong SSB cores. You also
> need to replay PCI config space writes. AFAIK there has been a patch
> earlier on the list to show PCI config space accesses in mmiotrace.

Before i was using the bleeding edge compat-wireless and now i compiled
wireless-testing 4b8f8abb4f. With compat-wireless b43 reliably didn't work at
all after cold booting, producing Fatal DMA error immediately with no used
slots. With w-t (even unmodified!) b43 does work after cold boot :-O Once i've
seen it produce Fatal DMA error again while transferring a file over scp (can't
reproduce anymore, dmesg attached), other than that it works nicely. I made
damn sure i'm cold booting (did it several times, removing battery and
adapter).

I'm attaching a patch that allows to track pci config space reads/writes
(based on Larry's but using __trace_printk() allows messages to appear in
mmiotrace log as MARK events).

Also attached are partial trace logs, full logs are available from [1].

I'm not sure where to go from here, any ideas?

[1] https://paulfertser.is-a-geek.org/files/b43-ideapad
-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-fatal-dma-error.txt.gz
Type: application/x-gunzip
Size: 15272 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/a3c2b3d5/attachment-0005.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: wl-cold-boot.trace-head.txt.gz
Type: application/x-gunzip
Size: 11708 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/a3c2b3d5/attachment-0006.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: wl-cold-boot.dmesg.txt.gz
Type: application/x-gunzip
Size: 13180 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/a3c2b3d5/attachment-0007.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-cold-boot.trace-head.txt.gz
Type: application/x-gunzip
Size: 9765 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/a3c2b3d5/attachment-0008.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-cold-boot.dmesg.txt.gz
Type: application/x-gunzip
Size: 14070 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/a3c2b3d5/attachment-0009.bin>
-------------- next part --------------
diff --git a/drivers/pci/access.c b/drivers/pci/access.c
index 531bc69..453e448 100644
--- a/drivers/pci/access.c
+++ b/drivers/pci/access.c
@@ -37,6 +37,7 @@ int pci_bus_read_config_##size \
 	res = bus->ops->read(bus, devfn, pos, len, &data);		\
 	*value = (type)data;						\
 	raw_spin_unlock_irqrestore(&pci_lock, flags);		\
+	__trace_printk(_THIS_IP_, "Read "#size" 0x%04X from 0x%02X, devfn: %d\n", data, pos, devfn);	\
 	return res;							\
 }
 
@@ -50,6 +51,7 @@ int pci_bus_write_config_##size \
 	raw_spin_lock_irqsave(&pci_lock, flags);			\
 	res = bus->ops->write(bus, devfn, pos, len, value);		\
 	raw_spin_unlock_irqrestore(&pci_lock, flags);		\
+	__trace_printk(_THIS_IP_, "Wrote "#size" 0x%04X to 0x%02X, devfn: %d\n", value, pos, devfn);	\
 	return res;							\
 }
 
