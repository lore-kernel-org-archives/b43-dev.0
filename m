From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 30 Apr 2011 00:20:10 -0500
Subject: b43 -- 4312 and built-in/static kernel
In-Reply-To: <20110430012706.7ABA9E671D@smtp.hushmail.com>
References: <20110430012706.7ABA9E671D@smtp.hushmail.com>
Message-ID: <4DBB9C0A.1070204@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/29/2011 08:27 PM, Alfred B. M. Cordero wrote:
> Hello,
>
> I am building a static kernel. I have gotten the DVB card working
> by adding
> the .fw to linux/firmware and so I am doing the same thing with the
> 4312.
> The kernel builds fine, the 4312 is found and seems fine.
> dmesg reports the card, lspci shows it and so does ifconfig -a.
>
> ip link set dev wlan0 up pretty much hangs and none of the iw*
> commands
> work.
>
>
> The problem may be that at the request_firmware stage there is a
> mismatch
> between what I've compiled into the kernel and what
> request_firmware is
> requesting.
>
> I have ucode5.fw, b0g0bsinit and b0g0init in linux/firmware and
> added those to .config
>
> If anyone knows how to narrow this down it would be great.

What exactly do you mean by 4312? If you mean a PCI ID of 14e4:4312, then the 
firmware above is partially correct. The ucode5.fw is correct, but you also need 
b0g0initvals5.fw and b0g0initvals5.fw. In addition, you might need 
a0g1initvals5.fw or a0g1initvals5. I no longer have one of those devices, thus I 
cannot test.

If you mean BCM4312 802.11b/g, then your firmware selection is wrong. This type 
of device will have a PCI ID of 14e4:4315 and will require different firmware. 
For these LP-PHY devices, b0g0initvals13.fw, lp0initvals13.fw, and ucode13.fw 
are probably needed.

Larry
