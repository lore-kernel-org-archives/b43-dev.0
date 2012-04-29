From: Arend van Spriel <arend@broadcom.com>
Date: Sun, 29 Apr 2012 10:05:22 +0200
Subject: [PATCH 0/4] bcma: add PCI functions from brcmsmac
In-Reply-To: <1335658732-24351-1-git-send-email-hauke@hauke-m.de>
References: <1335658732-24351-1-git-send-email-hauke@hauke-m.de>
Message-ID: <4F9CF642.1000705@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 04/29/2012 02:18 AM, Hauke Mehrtens wrote:
> This patch series contains the functions regarding the PCIe core from
> brcmsmac for the supported PCIe core revisions.
>
> Some of these functions have to be called on resume after suspend, but
> I do not know which or if all have to be called. I do not have a PCIe
> based device supported by brcmsmac, so I can not test this. Could
> someone which such a device do some tests and create a patch with the
> functions, which have to be called on resume.

I do have some devices and feel it is my/our responsibility to get this 
tested. I let you know the results.

> The goal of theses patches is to remove the PCIe code from brcmsmac to
> get one step ahead in making brcmsmac support non pcie based devices.
>
> This is based on wireless-testing/master.
>

Gr. AvS
