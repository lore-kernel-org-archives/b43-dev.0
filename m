From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 3 Feb 2011 18:13:46 +0100
Subject: Broadcom 14e4:4727 card
In-Reply-To: <4D4AE074.80108@lwfinger.net>
References: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>
	<201102031650.54903.s.L-H@gmx.de>
	<AANLkTi=rK_hxN559vmhXOqQUip9vynMnP9DkidhB8xBb@mail.gmail.com>
	<4D4AE074.80108@lwfinger.net>
Message-ID: <AANLkTi=garcK5go9K6zc8v7UPs=DDh7Ux8Tyv+m9wkY-@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 3 lutego 2011 18:05 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 02/03/2011 10:45 AM, Rafa? Mi?ecki wrote:
>> W dniu 3 lutego 2011 16:50 u?ytkownik Stefan Lippers-Hollmann
>> <s.L-H@gmx.de> napisa?:
>>> Hi
>>>
>>> On Thursday 03 February 2011, Rafa? Mi?ecki wrote:
>>>> Hi,
>>>>
>>>> My girlfriend just showed me her new notebook and... wohoo, it
>>>> contains 14e4:4727 I couldn't really find or Google! :)
>>>>
>>>> This card is visible as:
>>>> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4313
>>>> 802.11b/g LP-PHY [14e4:4727] (rev 01)
>>>> however loading ssb debug-less doesn't result in displaying anything in dmesg.
>>>
>>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/README
>>>
>>>> Does it mean this is SSB less Broadcom card? Or is this SSB based but
>>>> ssb module can not handle it for some reason? Right now I'm running
>>>> just LiveCD, can not recompile ssb modules with debugging enabled.
>>>> I'll borrow that card when I'll have something to insert instead (I
>>>> didn't take any card with me).
>>>
>>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/sys/wl_mac80211.c;h=f1235884cc5d24f15d3619b8678e0a2751754563;hb=HEAD#l121
>>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/include/bcmdevs.h;h=075883a935291b58c832038e7fe400a5708edf97;hb=HEAD#l47
>>>
>>> So it pretty much looks like being SSB less and using brcm80211 instead.
>>
>> It seems so, thanks. I'll just focus on SSB cards for now :)
>
> I think that best.
>
> I changed the "support" table to make it more clear that support means that
> there is an open-source option available.

I don't like it. Ppl don't read whole headers and tables, they will be
confused. If someone visits b43 page and sees "supported", he will
expect b43 to support it.

Please make it "brcm80211" supported or sth like that.

Can we add colors to cells? Like:
http://en.wikipedia.org/wiki/Comparison_of_open_source_wireless_drivers
We could use green for cards supported by b43, orange for supported by
brcm80211 and red for not supported by open source driver.

Or maybe even other idea. Make 3 columns: b43, brcm80211, wl. Add info
about support in each driver. What do you think?

-- 
Rafa?
