From: Dora Smith <tiggernut24@yahoo.com>
Date: Tue, 29 Nov 2016 09:01:51 -0600
Subject: BCM43224
In-Reply-To: <CACna6rwgsEf8=SykiD1mU0qVLHCC5ki_HiMb4omC+jB5eV+kfA@mail.gmail.com>
References: <3dba7020-e9ae-e7b7-2471-aa0681553f20@me.com>
 <CACna6rzE2R2jQtViNrqvLriybxnWK1k+hw-FjSgg9Ch7ZD6jZw@mail.gmail.com>
 <7b40931a-1d1a-9baf-28d3-59568a346800@me.com>
 <CACna6rwgsEf8=SykiD1mU0qVLHCC5ki_HiMb4omC+jB5eV+kfA@mail.gmail.com>
Message-ID: <4798341C682F42D89235C411274B7EDF@DoraWin7PC>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I got it to work, sort of, but ended up upgrading to a new old card, and 
I've been VERY happy with it.

I did research and found one of the few N cards that was made for the type 
of slot in my older notebook.

Dora

-----Original Message----- 
From: Rafa? Mi?ecki
Sent: Tuesday, November 29, 2016 5:01 AM
To: Faissal Bensefia
Cc: b43-dev
Subject: Re: BCM43224

On 29 November 2016 at 11:48, Faissal Bensefia <faissaloo@me.com> wrote:
> On 28/11/16 21:03, Rafa? Mi?ecki wrote:
>> On 23 November 2016 at 21:27, Faissal Bensefia <faissaloo@me.com> wrote:
>>> To my knowledge the only drivers for this card are brcmsmac and
>>> broadcom-wl, both of which require proprietary firmware, which I'd like
>>> to do without. How can I assist in reverse engineering the BCM43224
>>> firmware? Are there any resources that explain how to use b43-tools?
>>
>> b43 also has (very) limited support for BCM43224, after all you
>> e-mailed b43 mailing list.
>>
> I've attempted to use b43 but on my card but it doesn't work, the module
> never loads, despite me removing brcmsmac making sure that everything
> has been unloaded and then loading b43, as well as blacklisting
> brcmsmac, none of which worked. From what I've read there is meant to be
> support but it's not been tested (I don't remember where the site was
> but it had a list of Broadcom cards and their support status).

Please be specific.

"the module never loads" - what error do you see after doing "modprobe b43"?

-- 
Rafa?

_______________________________________________
b43-dev mailing list
b43-dev at lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev 
