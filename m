From: Peter Lemenkov <lemenkov@gmail.com>
Date: Mon, 10 Sep 2012 18:31:55 +0400
Subject: b43-open driver missing
In-Reply-To: <B25C1849-6EA9-4AA9-8794-85B99186F25C@gmail.com>
References: <B25C1849-6EA9-4AA9-8794-85B99186F25C@gmail.com>
Message-ID: <CANDpMDvU9Yk37tdiN=i049UwSi15P68D5ZtQYH2KKeMhB5XUvQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello All.

2012/9/10 Robert Dowell <bagdadbob66@gmail.com>:
> While installing the ppc-x64 version of Fedora x86_64 on an IMac I got the following message:
>
> [27.045279]Error: Firmware file "b43-open/ucode5.fw" not found.

You need to install b43-openfwwf package first (actually I though it
should be installed by Anaconda by default - now I'm not so sure).

> The only problem I'm having is the fact that when I get those errors the system freezes at that point and I use power it off and reboot.

This sounds like another issue.

-- 
With best regards, Peter Lemenkov.
