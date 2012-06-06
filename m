From: =?us-ascii?Q?Vaclav=20Peroutka?= <vaclavpe@seznam.cz>
Date: Wed, 06 Jun 2012 07:45:33 +0200 (CEST)
Subject: =?us-ascii?Q?Re=3A=20BCM4318=20problem=20on=20Kubuntu?=
In-Reply-To: <4FCED87C.6060801@lwfinger.net>
Message-ID: <315704.11262.21982-2893-1003786267-1338961532@seznam.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> > Jun  5 22:39:27 malamys-laptop kernel: [   29.476032] b43-phy0: Loading
> firmware version 666.2 (2011-02-23 01:15:07)
> 
> I am not certain that this version of the firmware works with the 4318. You 
> might try an older version.

> > [  118.012857] Hardware name: AMILO PRO V8010
> 
> My system is too new to tell exactly what causes this error; however, I think it
> 
> comes from the wireless band not being set up correctly. Do you have CRDA 
> installed? I do not see any evidence of it in the dmesg output that you posted.

What is CRDA ? I will check logs. In the meantime, I succeeded to install newest Ubuntu with WiFi card switched off in BIOS. I found this "LiveCD freezing" problem on another forum and the solution was exactly to unplug the card. So now I can make experiments on the latest linux release as well. However, I don't know where to start after I enable the card in BIOS...

What older firmware do you recommend me and where can I get it ?

Vaclav
