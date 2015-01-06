From: Rickard Strandqvist <rickard_strandqvist@spectrumdigital.se>
Date: Tue, 6 Jan 2015 19:01:39 +0100
Subject: [PATCH] net: wireless: b43legacy: radio.c: Remove unused function
In-Reply-To: <CACna6rxF1OKRZSpaL=+XzSV2kCpMH5LuB-B+eWV7zF8MJ-9tog@mail.gmail.com>
References: <1420127170-28421-1-git-send-email-rickard_strandqvist@spectrumdigital.se>
 <CACna6rznUcqGTK0t1k=kjn0NVLycq865780ozyB+VYu78d_BSg@mail.gmail.com>
 <CACna6rxbGRdw7XSYvHAJGxJvMVwjVbAL4ynBM3m9rNggh7gCVQ@mail.gmail.com>
 <CA+icZUWOXMEyobZkudW9BEfkaWFTXQL9XF26g7oJMCzt=4==6g@mail.gmail.com>
 <CAKXHbyO70WdWekSYCY9spMbX2+_kdKTp3JoreDKpCdUBzFwYqw@mail.gmail.com>
 <CACna6rxTYUWvxvu0rFydWxkjbYdHfhV=o+9A+ViCpbV-LFx7fw@mail.gmail.com>
 <CAKXHbyMqTk=k7eieBNtAD+n6+4w3weL82twHBo-o8ebm_3+wvg@mail.gmail.com>
 <CACna6rxF1OKRZSpaL=+XzSV2kCpMH5LuB-B+eWV7zF8MJ-9tog@mail.gmail.com>
Message-ID: <CAKXHbyPPiiqN_e5kgOb36gLeTR+b==8ZXQbNUrnKGCbDzqxLaw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

2015-01-05 7:34 GMT+01:00 Rafa? Mi?ecki <zajec5@gmail.com>:
> On 3 January 2015 at 13:28, Rickard Strandqvist
> <rickard_strandqvist@spectrumdigital.se> wrote:
>> 2015-01-02 22:34 GMT+01:00 Rafa? Mi?ecki <zajec5@gmail.com>:
>>>
>>> 1) I gave you Ack for the changes
>>> 2) You could drop "net: wireless: " or better use something Sedat proposed
>>
>> Nice, yes I miss the Ack :)
>>
>> I just got one more complaining about my subject-line in "net: wireless: "
>> I use some sed call for this, so it's easy to fix. I will now remove that
>> part hereinafter.
>
> Will you re-send this patch with a proper subject then, please?
>
> --
> Rafa?


Hi Rafa?

Ok, resent the patch.

Just a thought about this naming.
Now I have changed in radio.c and radio.h, what happens when I send
another patch for other files in the same directory, the caption will
then be identical.


Kind regards
Rickard Strandqvist
