From: Ariel Pedraza <pedrazaa@yahoo.com>
Date: Thu, 4 Nov 2010 05:21:32 -0700 (PDT)
Subject: pci id 14e4:4727 (bcm4313) status?
Message-ID: <902099.84037.qm@web111406.mail.gq1.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have the 14e4:4727 and using the brcm80211, this is an example of what I get and the status of each commands:

airmon-ng #ok
airmon-ng stop wlan0 #ok
ifconfig wlan0 #ok
macchanger --mac yy:yy:yy:yy:yy:yy wlan0 #ok
airmon-ng start wlan0 #ok
airodump-ng mon0 #ok
airodump-ng -c canal -w nomarch --bssid xx:xx:xx:xx:xx:xx mon0  #ok, no datas

In other terminal:
aireplay-ng -1 0 -a xx:xx:xx:xx:xx:xx -h yy:yy:yy:yy:yy:yy mon0 #ok, autentication succesful
aireplay-ng -3 -b xx:xx:xx:xx:xx:xx -h yy:yy:yy:yy:yy:yy mon0 #ok, supose to increment datas but NOP!!!

In other terminal:
aircrack-ng -b xx:xx:xx:xx:xx:xx nomarch.cap #ok, no datas...

So... when do you think that the brcm80211 implemetation will be ready to capture datas? 


      
