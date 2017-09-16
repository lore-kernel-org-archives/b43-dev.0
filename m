From: Aluizio Oliveira <aluiziob.oliveira@gmail.com>
Date: Sat, 16 Sep 2017 00:13:12 -0300
Subject: BCM4322 not working properly on Debian Stretch
Message-ID: <CAFp9Rcu9QX8MmoSczNB2eO3k2g_U=g3V7hRBC1bDYB7JyLwXAw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello all,

I recently updated my Debian system from version 8 (Jessie) to 9
(Stretch) with a full format / reinstall and my wireless card that
worked perfectly on Jessie suddenly became buggy - when it does
connect, it goes really slow and I experience connection drops from
time to time. It usually only connects if I load the driver with
modprobe and suspend / wake up the computer after that. I tried
different networks / routers but the problem seems to be with my
machine. Also tried both b43 and wl drivers with no luck... This is
happening on my MacBook Pro 7,1 (2010).

Any suggestions? I attached my dmesg and lsmod outputs before and
after loading the driver in case it might be of any help on debugging
the issue.

Thanks,

Aluizio
-------------- next part --------------
A non-text attachment was scrubbed...
Name: lsmod_170915_1801
Type: application/octet-stream
Size: 5077 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170916/72b17b9d/attachment-0004.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg_1709151801
Type: application/octet-stream
Size: 65765 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170916/72b17b9d/attachment-0005.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg_1709151759
Type: application/octet-stream
Size: 63462 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170916/72b17b9d/attachment-0006.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: lsmod_170915_1757
Type: application/octet-stream
Size: 4636 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170916/72b17b9d/attachment-0007.obj>
