From: kbuild test robot <lkp@intel.com>
Date: Fri, 2 Jun 2017 07:24:29 +0800
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_attr_interfmode_store
In-Reply-To: <1496226547-5921-1-git-send-email-baijiaju1990@163.com>
Message-ID: <201706020741.xCELNDWA%fengguang.wu@intel.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Jia-Ju,

[auto build test WARNING on wireless-drivers-next/master]
[also build test WARNING on v4.12-rc3 next-20170601]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Jia-Ju-Bai/b43legacy-Fix-a-sleep-in-atomic-bug-in-b43legacy_attr_interfmode_store/20170531-192639
base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
config: x86_64-randconfig-a0-06020536 (attached as .config)
compiler: gcc-4.4 (Debian 4.4.7-8) 4.4.7
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

All warnings (new ones prefixed by >>):

   drivers/net/wireless/broadcom/b43legacy/sysfs.c: In function 'b43legacy_attr_interfmode_store':
>> drivers/net/wireless/broadcom/b43legacy/sysfs.c:114: warning: unused variable 'flags'

vim +/flags +114 drivers/net/wireless/broadcom/b43legacy/sysfs.c

75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25   98  				 " Mitigation)\n");
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25   99  		break;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  100  	default:
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  101  		B43legacy_WARN_ON(1);
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  102  	}
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  103  
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  104  	mutex_unlock(&wldev->wl->mutex);
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  105  
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  106  	return count;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  107  }
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  108  
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  109  static ssize_t b43legacy_attr_interfmode_store(struct device *dev,
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  110  					       struct device_attribute *attr,
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  111  					       const char *buf, size_t count)
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  112  {
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  113  	struct b43legacy_wldev *wldev = dev_to_b43legacy_wldev(dev);
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25 @114  	unsigned long flags;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  115  	int err;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  116  	int mode;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  117  
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  118  	if (!capable(CAP_NET_ADMIN))
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  119  		return -EPERM;
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  120  
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  121  	mode = get_integer(buf, count);
75388acd drivers/net/wireless/b43legacy/sysfs.c Larry Finger 2007-09-25  122  	switch (mode) {

:::::: The code at line 114 was first introduced by commit
:::::: 75388acd0cd827dc1498043daa7d1c760902cd67 [B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices

:::::: TO: Larry Finger <Larry.Finger@lwfinger.net>
:::::: CC: David S. Miller <davem@sunset.davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
-------------- next part --------------
A non-text attachment was scrubbed...
Name: .config.gz
Type: application/gzip
Size: 27408 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170602/4eb5535f/attachment-0001.gz>
