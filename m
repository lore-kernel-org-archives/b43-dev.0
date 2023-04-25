Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA34EC6FD18
	for <b43-dev@archiver.kernel.org>; Tue, 25 Apr 2023 20:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ic+ByK57KY9lKc8Y1ULTDP4NV9B/JPEkE8NLjZ66rMQ=; b=3iBPSq+kUTQ+e5
	Dv1wXNHeTzepdzbYFrdpa9EsA3aA8AN6eSkfigYEHqNTWO6bzLZe37frNpxS3HdbXVC0hzRPmYrEx
	m6HTd2n4TiZZdaTJQRPwaCg0CSoX/dBQFL1+p566BbnNH7Qz/3INqqOt35UyBMxfRQ5dP1q9ZHnCb
	1e5f8thT51juUO8Qt4T0+YtkrN9DLcTm32PmGvABbAGILfG03gQnsHItq1AdQ8Wg3JJIEBOLuft9r
	Iv9Nr8AQ5y9qbq2snBIzfYJ8sHdlvCTak+loExEOTQEXpYCXcpQHatEUDLqIaSVBTVDDXUlkgc5Iq
	xMBAdaNdE0UJ/YX378ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prPgr-002CLf-0w;
	Tue, 25 Apr 2023 20:55:09 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prPgn-002CKx-07
	for b43-dev@lists.infradead.org;
	Tue, 25 Apr 2023 20:55:06 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-187de655f15so2535724fac.3
        for <b43-dev@lists.infradead.org>; Tue, 25 Apr 2023 13:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682456100; x=1685048100;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gC5oGO9f22IB3HcxCfqxv94q9h27SKxCh5uDMEn5eTo=;
        b=aK5owQQuAfm3D3SARcVWHJP3yM3C0Q3KTy92YZ1tYzBzaqT03rq19FlLPnUZ7DVU3t
         ysSMsRuNUUimGRxp2japbe1ydw9GKotlz5b5jXzQpeJ+C3L3aJwiufNO8CzSK7tKedek
         B/dlBbKuOPOyCRTpDlwPWRehmlk9E6RjoA0otUBc18feLG6iido/Bxr+8M8kBt1r3o4L
         oKP6vqzSFo8lrmxO+ZDwkPzP9kEkUj+Ty7ozA76onq2yZAIJQNOJgGwNzzASpRBXBJIh
         cmvw81i9PtsdXB3x+buLHNFqjPpIzCKcf1wQR31SIBO61xgB3siEfE005hBx7TePHgyr
         KqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682456100; x=1685048100;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gC5oGO9f22IB3HcxCfqxv94q9h27SKxCh5uDMEn5eTo=;
        b=jeGRYvy+/9W99jeyU9K/qguhVCE2P1XbCiIsIgUggfuxMuvPdE6Gat6F5hQcpo5NeY
         FvMzwYRY3vKrPGEnXkW4QJK/+xyhLoi80Pu+yvPtyd5e55G36qrko4IT1KM+R0CkAzSI
         zXtqDo4dduRsZk+sz/oCxS06d6F4m6uwDc/bQePz8QZiY5FlZukH6k+1E81eNB2WiBz3
         hftTXWvZfs9X1xrLmUURbT9PsHs8GvwftyHq5RBB4nyw4dDXTiEB9PUux1FQJHqRidVD
         oE7uXJydfY6Rkkr4AsmS3XxBuOWWDDwIayRgty4jzt48Tag72esBhFyPMkPLheQDakDV
         Rrkg==
X-Gm-Message-State: AAQBX9cBufRRjpAnHWOg78VB+ExcRQd85EmEahm5kEZ1NnrCVd/44tzS
	SSHYblt56eEKElN/Dn0IvPWOjQCZiac=
X-Google-Smtp-Source: AKy350Y/DmZ3s+v7GMMJn9LTkVTrsup1biL+WxrzvM8tcweetBPRh8+9PYCx3/0J8cP/Syv9bNUjtQ==
X-Received: by 2002:a05:6870:468f:b0:18a:ff22:1fa9 with SMTP id a15-20020a056870468f00b0018aff221fa9mr11373137oap.3.1682456100420;
        Tue, 25 Apr 2023 13:55:00 -0700 (PDT)
Received: from [192.168.1.119] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id m21-20020a056870a41500b0018459cc0f52sm5924636oal.24.2023.04.25.13.54.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 13:55:00 -0700 (PDT)
Message-ID: <54db8ecb-b817-eda9-09ff-adbd54806c95@lwfinger.net>
Date: Tue, 25 Apr 2023 15:54:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Macbook pro 7,1
Content-Language: en-US
To: b43-dev@lists.infradead.org, Pogprogrammer <spikey@rslp.org>
References: <63806E6D-2230-44FA-9DAE-0790F35C9F6C@rslp.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <63806E6D-2230-44FA-9DAE-0790F35C9F6C@rslp.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_135505_079880_94F7D235 
X-CRM114-Status: GOOD (  15.14  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On 4/25/23 12:22, Pogprogrammer wrote:
> Hello,
> I contacted this forum earlier and I installed devuan. Initially it worked on kernel 5.10 when I installed b43-installer and just set it up. However after reinstalling due to unrelated inconveiniences, it is unable to scan for wifi networks. Dmesg contains no relevant information except DMA RX timeout and another timeout waiting for bitmask 01800000 on register 0F90 to clear. The logs then show that the driver was loaded with a feature called PNLS, qnd it loaded version 784.2.
> 
> Under uname it is debian 5.10.162-1 on 5.10.0-21-amd64 kernel.

The list b43-dev used to be a good place to ask questions like this, but 
linux-wireless@vger.kernel.org is better now. I have sent this reply to that list.

I understand that devuan is Debian without systemd. As modern wireless is highly 
dependent on systemd, are you sure that everything is setup correctly?

The output about 783.2 implies that the firmware was loaded, but those error 
messages are of concern.

Please run the command 'lspci -nn' and post the output. That will tell us what 
device you actually have,

You say that dmesg has no relevant information, but I would like to see for 
myself. Please run the command 'dmesg > dmesg.txt', post dmesg.txt to some site 
like https://pastebin.com/, and post the link to the file in the next E-mail here.

Larry





_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
