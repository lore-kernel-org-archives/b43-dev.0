Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A26D2C7618E
	for <b43-dev@archiver.kernel.org>; Sat, 22 Apr 2023 00:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4+yqcNo+wbYFSyMogGtIH9R8lXyeMsQusR9JkySGtI=; b=YCKJBK8Dj4xXvd
	AdIvy1X1E5hnAdaawzdxGyplyDEBVptiZZwcmhCno5s0Jf0C6b/wG8RmqnV+sEW34260n9dlkmk3D
	BetEQCgmSo/Nj4f2IIg6JpZMCI8spJdF2CmXc0s6n/Fre5oP2dIH92pf4+wN2yfFr4QRHbcauQRS0
	3uQ5AKYqvncREZcNFvbGhCL2PyOs17W+mHOgRv0HlH/ExoRC0tHpyN0DA7mopTcq7iZH97tS4YvK5
	7z/SEcP9eew4EJyqEzDnriDGfiOoMaU2l+KAsU2pkZ+Rm0ckXlbVQ4XOdva+kLDzW9QjVaR8D9rhY
	HHu6W5U7javkU+Pj4zfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0kk-00C7br-13;
	Sat, 22 Apr 2023 00:05:22 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0kf-00C7bJ-0c
	for b43-dev@lists.infradead.org;
	Sat, 22 Apr 2023 00:05:18 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-187b70ab997so13982333fac.0
        for <b43-dev@lists.infradead.org>; Fri, 21 Apr 2023 17:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682121915; x=1684713915;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YL1SLPo3YbLuC2v47HggCAKWIJ5vWc/sJO+qhAWyFjM=;
        b=dE/B9Ve4nBwkCh1JxClTx/CKcIxG/7Ir89bTziXDezaJG2q70U4FCAwGGiS3Fzx5Mt
         DCTpgkIetc/w/+D6CYxrgMFtxbWv0bHzRZQugwc/250RUV2CtRZMLBpXbRJF/S5dXzJD
         XTtJU9v6yHKglfdghUxKJEw5K+GkJEcjvTpr7Dvv2Xmhcr53gTn8PBt8hI/ovtIDSMhe
         RDunTCvKNzYLqJysEAwtMb1+MEZt1AuCfQMQsHqBjY1ZSAIoZ/44UdkX4IdnBSZE7dTD
         GG2OMO5o5a0wmhZuCTnRK/tAH8Wge4WfAKmucmqml7UlJGUkxRgMeH143XKqT3Gw2GdA
         o7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682121915; x=1684713915;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YL1SLPo3YbLuC2v47HggCAKWIJ5vWc/sJO+qhAWyFjM=;
        b=ISiyqkACckEP1AcRKKrFdsQjVS8N7zBudHF+Ecz4LdudTflYYkg/ho9Wrz7ynNuL2K
         EkSBAGVW0QIf7KuYQx3PyfcsTWkGgpT6rEyomD3Y/jjd/8OQCHpHT9xBAlycF75iXsCh
         pH/jkosAkkj5UEHNWuPLccblqwysKlXOO+DGnVPsH1zP3ZSuq0q695L284SQI8r9W07K
         NG/+XqlwVYjdMHXWC/j8gbph3WOwWb1VYpVH+NCn4tLWb+vX4NNuhinnnuCTxIjVcXSt
         DrEdqYPhWvJInmXnEidVSYRnyhhc5CGr+kQEljnvMvOCWQzmXcIXmGFhWz+Dm57DL3lJ
         sc8A==
X-Gm-Message-State: AAQBX9c8J1F5j5u17wCZIDrCtW4OkH2HA7FExB68+XrYFoqoo1aMewJl
	MGaedMu3h/hkaH7Zl34w4p4=
X-Google-Smtp-Source: AKy350Z8KaQO7x8wUJqYDgWg0kgleMNYgJ8rjKcLyKAX8cJNaWCXGkl21VtZlQK4QoKl+QYfl4+fSQ==
X-Received: by 2002:a05:6870:659e:b0:188:1b8:33ee with SMTP id fp30-20020a056870659e00b0018801b833eemr5535533oab.21.1682121915651;
        Fri, 21 Apr 2023 17:05:15 -0700 (PDT)
Received: from [192.168.0.162] ([216.130.59.33])
        by smtp.gmail.com with ESMTPSA id v20-20020a056870365400b0016e8726f0d4sm2291160oak.3.2023.04.21.17.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 17:05:15 -0700 (PDT)
Message-ID: <19d8ea51-d37a-5446-fd7c-716e7e8b1aef@lwfinger.net>
Date: Fri, 21 Apr 2023 19:05:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: NetworkManager cant connect on Macbook Pro7,1
Content-Language: en-US
To: Pogprogrammer <spikey@rslp.org>
References: <50BB827E-7437-4E25-9F5F-636115EF2D20@rslp.org>
Cc: b43-dev <b43-dev@lists.infradead.org>,
 linux-wireless <linux-wireless@vger.kernel.org>
From: Larry Finger <Larry.Finger@lwfinger.net>
In-Reply-To: <50BB827E-7437-4E25-9F5F-636115EF2D20@rslp.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_170517_251562_7A63CFD6 
X-CRM114-Status: GOOD (  15.19  )
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

On 4/21/23 18:11, Pogprogrammer wrote:
> Hello, I installed b43 and I get the error that DMA is not supported and it will be switched to PIO. This was a bug on kernel 2.6, but I am using 6.1+. My mac is partially supported according to http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/ and that may be part of the problem, but:
> I am on void linux and networkmanager can identify all the networks but if I connect I get errors like "not found network" or maybe "bad password".
> This is a fresh install and sometimes certain daemons just arent running, so here is my list:
> Dbus, dhcpcd, NetworkManager, udevd, wpa_supplicant as well as the agetty-tty[1-6].
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev

Your description of the problem is not terribly coherent, thus I will be 
requesting some more information.

DMA should be supported. It certainly works on my PowerBook G4 with a ppc32 
processor. I expect that a MacBook 7.1 has an Intel processor. If not, please 
enlighted me.

I would like you to run the command 'dmesg > dmesg.txt' and post dmesg.txt on 
some site where I can read it.

The b43 devices are certainly slow as compared to modern devices, but the one on 
my PowerBook certainly works.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
