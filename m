From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 20 Jun 2011 01:17:53 +0200
Subject: Comments to b43's wiki page plus recent changes
Message-ID: <BANLkTikVTntr2b0=X7gAYtpsSbpU4GTakw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I'm getting uncomfortable with recent changes made to b43 wiki page
http://wireless.kernel.org/en/users/Drivers/b43

First we got Stuart who felt it's necessary to explain that "partially
supported" on b43's page means it's "partially supported by b43". It
was so obvious to me I just reverted that change. He also linked to
some discussion with random BCM4322 issue on 2.6.38 kernel. Well,
support in 2.6.38 was highly experimental, it got many more issues, I
don't think it makes any sense to display all of them. 2.6.39 is
suggested, that's all.

Today we got David Wang's modification. He wrote instruction how to
check if firmware was installed. I've no idea what's unclear with
messages like:
"Cannot open input file broadcom-wl-5.10.56.27.3/driver/wl_apsta/wl_prebuilt.o"
"failed to create output directory: Permission denied"
?

Plus I found the following checks quite silly:
ls -1 "$FIRMWARE_INSTALL_DIR"| grep b43| wc -1
ls -1 "$FIRMWARE_INSTALL_DIR"/b43| wc -l
"An output of >5 is good"

It also adds twice info about LP-PHY which is already duplicated:
> Those of you who has bcm4315 (bcm4312 LP-PHY) and bcm4321 chipset, you will need to make sure you enable PIO mode as DMA mode does not work with your chipset. So instead of following the guide above you will need to do a few more extra steps:
(We inform about LP-PHY and DMA problems in known issues).

Additionally it provides not working right-away instruction about
switching to pio:
> modprobe -r b43
> modprobe b43 pio=1
> echo "options b43 pio=1" >> /etc/modprobe.d/options.conf


Is it just me, or are that changes quite silly?

Does anyone have contact to David Wang? He does not have his page on wiki.

-- 
Rafa?
