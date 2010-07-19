From: Lukasz Majewski <l.majewski@samsung.com>
Date: Mon, 19 Jul 2010 10:37:12 +0200
Subject: Wifi question
Message-ID: <20100719103712.126cf3b2@lmajewski.digital.local>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, all

Can somebody explain me why from time to time my driver/wpa_supplicant
is showing that it has discovered AP with MAC 00:00:00:00:00:00?
What does it mean? Is this the wifi SoC, driver, wpa_supplicant error?

Moreover it then is trying to connect and associate with the AP with
this odd address (00:00:00:00:00:00). Then it fails and is reconnecting
to the AP with normal MAC and WiFi connection is working as it was
again.

-- 
Best regards,

Lukasz Majewski

Samsung Poland R&D Center
Platform Group
