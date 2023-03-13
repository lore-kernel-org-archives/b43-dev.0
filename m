Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B144C6FD19
	for <b43-dev@archiver.kernel.org>; Mon, 13 Mar 2023 17:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D6mb5+VB3NDa12BRjSr2ZQul3cKJzF5qAhlhxxbyYoo=; b=ZSNBpkR9tXVRpK
	ppI7MT+qi7p8K9ex+775DPb7IxXxREEHx4L1mu+Xf3vZqSheg5lSBstnKsX/EiIRCa2SXMXHSe/cY
	+J/JC1jWWlrBSzLH+a9kPdqn6GFMV4eXNBIBiKI3Vol/imFxiR2QCfWQW/nZGk7qYwqbR/bNMu5ea
	pdSqjiiyM3hDaMXNPmZ7QkeTOFYi1VNRIVp9WA9n6cA0KNxhuRHcfmiyDBuEEAKE3hCZsVsy+GI6e
	ARonaYP+YxEP2yXdXPYY/I0c9Kg4qQw0zQ7kO4si2vbtZRMZTqse6/YwaMnD7ZlPkrnA++9e6FqJn
	Q5Uo3ZDZCMbk7+urfI2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pblyU-0076uc-24; Mon, 13 Mar 2023 17:28:42 +0000
Received: from [103.30.145.160] (helo=defaultworkshop.klidefectmanagement.com.novalocal)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pblt9-0074e0-FD
	for b43-dev@lists.infradead.org; Mon, 13 Mar 2023 17:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asda.co.uk;
	s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
	Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=UyXNYCF3z6mK+rtXeYCU9FZNDfmaRC3AyccYa6YObg0=; b=t
	WXDf+d0nmGADqpPNCy3XQXRa3HhHcOb7zRJuPqFccuDNbRai95VhIcOyAjelX7kmUJFEI1/u3fQSu
	wRjtT+0we8s31cnWIu4ML6lZPx5YaFp1EkTQ9GOn5yNAEof0Lg92FgXzpzQxsIBYunJd6Ps4jKPmZ
	Pe+UG5gL2Fc3DPI0=;
Received: from ec2-52-11-215-80.us-west-2.compute.amazonaws.com ([52.11.215.80] helo=asda.co.uk)
	by defaultworkshop.klidefectmanagement.com.novalocal with esmtpa (Exim 4.94.2)
	(envelope-from <sales1@asda.co.uk>)
	id 1pblt7-0005Sa-9G
	for b43-dev@lists.infradead.org; Tue, 14 Mar 2023 00:23:09 +0700
From: ASDA Stores Limited <sales1@asda.co.uk>
To: b43-dev@lists.infradead.org
Subject: First quarter procurement order/enquiry
Date: 13 Mar 2023 17:23:08 +0000
Message-ID: <20230313152049.1506270DC6F8D6A4@asda.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_102312_236147_DC72849C 
X-CRM114-Status: UNSURE (   0.26  )
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
Reply-To: sales@asda-c.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Dear b43-dev
I'm a procurement manager  with ASDA Group (the owners of ASDA 
Stores) and your company product has caught our interest. 
Therefore, we request you send
list and prices of your hot selling items (products) for our 
evaluation/pick.

Soon as we receive your reply, we shall send you our company 
profile and buying proposal. You can also check our website below 
for detailed info of our purchase area and trading capacity.

Your immediate response E-mail:  sales@asda-c.com   shall be 
appreciated.

Best Wishes

Ms Stelle Montgomery
Purchasing Dept.
ASDA Stores Limited
Tel:  +44 7418367220
WhatsApp: + 44-7502985874
Website: www.asda.com

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
