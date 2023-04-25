Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4198C77B7C
	for <b43-dev@archiver.kernel.org>; Tue, 25 Apr 2023 22:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBqzUTwyB+ss6/KZbNtedbIA9qWSdEWfclRRR330anI=; b=M8Skn1i0pA5j3m
	jVR2+BFBTUsk6L2LRrKVR9xwbhKHLDdOM536j4PztL+oSTEXGtIcVpN5EtL96OevewnalzeqSslHV
	+qbsIQR6wtq5nLutyGQfcQcI93z74oIdW3wPSSRF7/g9fB3f0idP6zFyJKb261JlbWCq/xcEefgFB
	2ojJrGR67fC2NlG2hP0xUdFY/KAR3Owxd1/IeLj2FnKYc0wrxZ7etegAwboHtOuzVgrWsAOiaoypd
	JzSgRzrDpUhmC2kK8r7hZxmyjnOiLPB69jNwG0tURZafuaoPVTbUG6yEJ3QZg6lvp3fvRJLPuAqOH
	7KI/oemv3MjtUsby1iyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prRBd-002Kcp-0p;
	Tue, 25 Apr 2023 22:31:01 +0000
Received: from mail.rslp.org ([46.23.92.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prRBZ-002Kc6-03
	for b43-dev@lists.infradead.org;
	Tue, 25 Apr 2023 22:30:59 +0000
Received: from [127.0.0.1] (pool-173-71-124-101.cmdnnj.fios.verizon.net [173.71.124.101])
	by mao.rslp.org (OpenSMTPD) with ESMTPSA id 6c121c0a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 26 Apr 2023 00:30:49 +0200 (CEST)
Date: Tue, 25 Apr 2023 22:30:45 +0000
From: Pogprogrammer <spikey@rslp.org>
To: Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org
CC: linux-wireless <linux-wireless@vger.kernel.org>
Subject: Re: Macbook pro 7,1
In-Reply-To: <54db8ecb-b817-eda9-09ff-adbd54806c95@lwfinger.net>
References: <63806E6D-2230-44FA-9DAE-0790F35C9F6C@rslp.org> <54db8ecb-b817-eda9-09ff-adbd54806c95@lwfinger.net>
Message-ID: <726093C0-6877-4427-B7FF-9DACE88B9982@rslp.org>
MIME-Version: 1.0
Autocrypt: addr=spikey@rslp.org; prefer-encrypt=mutual; keydata=
 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
 4Qc089s6dQvvEUqpg0m4qGc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_153057_451404_2C4E86A8 
X-CRM114-Status: GOOD (  14.42  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Here is my lspci:
00:00.0 Host bridge [0600]: NVIDIA Corporation MCP89 HOST Bridge [10de:0d60] (rev a1)
00:00.1 RAM memory [0500]: NVIDIA Corporation MCP89 Memory Controller [10de:0d68] (rev a1)
00:01.0 RAM memory [0500]: NVIDIA Corporation Device [10de:0d6d] (rev a1)
00:01.1 RAM memory [0500]: NVIDIA Corporation Device [10de:0d6e] (rev a1)
00:01.2 RAM memory [0500]: NVIDIA Corporation Device [10de:0d6f] (rev a1)
00:01.3 RAM memory [0500]: NVIDIA Corporation Device [10de:0d70] (rev a1)
00:02.0 RAM memory [0500]: NVIDIA Corporation Device [10de:0d71] (rev a1)
00:02.1 RAM memory [0500]: NVIDIA Corporation Device [10de:0d72] (rev a1)
00:03.0 ISA bridge [0601]: NVIDIA Corporation MCP89 LPC Bridge [10de:0d80] (rev a2)
00:03.1 RAM memory [0500]: NVIDIA Corporation MCP89 Memory Controller [10de:0d7b] (rev a1)
00:03.2 SMBus [0c05]: NVIDIA Corporation MCP89 SMBus [10de:0d79] (rev a1)
00:03.3 RAM memory [0500]: NVIDIA Corporation MCP89 Memory Controller [10de:0d69] (rev a1)
00:03.4 Co-processor [0b40]: NVIDIA Corporation MCP89 Co-Processor [10de:0d7a] (rev a1)
00:04.0 USB controller [0c03]: NVIDIA Corporation MCP89 OHCI USB 1.1 Controller [10de:0d9c] (rev a1)
00:04.1 USB controller [0c03]: NVIDIA Corporation MCP89 EHCI USB 2.0 Controller [10de:0d9d] (rev a2)
00:06.0 USB controller [0c03]: NVIDIA Corporation MCP89 OHCI USB 1.1 Controller [10de:0d9c] (rev a1)
00:06.1 USB controller [0c03]: NVIDIA Corporation MCP89 EHCI USB 2.0 Controller [10de:0d9d] (rev a2)
00:08.0 Audio device [0403]: NVIDIA Corporation MCP89 High Definition Audio [10de:0d94] (rev a2)
00:0a.0 SATA controller [0106]: NVIDIA Corporation MCP89 SATA Controller (AHCI mode) [10de:0d88] (rev a2)
00:0b.0 RAM memory [0500]: NVIDIA Corporation Device [10de:0d75] (rev a1)
00:0e.0 PCI bridge [0604]: NVIDIA Corporation Device [10de:0d9a] (rev a1)
00:15.0 PCI bridge [0604]: NVIDIA Corporation Device [10de:0d9b] (rev a1)
00:16.0 PCI bridge [0604]: NVIDIA Corporation Device [10de:0d9b] (rev a1)
00:17.0 PCI bridge [0604]: NVIDIA Corporation MCP89 PCI Express Bridge [10de:0d76] (rev a1)
01:00.0 FireWire (IEEE 1394) [0c00]: LSI Corporation FW643 [TrueFire] PCIe 1394b Controller [11c1:5901] (rev 08)
02:00.0 Network controller [0280]: Broadcom Inc. and subsidiaries BCM4322 802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
03:00.0 Ethernet controller [0200]: Broadcom Inc. and subsidiaries NetXtreme BCM5764M Gigabit Ethernet PCIe [14e4:1684] (rev 10)
04:00.0 VGA compatible controller [0300]: NVIDIA Corporation MCP89 [GeForce 320M] [10de:08a0] (rev a2)

Additionally, my dmesg is available on anonfiles. I'm pretty sure I sent you a link before as well but it may be down by now. 

https://anonfiles.com/Y2Ad37n8z6

> As modern wireless is highly dependent on systemd, are you sure that everything is setup correctly?
Ill try debian in the next few days.


On April 25, 2023 8:54:59 PM UTC, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>On 4/25/23 12:22, Pogprogrammer wrote:
>> Hello,
>> I contacted this forum earlier and I installed devuan. Initially it worked on kernel 5.10 when I installed b43-installer and just set it up. However after reinstalling due to unrelated inconveiniences, it is unable to scan for wifi networks. Dmesg contains no relevant information except DMA RX timeout and another timeout waiting for bitmask 01800000 on register 0F90 to clear. The logs then show that the driver was loaded with a feature called PNLS, qnd it loaded version 784.2.
>> 
>> Under uname it is debian 5.10.162-1 on 5.10.0-21-amd64 kernel.
>
>The list b43-dev used to be a good place to ask questions like this, but linux-wireless@vger.kernel.org is better now. I have sent this reply to that list.
>
>I understand that devuan is Debian without systemd. As modern wireless is highly dependent on systemd, are you sure that everything is setup correctly?
>
>The output about 783.2 implies that the firmware was loaded, but those error messages are of concern.
>
>Please run the command 'lspci -nn' and post the output. That will tell us what device you actually have,
>
>You say that dmesg has no relevant information, but I would like to see for myself. Please run the command 'dmesg > dmesg.txt', post dmesg.txt to some site like https://pastebin.com/, and post the link to the file in the next E-mail here.
>
>Larry
>
>
>
>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
