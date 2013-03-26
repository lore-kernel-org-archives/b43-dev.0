From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Mar 2013 22:58:49 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs
 to determine BSS channel"
In-Reply-To: <1364323118.8319.13.camel@jlt4.sipsolutions.net>
References: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
 <1364323118.8319.13.camel@jlt4.sipsolutions.net>
Message-ID: <CACna6rxpiPp_FR8jF=jKHbd6XrYndfFZC5O4g6=fvioK=e8vEg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2013/3/26 Johannes Berg <johannes@sipsolutions.net>:
> On Tue, 2013-03-26 at 18:10 +0100, Rafa? Mi?ecki wrote:
>
>> I've just finished bisecting wireless scanning regression I'm
>> experiencing with my 14e4:432b (BCM4322) and b43 driver.
>
> Hmmm.
>
>> The problem is getting my network visible in scanning results (iw dev
>> wlan0 scan). I've to repeat scanning dozens of time to notice my AP.
>> It's also well visible when using wpa_supplicant. It takes from 20s to
>> 100s before I get the "Trying to authenticate with".
>
> That's strange.
>
>> After going back to the kernel before that commit it takes
>> wpa_supplicant less than 2 seconds to connect to my WiFi network.
>
>> My network is at channel 13, I still have to verify if it matters.
>>
>> Any thought about that?
>>
>>
>> The first bad commit (I've verified manually after bisecting) appears to be:
>
> "verified manually" how? By reverting the commit? But anyway the commit
> is clearly scanning related, so ...

Oh, that was just about
1) git checkout 0172bb75073e11a5aa9d8a953bdaefb8709f00c8
2) test
3) git revert 0172bb75073e11a5aa9d8a953bdaefb8709f00c8
4) test


> Can you check your channel list? (iw list or iw phy0 info)

Sure, attaching iw.list.log.


> Also can you show the full data including beacon data from the AP (iw
> wlan0 scan dump -b) please?

Hm, first of all, above command doesn't seem to perform real scanning.
It returns too quick to actually scan anything. It's result is empty
as long as I don't use standard "iw dev wlan0 scan".  After scanning a
normal way once ("iw dev wlan0 scan"), executing "dump -b" results in
the output at the one produced by "iw dev wlan0 scan" (only TSF and
last seen differ).

Is there anything special about "iw dev wlan0 scan dump -b" I should know of?


> Does reverting just the mac80211 change fix it?

Yes. Reverting just a change in net/mac80211/scan.c fixes the problem
for me. I've tested this with the latest wireless-testing.

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: iw.list.log
Type: application/octet-stream
Size: 2893 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130326/6f21ae6a/attachment.obj>
