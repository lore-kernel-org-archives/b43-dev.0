From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 17 Nov 2011 12:37:10 +0100
Subject: Patch "b43: refuse to load unsupported firmware" has been added
 to the 3.0-stable tree
In-Reply-To: <20111117121956.68cd800e@milhouse>
References: <1321487254296@kroah.org> <1321512890.2885.92.camel@deadeye>
 <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
 <20111117121956.68cd800e@milhouse>
Message-ID: <CACna6ryO0tGJ0SJBnhd9s93BXW-EchrWFX1faWP6gVOEQSYfkA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 17 listopada 2011 12:19 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Thu, 17 Nov 2011 09:42:04 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> 1) Broadcom driver doesn't contain info about firmware version
>
> In fact it does. The microcode does contain the version, of course.
>
>> 2) Because of that b43-fwcutter can't name files correctly
>
> And fwcutter is even able to extract it from the dump. It also
> does so currently.
>
>> 3) Discovering firmware version requires loading it to the firmware
>> and reading from SHM
>
> No.

I had no idea about that, but I admit, I didn't read the whole
b43-fwcutter code. Thanks for explaining.

What about API level (revsion?)? Do you think b43-fwcutten can extract
that? This would be perfect solution to include API level in firmware
file name.

-- 
Rafa?
