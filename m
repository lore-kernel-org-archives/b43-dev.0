From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 16 Jan 2015 20:03:58 +0100
Subject: BCM43228 not working (no access points shown)
In-Reply-To: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
References: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
Message-ID: <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 4 January 2015 at 18:13, Falco Preiseni
<apfelkomplott2014@mailbox.org> wrote:
> my Broadcom BCM43228 wifi card is not able to show any access points (neither
> with "iw wlpx scan" nor with NetworkManager). Connecting with the ESSID does not
> work, either. According to the LED and the output of "ip link" the card is
> active. Furthermore "lspci -k" tells that "bcma-pci-bridge" is the kernel driver
> in use despite I modprobed b43. According to [3] this could be a sign that b43
> ignores my device. Or is this label normal?
>
> I followed the instructions on the ArchLinux Wiki[1] (which should align with
> the official instructions [2]), installed b43-fwcutter and b43-firmware in order
> to obtain the firmware version 5.100.138 and I also tried a newer firmware
> (6.30.163.46). Currently I have blacklisted almost everything (b43legacy,
> bcma-pci-bridge, bcma, brcmsmac, ssb and b43) and activated "option b43
> allhwsupport=1" and modprobed b43 by hand.
>
> I did a lot of reasearch but wasn't able to solve my problem. At least the label
> "bcma-pci-bridge" looks like a bug but I don't know. Any idea what's wrong?

Hi Falco,

Sorry for the late reply, it took me some time to get my dev machine running.

It appears my BCM43228 identifies itself as the same model as yours.
I've tested it and it works fine with 3.17 and 3.19-rc2. I switched to
the same firmware you use and it was still OK. Performance varies (for
most of time it's about 20Mb/s but sometimes drops down to 8Mb/s, but
it works).

Were you using this card successfully with wl.ko? I don't really know
what may be wrong with it :|
