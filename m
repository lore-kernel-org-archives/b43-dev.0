From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 03 Feb 2011 11:05:56 -0600
Subject: Broadcom 14e4:4727 card
In-Reply-To: <AANLkTi=rK_hxN559vmhXOqQUip9vynMnP9DkidhB8xBb@mail.gmail.com>
References: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>	<201102031650.54903.s.L-H@gmx.de>
	<AANLkTi=rK_hxN559vmhXOqQUip9vynMnP9DkidhB8xBb@mail.gmail.com>
Message-ID: <4D4AE074.80108@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/03/2011 10:45 AM, Rafa? Mi?ecki wrote:
> W dniu 3 lutego 2011 16:50 u?ytkownik Stefan Lippers-Hollmann
> <s.L-H@gmx.de> napisa?:
>> Hi
>>
>> On Thursday 03 February 2011, Rafa? Mi?ecki wrote:
>>> Hi,
>>>
>>> My girlfriend just showed me her new notebook and... wohoo, it
>>> contains 14e4:4727 I couldn't really find or Google! :)
>>>
>>> This card is visible as:
>>> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4313
>>> 802.11b/g LP-PHY [14e4:4727] (rev 01)
>>> however loading ssb debug-less doesn't result in displaying anything in dmesg.
>>
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/README
>>
>>> Does it mean this is SSB less Broadcom card? Or is this SSB based but
>>> ssb module can not handle it for some reason? Right now I'm running
>>> just LiveCD, can not recompile ssb modules with debugging enabled.
>>> I'll borrow that card when I'll have something to insert instead (I
>>> didn't take any card with me).
>>
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/sys/wl_mac80211.c;h=f1235884cc5d24f15d3619b8678e0a2751754563;hb=HEAD#l121
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/include/bcmdevs.h;h=075883a935291b58c832038e7fe400a5708edf97;hb=HEAD#l47
>>
>> So it pretty much looks like being SSB less and using brcm80211 instead.
> 
> It seems so, thanks. I'll just focus on SSB cards for now :)

I think that best.

I changed the "support" table to make it more clear that support means that
there is an open-source option available.

Larry
