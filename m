From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 17 Nov 2011 12:19:56 +0100
Subject: Patch "b43: refuse to load unsupported firmware" has been added
 to the 3.0-stable tree
In-Reply-To: <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
References: <1321487254296@kroah.org> <1321512890.2885.92.camel@deadeye>
 <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
Message-ID: <20111117121956.68cd800e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 17 Nov 2011 09:42:04 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 1) Broadcom driver doesn't contain info about firmware version

In fact it does. The microcode does contain the version, of course.

> 2) Because of that b43-fwcutter can't name files correctly

And fwcutter is even able to extract it from the dump. It also
does so currently.

> 3) Discovering firmware version requires loading it to the firmware
> and reading from SHM

No.

-- 
Greetings, Michael.
