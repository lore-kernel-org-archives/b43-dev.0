From: Nirav Patel <nspho1@gmail.com>
Date: Fri, 13 May 2016 19:00:15 +0530
Subject: Need some reverse engineering effort.
Message-ID: <CACW9AP49qOSXQ8tNpdoJvk-0u0nprdq2QsVE7JqrM8VKSuMqeg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Tired of resending email due to HTML text error. Anyway now back to the subject:

I have found some linux binaries for the wl (apsta) driver which can
be easily reverse engineered.
http://svn.dd-wrt.com/browser/src#linux/universal/linux-4.4/brcm/arm
This contains the arm binaries. Look for other binaries here
http://svn.dd-wrt.com/browser/src#linux/universal
in this way: Browse the desired linux version (mips binaries are only
in linux 2.x which are probably outdated) > brcm > architecture
(probably arm or mipsel) > wl
Since the binaries are almost separate for each file they can be
easily reverse engineered.
It seems that Hex-rays IDA (sadly so costly) would easily decompile as
well as disassemble them.

@Larry Can you please reverse engineer these binaries and upload the
specs to the website?
It would be of great help for b43 development. Thanks in advance.
