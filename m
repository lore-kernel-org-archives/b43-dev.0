From: Konstantinos Karantias <kostis@gtklocker.com>
Date: Fri, 10 Dec 2010 20:53:49 +0200
Subject: b43 N PHY status report
In-Reply-To: <4CFFA112.7030800@lwfinger.net>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
	<4CFFA112.7030800@lwfinger.net>
Message-ID: <AANLkTik1712si67qH6fBSLzu8iWcjqnX=ntENh0W8UmU@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

It's not been so stable on my BCM4312, but it's still stable. It can keep
the connection for ~3 hours here.

2010/12/8 Larry Finger <Larry.Finger@lwfinger.net>

> Rafa?,
>
> The N PHY driver is remarkably stable. So far, my link has been up for
> nearly 16
> hours under normal conditions - I have not yet tried any stress tests.
> Other
> than the PHY errors that you noted, my link has only reported 2 other
> unusual
> events. I have had 3 "Deauthentication for reason 3" from which it
> recovered in
> one try. Also logged are 9 instances of "RX: Packet size underrun
> (2)/Packet
> dropped" events. Again, these caused no problems.
>
> Larry
>
>
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Blog: http://www.gtklocker.com/
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101210/6a7db86e/attachment.html>
