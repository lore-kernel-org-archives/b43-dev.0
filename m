From: Christopher M. Penalver <christopher.m.penalver@gmail.com>
Date: Sun, 29 Mar 2015 10:03:43 -0500
Subject: Please address delivery failure for B43 WIRELESS DRIVER maintainer
 e-mail [Fwd: Delivery Status Notification (Failure)]
Message-ID: <CAF4BKcDzxYV4Lkv8VSZiqyBK38RDyD1Lq9Regao52tiFCapMQA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dear b43 wireless maintainer mailing list, could you please address a
delivery failure for the B43 WIRELESS DRIVER maintainer e-mail (ex.
updating to new e-mail for present maintainer, or different person's
e-mail) as noted in:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS

Presently, it notes:
M: Stefano Brivio <stefano.brivio@polimi.it>

However, this would contradict the below forwarded delivery failure.

If the e-mail address is valid, but the issue is the message was
rejected for being too long, one can reasonably expect messages up to
100,000 characters (the below was ~68,000) as per
http://vger.kernel.org/majordomo-info.html#taboo .

Thank you for your time and consideration in this matter.

Christopher M. Penalver
E-Mail: christopher.m.penalver at gmail.com

---------- Forwarded message ----------
From: Mail Delivery Subsystem <mailer-daemon@googlemail.com>
Date: Sun, Mar 29, 2015 at 9:53 AM
Subject: Delivery Status Notification (Failure)
To: christopher.m.penalver at gmail.com


Delivery to the following recipient failed permanently:

     stefano.brivio at polimi.it

Technical details of permanent failure:
Google tried to deliver your message, but it was rejected by the
server for the recipient domain polimi.it by
polimi-it.mail.protection.outlook.com. [213.199.154.23].

The error that the other server returned was:
550 5.4.1 [stefano.brivio at polimi.it]: Recipient address rejected: Access denied


----- Original message -----

DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=KD9hEfsHBwfOz0gHoW6/ND+Ic1MHntU12jRGEhzQE+Y=;
        b=FsOR9csExmRLz1tH37IyKxK29H/4+bnSL1EWiYvftgtZy0a4HjzENwuTgDGv7VTOFR
         ty/HYvJbPXHboD+qG2U0QzLKAzrIHFKI4vT22LPAJvwIg3kNzna3cr4Z4D7ISZeN3Sjl
         YbqW1is4VXFiMz7qQiB+pmBxo1ok5x8T9xFGLSC+YBPrVv7Bosbx/g33HsmivCi0z90D
         dfIxjiyybj5b7pv5FUVqoFCtj9/rCUmB7V0em7fqVHQhE5nTeptgKK4fcjVTO8Mv0N8B
         KWrRuw7YX6xaQOuT4+h8yPBaYpZifI6tutkhOQQ68xx1nESb/xHq9LFVOz6ou5hBiaUu
         /BdA==
X-Received: by 10.202.69.67 with SMTP id s64mr21998613oia.134.1427640784857;
 Sun, 29 Mar 2015 07:53:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.73.170 with HTTP; Sun, 29 Mar 2015 07:52:24 -0700 (PDT)
From: "Christopher M. Penalver" <christopher.m.penalver@gmail.com>
Date: Sun, 29 Mar 2015 09:52:24 -0500
Message-ID: <CAF4BKcAXZi_dbn-gMvobz7d_0z+dGiB60nt09CQHnWn+OBub=Q@mail.gmail.com>
Subject: 14e4:4331 [MacBookPro9,2] b43 802.11 won't connect to Verzion Jetpack
 MiFi 5510L (no secrets provided)
To: linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
Cc: stefano.brivio at polimi.it
Content-Type: text/plain; charset=UTF-8

[1.] One line summary of the problem:
14e4:4331 [MacBookPro9,2] b43 802.11 won't connect to Verzion Jetpack
MiFi 5510L (no secrets provided)

[2.] Full description of the problem/report:
The laptop won't connect to an 802.11 g/n WAP. The same device with
the proprietary bcmwl drivers works, and other devices (and operating
systems) works fine with the same WAP. Latest router firmware and
laptop BIOS already applied.

Relevant syslog:
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) starting connection 'SSID'
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) Stage 1 of 5 (Device Prepare) scheduled...
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) Stage 1 of 5 (Device Prepare) started...
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> (wlan1): device
state change: disconnected -> prepare (reason 'none') [30 40 0]
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) Stage 2 of 5 (Device Configure) scheduled...
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) Stage 1 of 5 (Device Prepare) complete.
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1) Stage 2 of 5 (Device Configure) starting...
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> (wlan1): device
state change: prepare -> config (reason 'none') [40 50 0]
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation
(wlan1/wireless): connection 'SSID' has security, and secrets exist.
No new secrets needed.
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Config: added
'ssid' value 'SSID'
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Config: added
'scan_ssid' value '1'
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Config: added
'key_mgmt' value 'WPA-PSK'
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Config: added
'psk' value '<omitted>'
Mar 29 09:34:07 macbookpro NetworkManager[755]: <info> Activation

----- Message truncated -----
