From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 5 Dec 2011 12:30:24 +0100
Subject: bcma usage in isr context
In-Reply-To: <4ED77C85.1050705@broadcom.com>
References: <4ED77C85.1050705@broadcom.com>
Message-ID: <CACna6rznu8d1BjG0EWjP1VRCPdYAGJv1q+fi1X+XF_Bf-Cx+Mg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

Hi,

Sorry for late reply, I was a little busy recently...

W dniu 1 grudnia 2011 14:09 u?ytkownik Arend van Spriel
<arend@broadcom.com> napisa?:
> I am doing some final testing on our brcmsmac driver, which I tinkered
> to become a bcma device driver. During testing an issue popped up in the
> ISR code.

Do you mean interrupts code?


> Looking into the bcma read/write functions in host_pci.c I conclude that
> bcma itself does not provide protection for concurrency. Am I correct in
> that? How is this solved in b43?

I think I mean the fact that core driver can switch BCMA to
ChipCommon, while interrupt handler will try to access 80211 core?

You're right, we don't handle this properly. I'll try to send patch
today to make use of fixed windows. I've it here for some time
already, just didn't clean it enough.

-- 
Rafa?
