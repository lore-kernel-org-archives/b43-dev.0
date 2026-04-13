Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63AFAEBFD2F
	for <b43-dev@archiver.kernel.org>; Mon, 13 Apr 2026 10:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NWcfsetL1aw9j+QunXwUz4J4pMtLUQ1MY9LCW9aCsgw=; b=RbHZ75/mdxc9Cg
	RwZMHwJCt4/AK/qSYzyi3BlqJtyTOZKGkN0l7EHae78awfC8gBcMiHLncFic4ZBy4hjzkclbNtrI4
	EKOd67x7gK/QbmXsjhyaJ4gp+J9GBcz3iLvJBFx21jg7LuaBAK0fdqT+t0tC27FyXubdWR1bB5PdP
	pwkBVI6DmJTIg+eKHU7/xxjM08Z0NwPTrFR//jgGiM5Kln5hCK9XIS/CML/ZIYXajXkwfs6MuYgy9
	2M+8ZtGwe95Zzk9XuhDFgyPwf8/hQMsNYdhow3wDjV+xts8ZJXAb1ReJZYFcj0e5QT+KQF6Etj2Hp
	Bry93nf8/Sa2KWJ7oVFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEIt-0000000FTXA-2qYc;
	Mon, 13 Apr 2026 10:14:03 +0000
Received: from [51.75.73.133] (helo=mail.biztropro.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEIn-0000000FTWo-1O3r
	for b43-dev@lists.infradead.org;
	Mon, 13 Apr 2026 10:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biztropro.pl; s=mail;
	t=1776074914; bh=9IbU8FDEXZ5C03SGTj2CqaTjWFt6EKuBT9STFRIwPLE=;
	h=Date:From:To:Subject:From;
	b=JWMaWXZ6X3hESft7AFkeT+tznmslHrL00hIEt6X2JaQ5SOJeuc8cPU9GTYUk4Lt8z
	 b1fGJ2pFK+Qrhs7CL15J6O1g5VscpHLWFphBFTJObmMv27nf9WEtOa6vnUpbsaP1BZ
	 Aiou74klVXWHldHGKiKBjrdhTQRvxJ31pf3AyB9knJ7y8vxw4IL6qru4DtxKW3vfzV
	 SLVRFCzm+ksfjhteU3Vh7FEZfPArorCweOBrffGMabrWcJ0wMcu6kyCSzQpVCsZ4Oz
	 a+Dvu0sucHw/Ah55J5IlXCLCNkHJeqyx1ih5DFoWWhxCsBYcMmBY5YD7zLjGLceZT0
	 /QcZhMGUBGvNA==
Received: by mail.biztropro.pl (Postfix, from userid 1002)
	id 09894403B5; Mon, 13 Apr 2026 10:08:27 +0000 (UTC)
Received: by mail.biztropro.pl for <b43-dev@lists.infradead.org>; Mon, 13 Apr 2026 10:08:23 GMT
Message-ID: <20260413100001-0.1.11.7oa7.0.ikbe4d6a3s@biztropro.pl>
Date: Mon, 13 Apr 2026 10:08:23 GMT
From: =?UTF-8?Q?"Julia_W=C3=B3jcik"?= <julia.wojcik@biztropro.pl>
To: <b43-dev@lists.infradead.org>
Subject: Pozycjonowanie- informacja
X-Mailer: OpenEMM V2015_R3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_031357_612595_7E17C87E 
X-CRM114-Status: UNSURE (   1.52  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKamFracWbIGN6YXMgdGVtdSB6Z8WCb3NpxYJhIHNpxJkgZG8gbmFzIGZp
cm1hLCBrdMOzcmVqIHN0cm9uYSBpbnRlcm5ldG93YQpuaWUgcG96eWNqb25vd2HFgmEgc2nEmSB3
eXNva28gdyB3eXN6dWtpd2FyY2UgR29vZ2xlLgoKTmEgcG9kc3Rhd2llIHd5a29uYW5lZ28gcHJ6
ZXogbmFzIGF1ZHl0dSBTRU8gem9wdHltYWxpem93YWxpxZtteSB0cmXFm2NpCm5hIHN0cm9uaWUg
cG9kIGvEhXRlbSB3Y3plxZtuaWVqIG9wcmFjb3dhbnljaCBzxYLDs3cga2x1Y3pvd3ljaC4gTmFz
egp3ZXduxJl0cnpueSBzeXN0ZW0gY29kemllbm5pZSBhbmFsaXp1amUgcHJhd2lkxYJvd2UgZHpp
YcWCYW5pZSB3aXRyeW55LgpEemnEmWtpIGluZHl3aWR1YWxuZWogc3RyYXRlZ2lpLCBmaXJtYSB6
ZG9ieXdhIGNvcmF6IHdpxJljZWogS2xpZW50w7N3LgoKQ3p5IG1vZ8SZIHphcHJlemVudG93YcSH
LCBqYWsgbW/FvGVteSBwb3ByYXdpxIcgd2lkb2N6bm/Fm8SHIFBhxYRzdHdhIGZpcm15IHcKR29v
Z2xlPwoKUG96ZHJhd2lhbSBzZXJkZWN6bmllLApKdWxpYSBXw7NqY2lrCktleSBBY2NvdW50IE1h
bmFnZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0
My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
