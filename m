From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 06 Feb 2014 01:22:40 -0600
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
Message-ID: <52F33840.4060208@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/05/2014 10:34 PM, grarpamp wrote:
> On Wed, Feb 5, 2014 at 8:50 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> If you had one of the newer cores, then you needed newer firmware to get the
>> correct file, but the older ones worked. However, I should never trust my
>> memory.
>
> Correct my understanding... 'cores' refers to physical hardware
> devices/revisions from Broadcom? So if I 'had newer cores', I'd need
> to find newer 'firmware aka: microcode' to support them. Because
> 'older ones aka: firmware files' would not in fact work for me
> since they would not have support for the new physical core
> I posess? ie: I see newer files from say Linksys have more
> ucodeN.fw N'umbers' available inside them than their older files..

The Broadcom devices consist of a number of different individual units with an 
interconnect. These units are the cores. The firmware files needed are 
determined by the revision number of the 802.11 or PHY core. As Broadcom 
develops new versions of the PHY core, the revision numbers get incremented. If 
you have a PHY core newer than anything supported by b43, it would not matter if 
the firmware for that chip is available or not, b43 would not work. Yes, there 
are newer versions of ucodeN, but it does not matter unless someone does the 
reverse engineering to see what is needed to make the device work.

>> The TX and RX headers changed with firmware version 598.314.
>
> 598.314 is not now in fwcutter, was it at one time present and
> then removed?

No, someone noticed that the descriptors changed with that version. We either 
never found a file containing that version, or a newer revision was found first.

>> change in the driver was introduced with commit 17030f4 in such a way that
>> the older firmware versions still worked.
>>
>> The two commits are at the bottom of the page
>> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43?ofs=200.
>
> Looking them over.
>
>> Ah, I know it by a different number.
>
> What number is that?

6.30.163.46

> How does something like '6.30.102.9 (r366174)' on the wrapper
> relate to its corresponding internal '784.2'? What are those
> strings each describing?

There is no one to one relationship. Both are internal Broadcom designations.

> And is there a supposed changelog, perhaps but
> not necessarily from Broadcom, for what changed
> in the different firmwares that we find?

No. The firmware is just a black box.

Larry
