From: Hogren <hogren@iiiha.com>
Date: Tue, 3 Jan 2017 11:00:23 +0100
Subject: problem with qos option with b43
Message-ID: <5b94a041-ed93-b49e-4db0-98ac5346cd1c@iiiha.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I hope that I will not use your time for nothing.

I recently solved a problem with my wifi card.


Wifi Card:

# lspci |grep -i bc
24:00.0 Network controller: Broadcom Corporation BCM43228 802.11a/b/g/n


Title of the gentoo mailing thread about my problem:

[gentoo-user] Broadcom wireless problem after a certain time


My problem was that after a certain time (I suppose that is after a
certain amount of received data), the card stopped to work fine, I
couldn't access to any website, etc. I restart the wpa_supplicant
systemd module, and the wifi works again.


After my discussion on the gentoo mailing-list, I tested to disable qos
(echo "options b43 qos=0" > /etc/modprobe.d/b43.conf), and it resolved
the problem.


The goal of my mail is :

I want to learn. I want to help.


Is there a page with a description of the QoS option of b43 module (what
does it do, compatibility, etc.) ?

Can I make any tests or analyses to help you to possibly repair a bug in
the module ?


Thank you very much !!

And an happy new geek year !


Hogren
