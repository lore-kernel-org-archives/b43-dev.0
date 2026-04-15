Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5816DF433CF
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 22:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fegf3Z1uL0dzwpknDjj/UVVTqEN1r4FygCTdizDHG9c=; b=hSyHbZFuYf9+Pr
	VHdTNfrJ5b8wpkEsrkszKJ4e3s8qAodV/t3Kqe1t6Du2sw0j9b6v4ay9LEiFiTzl3Z8Uzddrit1aI
	/xPLkzIhGXtLEKKxS5UvPQCe5gcej70/Q7r/NTDGF9z+KHC5XANMD+0n1btwqRHaeyKzttccgh9jX
	pF5v1bOBJG5Jw2BGVP/lc7ylH0yGGZhhYE8xhwbktSHqEMxIBRwYBrvbfKCyzmU2k2IQPjW5uyq2N
	oAIy18MqMPg2bKdzJxuCOKXjZMHn2YZjOLifgrsXkIiZkuG1W7xH7DGw2oI9HHhDeOSihgx0XKp1x
	kKPS9qVHyM84gRyg+xqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8et-00000001gqw-0aGh;
	Wed, 15 Apr 2026 22:24:31 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8eq-00000001gq2-3TJM
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 22:24:29 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so96404665e9.0
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 15:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776291867; x=1776896667; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I4P/KPSPk79n8En4cUv+2weHLeKZt0NTU8vFr8mQscA=;
        b=hiKfAne45g8lPGfilM1KY7RE29Wm2NBjbd/mWhKW0ojAEqLYeRg+wBHu9VMbgrebx0
         3y8ro1J1+F1ypFRbZJwuL90cWB7sZ0tDTqY1S48OCc4nMo9D2Io+dSjZkOH1wcCQNeol
         dvLTujvxcsXsVYJhjwsvfEEz5zuaLOIenwh2My5Qnja9Z0fU+08XJJ18hwztaQTSjyvt
         /idQ2dtspNwjH2dK1qrgKlxC2Gv7h7d5nQMXKiEQU+sbFIW7s2sf7VauBx1mbY0SlvFL
         5HLF4gAk+WQ5ea/EBeJ50p29MaE4u98pmD/Px9ywq4oDM37uWnFT0VbBqOzkx+H+mjW+
         uFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776291867; x=1776896667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4P/KPSPk79n8En4cUv+2weHLeKZt0NTU8vFr8mQscA=;
        b=aruIzkmJUtwaWCeoemkq14sIycEYjhbzLATou9cYQgf6I9ruUIbFzWCoxW7w/or9Mk
         IPV2sWa3YzK/j/OFhh/g0ThO9Ks76CSPQhOMdLq52UWR0qXwqtHgr9kCoOKJ35eoXEfm
         DPGCrN5bhXMRxMAryIfjrcDmu0kALDKWiw408oy3dFzH+MZ4+tom4gemxP+ulhGXODOb
         XN7NI/WWB2zK9m/U/QSlQMa+GHVGO+EnPnIumA7Bhd+MOG9onVghN+NrXhxGYdreSFKd
         Jv/Mp9Yg/zw2VohR6j+SJXyWn6HzI+qgW84vBK1z5nh/+oqlVeZuI3M6h5qS9GPGRQwB
         OTbw==
X-Forwarded-Encrypted: i=1; AFNElJ80plzlMsEjlYtRFfcEL3p/KeVl6V51Orv7P3CosdU3HcSGjEz3DwlruQ4jal1nwRdawl/a5uMz@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4ewpueCbfVsPbcqjuMSuBHRT8WRXwfoUJ2q6FyHCdB4cL83cG
	lruWIqB6Cu7EAfAjJzOToIS1Mv/n+NjwxSctSZmfnKm8tnAHiX/RvYI=
X-Gm-Gg: AeBDiesGUYyaR2wEvNO0kfQT/LaLP1DXOlCXvaeF2DB2Q1YTiZjGwa7G2dj2sy3z1QN
	AyzDhOftzIW/C6O+8nkhA1fGhpBbK4S8GXJbdNHzXrTScO8mtVyhXVs0zgkZc6jsnqBDWao9/GW
	12dEy3uMPOwJj1ZS45miifoFtVFt5ihSxhj9qAFjL7hq7WWZYNSgSBGvhUjWgnFltgSk3dhzxv6
	5hqw0V1CR23diK0yk29rRfy5RuIVNttzOLdo1vP9ZrGvCSwIGQgdphMfu04bw2a8Rf8IcTxdHAD
	7WEinQsasBDfW5LDvInger9Zzzj+Jfd8wtNZ1viuY5dC9CDmRDFww84rx/pYiWSnbz2wZvSpLlK
	l6DallfWcgYbvK4SP6xykIsf9hTq2AdTtlutrCn6PB3wgLRu5hBYtYRcqMKUfk58QWtroU4h9LA
	4LXVg=
X-Received: by 2002:a05:600d:12:b0:485:2ce2:4c87 with SMTP id 5b1f17b1804b1-488d67df3f9mr262213745e9.4.1776291866925;
        Wed, 15 Apr 2026 15:24:26 -0700 (PDT)
Received: from debian.. ([2001:41d0:303:db6b::])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f5813954sm1896615e9.3.2026.04.15.15.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 15:24:26 -0700 (PDT)
From: Tristan Madani <tristmd@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] wifi: b43: fix OOB read and infinite loop from hardware-reported values
Date: Wed, 15 Apr 2026 22:24:23 +0000
Message-ID: <20260415222425.1544638-1-tristmd@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_152428_874400_72317E91 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
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

From: Tristan Madani <tristan@talencesecurity.com>

Hi Johannes,

Note: this is a v2 resubmission. The original was sent via Gmail which
caused HTML rendering issues. This version uses git send-email for
proper plain-text formatting.

Two issues in b43 where hardware-reported values are used without
bounds checking:

Proposed fixes in the following patches.

Thanks,
Tristan


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
