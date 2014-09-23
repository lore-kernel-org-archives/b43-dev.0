From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 23 Sep 2014 09:53:40 -0500
Subject: Wireless Card
In-Reply-To: <54217172.9090306@googlemail.com>
References: <54217172.9090306@googlemail.com>
Message-ID: <54218974.5020206@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/23/2014 08:11 AM, Mark Sibley wrote:
> Dear Sir / Madam
>      I Have got an old Dell Inspirin 300 laptop running Ubuntu 14.04 32 Bit but
> the wireless card does not work . I have done some research and found that it is
> pretty awkward to fix . The card in question is a Broardcom BCM 4318 [14e4:4318]
> rev 02 . I have tried various Terminal commands but to no avail .I have fairly
> basic knowledge , and would really appreciate some help . I am at present using
> a USB wireless adaptor . Regards Mark

I use a BCM4318 without difficulty. If you look at the output of the dmesg 
command, you will likely see that the firmware is missing. For legal reasons, no 
distro is allowed to redistribute such firmware in the manner used by other 
manufacturers. To overcome this issue, the b43 developers have created a program 
to "cut" such firmware from a driver for some other system. I am not an Ubuntu 
user, thus I am not familiar with how this process is implement. The b43 wiki at 
http://wireless.kernel.org/en/users/Drivers/b43#Ubuntu.2FDebian says you should 
use the command:

sudo apt-get install firmware-b43-installer

It further states "In recent versions of Ubuntu and Debian, installing the 
firmware-b43-installer package will handle everything for you. You will be asked 
to automatically fetch and install the firmware into the right location. Again, 
you will need an internet connection." It sounds as if that is all you will need.

If you have already installed the firmware, and you have a different problem, 
then we will need a more complete description.

Larry
