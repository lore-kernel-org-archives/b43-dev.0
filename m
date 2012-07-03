From: Tom Gundersen <teg@jklm.no>
Date: Tue, 3 Jul 2012 21:56:16 +0200
Subject: kernel oops on rmmod
Message-ID: <CAG-2HqW0CZdrbjU+6S-fDQv2h6EcC-CutTV_0hutUQ_ezLEyFQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi guys,

I just experienced a kernel oops, and thought I'd let you know even if
I don't have much details, as I imagine it might be simple to verify.

I'm on linux 3.4.4 using the b43 module.

The trigger was:

Boot without the correct firmware installed and immediately do "rmmod
b43". The backtrace mentioned "workqueue" and "b43".

I can get more details if you require it (assuming it is easily
reproducible, I only did this once so far).

Cheers,

Tom
