From: Wifi User <mywifiismycastle@gmail.com>
Date: Fri, 25 Sep 2015 08:39:17 +0200
Subject: b43 with Kernel 4.1?
In-Reply-To: <CACna6rwh0Ta2WbyVD2Zi_jKvof=BPcLV4h9ux-C6SBWdDneobA@mail.gmail.com>
References: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
 <55F75EE9.6070304@lwfinger.net>
 <CABC5Cq+ecoDYz2kq9rF9_XNRDP1bKT=TcnqQvMQAd4WbPxUgmw@mail.gmail.com>
 <CACna6rwh0Ta2WbyVD2Zi_jKvof=BPcLV4h9ux-C6SBWdDneobA@mail.gmail.com>
Message-ID: <CABC5CqL5-Kv4k=eevOzSg_qxeWRo4M_sHObJR+rzykBcUTasEA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Thanks Rafa?!

Switching to nl80211 finally solved it!

2015-09-25 5:40 GMT+02:00 Rafa? Mi?ecki <zajec5@gmail.com>:
> On 24 September 2015 at 20:00, Wifi User <mywifiismycastle@gmail.com> wrote:
>> Do you happen to have a clue where I'm doing something wrong?
>
> You're trying to use obsolete API (iwconfig). Just stick to nl80211
> (it's used by "iw" tool and wpa_supplicant with "-D nl80211").

That means in future I shouldn't use iwconfig any longer but switch to
iw wlan0 link instead?

Next challenge is getting 802.11n to run. - Are there any plans to
support 802.11n with b43, too?
(My chip 14e4:432b is unfortunately not supported by brcm80211 :()
