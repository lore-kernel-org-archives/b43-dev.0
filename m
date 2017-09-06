From: Drew Scott Daniels <ddaniels@UMAlumni.mb.ca>
Date: Tue, 5 Sep 2017 22:58:18 -0700
Subject: CVE-2017-9417 firmware fix with b43-fwcutter?
Message-ID: <20170906055818.GA25367@auburn.dreamhost.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,
Is there newer firmware that fixes the CVE-2017-9417 vulnerability or does
it not apply to devices supported by this driver? If there is a different
CVE not released you can say that this doesn't apply. Is there newer
firmware in pre-release (e.g. brcmfw_170808.tgz)or is that firmware
unrelated (e.g. just for the BCM43430 that isn't listed as supported)?

https://blog.exodusintel.com/2017/07/26/broadpwn/ indicates the
vulnerabilities are focused in HardMAC and seems to imply that SoftMAC isn't
vulnerable (at least on the firmware side as the vulnerability is in the MAC
code). The models listed as affected on that site are BCM4339 through
BCM4361 though it seems others may be affected.

https://bugs.launchpad.net/ubuntu/+source/linux-firmware/+bug/1713276 says:
Cypress (was Broadcom) have given the Raspberry Pi foundation new releases
of the WiFi and Bluetooth firmware to fix the problem. See
https://github.com/raspberrypi/linux/issues/1342#issuecomment-321221748

Debian is tracking a related bug at
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=869639

Thanks,

     Drew Daniels
Blog: http://www.boxheap.net/ddaniels/blog
