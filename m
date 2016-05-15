From: Nirav Patel <nspho1@gmail.com>
Date: Mon, 16 May 2016 05:16:51 +0530
Subject: Need some reverse engineering effort
Message-ID: <CACW9AP4ZdYdVLOWoTSO-gDdX+EOQXAz+SWdVdQ7Znwtoq-pk1w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, May 15, 2016 at 12:34 AM, Larry Finger
<Larry.Finger@lwfinger.net> wrote:
> On 05/14/2016 09:58 AM, Nirav Patel wrote:
>>
>> I am a newbie in this field. And there's lots of coding in this (wl)
>> driver.
>> It contains support for all (obviously except those very newly
>> released ones) broadcom devices including the AC, HT, extended_N phy's
>> and 20691 devices. Any help is appreciated.
>> I don't understand where to start. From what I can figure out, the
>> structure and coding pattern is similar to the brcmsmac driver.
>> It would be very easy to make modifications and additions to brcmsmac
>> driver. But if I am not wrong the similar patterns would obviously
>> hurt the copyrights and also the clean-room design.
>> Is it possible to modify the brcmsmac driver without claiming
>> copyrights for the new code (which is also of broadcom like the
>> brcmsmac driver itself) ?
>> And is there any mailing-list or a community for the brcmsmac driver like
>> this?
>> I know the last 2 questions are outside the scope here, but any help
>> is greatly appreciated.

>
>
> I can tell you are a newby because you are top posting. For your personal
> E-mail, posting your reply before the stuff you are adding is OK, but it is
> discouraged in mailing lists like this. It becomes very difficult to go from
> the bottom to the top and back again when you read the thread.
>
Oops! That's my mistake. It just went with the gmail defaults. I could
just remember the plain text email that time.

> The source code that comes with the hybrid wl driver is just the glue
> between the code that operates the chip and the operating system. With b43
> or brcmsmac, that code is mostly in the kernel already. The part that needs
> to be reverse engineered is the binary blob usually named wt_apsta.o.

I was talking of the dd-wrt sourced wl driver, the links of which I
gave earlier. Not the wl_apsta.o Binary Large Object. It is very
difficult to understand BLOBs (even if possible), which too is
outdated. The dd-wrt linked driver consists of object files for each
file like phy_n.o, etc. Just have a look at the files.

> There is no distributed source for that part. You need either to decompile that
> routine and figure out what it is doing, or interpret the data that wl reads
> and writes when operating the device. The first method is probably not legal
> as the Broadcom license for wl probably forbids decompiling. The second
> method is very difficult without knowing how wl is structured.

Then how did you used to do that? You told that you did. Any hints are welcome.
>
> Yes, you should use brcmsmac or brcmfmac as models for the structure of the
> driver for a new device. but without some knowledge of the chip internals,
> the process is very difficult.
>
> Good luck,
>
> Larry
>
>
Well you need to RE the dd-wrt wl driver just like a software program
(not driver) and compare with the brcmsmac (or b43) to know the chip
internals, and their working, as it's possible and to upload the specs
(clean-room design). Just try that and I bet you would not need a
Broadcom device for that. Link:
http://svn.dd-wrt.com/browser/src#linux/universal/linux-4.4/brcm/arm

And can the architecture of the platform be changed of those (ddwrt
ones) drivers, as it is available only in mipsel and arm, but not
mipsbe by changing the endianness? But I am already very less hopeful
for that.

BTW I had to change the subject as the old subject was throwing header errors.
