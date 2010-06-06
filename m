From: Felipe J <felipe.mail.lists@googlemail.com>
Date: Sun, 6 Jun 2010 10:02:01 +0200
Subject: BCM4318 Airforce one
Message-ID: <AANLkTinxLHKZlBbYCWWsIhYM4B6mhibU7n0_gaX9rhEB@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi ,

I had my wireless card working nicely since the first installation (i just
remember that i had to do some stuff, which i cant remember now but once i
did i got it working). I have more then 8 months and never had problems.
Yesterday i installed the following, to try to get some other application
working:
*
sudo apt-get install linux-headers-`uname -r`  linux-source kernel-package
libncurses5-dev fakeroot wget bzip2*

I realized after that my wireless card stopped working, after this command.

Then i tried to rollback with the command:

*sudo apt-get remove linux-headers-`uname -r`  linux-source kernel-package
libncurses5-dev fakeroot wget bzip2*

Still no sucess. My card is still not working. I tried to reinstall
b43-fwcutter, and still no sucess....

Does anyone have a suggestion?

Thanks,

Felipe
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100606/64ccef38/attachment.htm>
