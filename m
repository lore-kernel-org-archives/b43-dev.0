From: Nirav Patel <nspho1@gmail.com>
Date: Sat, 14 May 2016 20:28:25 +0530
Subject: Need some reverse engineering effort.
In-Reply-To: <5735FA0E.1070004@lwfinger.net>
References: <CACW9AP49qOSXQ8tNpdoJvk-0u0nprdq2QsVE7JqrM8VKSuMqeg@mail.gmail.com>
 <5735FA0E.1070004@lwfinger.net>
Message-ID: <CACW9AP4wX58vHdWK8ahzcWc=Lf=N6E5ZsiHcu+5373B8caH3Yw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I am a newbie in this field. And there's lots of coding in this (wl) driver.
It contains support for all (obviously except those very newly
released ones) broadcom devices including the AC, HT, extended_N phy's
and 20691 devices. Any help is appreciated.
I don't understand where to start. From what I can figure out, the
structure and coding pattern is similar to the brcmsmac driver.
It would be very easy to make modifications and additions to brcmsmac
driver. But if I am not wrong the similar patterns would obviously
hurt the copyrights and also the clean-room design.
Is it possible to modify the brcmsmac driver without claiming
copyrights for the new code (which is also of broadcom like the
brcmsmac driver itself) ?
And is there any mailing-list or a community for the brcmsmac driver like this?
I know the last 2 questions are outside the scope here, but any help
is greatly appreciated.

On Fri, May 13, 2016 at 9:30 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 05/13/2016 08:30 AM, Nirav Patel wrote:
>>
>> Tired of resending email due to HTML text error. Anyway now back to the
>> subject:
>>
>> I have found some linux binaries for the wl (apsta) driver which can
>> be easily reverse engineered.
>> http://svn.dd-wrt.com/browser/src#linux/universal/linux-4.4/brcm/arm
>> This contains the arm binaries. Look for other binaries here
>> http://svn.dd-wrt.com/browser/src#linux/universal
>> in this way: Browse the desired linux version (mips binaries are only
>> in linux 2.x which are probably outdated) > brcm > architecture
>> (probably arm or mipsel) > wl
>> Since the binaries are almost separate for each file they can be
>> easily reverse engineered.
>> It seems that Hex-rays IDA (sadly so costly) would easily decompile as
>> well as disassemble them.
>>
>> @Larry Can you please reverse engineer these binaries and upload the
>> specs to the website?
>> It would be of great help for b43 development. Thanks in advance.
>
>
> If those binaries are so easily reverse engineered, I suggest you do them
> yourself. I used to do that, but I now have other responsibilities that
> occupy my time.
>
> Larry
>
>
