From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue, 07 Dec 2010 20:21:24 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <4CFE538A.10808@lwfinger.net>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net>
Message-ID: <4CFE8934.4060803@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12/07/2010 04:32 PM, Larry Finger wrote:
> On 12/07/2010 06:28 AM, Rafa? Mi?ecki wrote:
>> W dniu 7 grudnia 2010 13:21 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>>> Currently we tell ppl to use 4.150.10.5 for G-PHY and 4.174.64.19 for
>>> LP-PHY on our wiki page.
>>>
>>> Firmware files for G-PHY differ a little between there two versions,
>>> but did we actually get any problems reports?
>>>
>>> Can we drop 4.150.10.5 description?
>>
>> openSUSE 11.3 seems to download 4.174.64.19 only with it's script and
>> I didn't heard about any reports. One more point for dropping
>> 4.150.10.5?
> 
> I pushed the patch to change openSUSE's script early in the beta testing for
> that release. I have heard no complaints either. I agree that 4.150.10.5 should
> be dropped.

We had serious issues with firmware version 4.174.64.19 in OpenWrt and
switched back to the old on as the default option. This issue afftected
mostly LP-PHY devices.

See the Bug report: https://dev.openwrt.org/ticket/6907 This was with
kernel 2.6.32 and compat-wireless from  round about March to May 2010.
Stable means the old firmware version and experimental the new one in
the bug report.

Hauke
