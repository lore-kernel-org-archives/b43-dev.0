From: Antonino La Mattina <ala_mattina@hotmail.com>
Date: Sun, 15 May 2011 10:29:21 +0200
Subject: power saving mode
Message-ID: <DUB105-w637B41C7A566E1C75FB52E968A0@phx.gbl>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


Hi, is supported power saving mode? I found this function in main.c but I dont' understand if this means that the power saving is implemented : 
void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
{
    u32 macctl;
    u16 ucstat;
    bool hwps;
    bool awake;
    int i;

    B43_WARN_ON((ps_flags & B43_PS_ENABLED) &&
            (ps_flags & B43_PS_DISABLED));
    B43_WARN_ON((ps_flags & B43_PS_AWAKE) && (ps_flags & B43_PS_ASLEEP));

    if (ps_flags & B43_PS_ENABLED) {
        hwps = 1;
    } else if (ps_flags & B43_PS_DISABLED) {
        hwps = 0;
    } else {
        //TODO: If powersave is not off and FIXME is not set and we are not in adhoc
        //      and thus is not an AP and we are associated, set bit 25
    }
    if (ps_flags & B43_PS_AWAKE) {
        awake = 1;
    } else if (ps_flags & B43_PS_ASLEEP) {
        awake = 0;
    } else {
        //TODO: If the device is awake or this is an AP, or we are scanning, or FIXME,
        //      or we are associated, or FIXME, or the latest PS-Poll packet sent was
        //      successful, set bit26
    }

/* FIXME: For now we force awake-on and hwps-off */
    hwps = 0;
    awake = 1;

    macctl = b43_read32(dev, B43_MMIO_MACCTL);
    if (hwps)
        macctl |= B43_MACCTL_HWPS;
    else
        macctl &= ~B43_MACCTL_HWPS;
    if (awake)
        macctl |= B43_MACCTL_AWAKE;
    else
        macctl &= ~B43_MACCTL_AWAKE;
    b43_write32(dev, B43_MMIO_MACCTL, macctl);
    /* Commit write */
    b43_read32(dev, B43_MMIO_MACCTL);
    if (awake && dev->dev->id.revision >= 5) {
        /* Wait for the microcode to wake up. */
        for (i = 0; i < 100; i++) {
            ucstat = b43_shm_read16(dev, B43_SHM_SHARED,
                        B43_SHM_SH_UCODESTAT);
            if (ucstat != B43_SHM_SH_UCODESTAT_SLEEP)
                break;
            udelay(10);
        }
    }
}
This function can only be responsible for this mode of operation ? I'm studying this mode of operation (in b43) for my university, is very important for me, thanks.    




 		 	   		  
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110515/5fd52123/attachment.html>
