Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D847DCCF9E3
	for <b43-dev@archiver.kernel.org>; Sun,  2 Nov 2025 18:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2YZ1nTxXJ3PMlH0pUAhDYkpD88FRaSDTsUqVCkX7Wc=; b=GfdE94zK24G6lYhvU5aA7Gc+de
	RHqKNNCIl00KR/rgvWjy/a3g7DtGtBFcR4Sj6WlwKD9lyLq9h85/U0t9EPBY3GBtlLQ2USaL/ZPtK
	Wl+sj7BL1cmz09u3n0bMfLQj26iz5a30FQZRM+XyaY5NgkwJsd9FeFebEo+uOdQIK2qF8aKPQLSyY
	19eywnZMN4KvJigF81MiSX2/fKu71BFGWAH8h3isNW+d9oEB5lWj4YhStyXcCD2Y5OdjoY0mDu+SF
	26+EMvEyhoBQKOSTfIOtBsShR1/WCOcWfJ5fwZzotSTPcuAlqZ4To84U+7QONg40mqfPY1HtyJ8WF
	h32ySvcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFcXH-00000008imD-0QT8;
	Sun, 02 Nov 2025 18:10:39 +0000
Received: from bues.ch ([2a01:4f8:1c0c:6e7f::1] helo=mail.bues.ch)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFcXE-00000008ile-3KLH
	for b43-dev@lists.infradead.org;
	Sun, 02 Nov 2025 18:10:38 +0000
Date: Sun, 2 Nov 2025 19:07:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bues.ch; s=main;
	t=1762107031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MpYicsu1cWamEcqCUbeSatdE5GzMhSpI/fix3zjI7Do=;
	b=LU/JW8Wc6I6mSW/VJdhbQlJ07+RsBabnzdF94JJvT3g8Iu6ChASmPhXue0Z+jSV8cOU6fr
	BMRIF+LzdMK2fd/mxHG3wk9vkSLUFiBYB8ImVL4X1PdrH4hSZeQiPGAjuocpJ4Wa4ykJSy
	n9iTjCM75FCLIEf4Xz9hQMWX9sNZlh8Mov7HLNkSo78JXw5glAK/UAl17d22CIr/00Y3pr
	ye/xv+cIHxX9J+Q+1pQuxpdqjqBowljL1+bQdHDcx0sPFMkR8i3Z00f/kVBt7ZcINchuTk
	tAZ9NNNXGGaRp/PYAbTIR98UuoiQ3GagNJt2qVKbRBgmN+p/PN5h70clFR/ZkQ==
From: Michael =?UTF-8?B?QsO8c2No?= <mb@bues.ch>
To: "Zedequias Marin (DECO)" <dudecco@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Subject: Re: BCM4312 EEPROM corruption recovery help - HP Mini 110
 U98Z049.00
Message-ID: <20251102190715.317960fa@barney>
In-Reply-To: <CALaz+jkqX=JX5ODuSJTm0k_qokgYidQ5+Zu1vBuu-zmFZ6JWqQ@mail.gmail.com>
References: <CALaz+jkqX=JX5ODuSJTm0k_qokgYidQ5+Zu1vBuu-zmFZ6JWqQ@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_101037_010412_48A9C3F3 
X-CRM114-Status: GOOD (  11.26  )
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
Content-Type: multipart/mixed; boundary="===============4688682509714920521=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============4688682509714920521==
Content-Type: multipart/signed; boundary="Sig_//7Hj5KtT_B49Y1+2PMPTewt";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_//7Hj5KtT_B49Y1+2PMPTewt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 2 Nov 2025 10:27:10 -0300
"Zedequias Marin (DECO)" <dudecco@gmail.com> wrote:

> I found your 2011 thread about BCM4312 issues and need help recovering
> from EEPROM corruption.
>=20
> My Device: HP Mini 110
> WiFi Card: Broadcom BCM4312 802.11b/g LP-PHY (14e4:4315)
> Subsystem: Hewlett-Packard Company U98Z049.00
>=20
> Problem: I corrupted the EEPROM while trying to configure as WiFi
> repeater. The card is detected but no wireless interface is created.
> EEPROM shows repetitive FF/3F patterns.
>=20
> Request: Could anyone provide a known good EEPROM dump for BCM4312
> (14e4:4315) specifically for HP Mini 110/U98Z049.00, or guidance on
> EEPROM recovery?
>=20
> I have EEPROM backups and can provide diagnostic info.

Hi,

the PCI ID (14e4:4315) is stored in the wireless device's serial EEPROM.
If the EEPROM is corrupted, you need to find out which PCI ID it uses now.
You can do that with lspci -nn.
Once you found out which corrupted PCI ID your device uses, you can registe=
r this
new PCI ID to the b43 driver via sysfs to recognize (see PCI/sysfs document=
ation).

Then the driver will recognize your device again and you can flash the orig=
inal
serial EEPROM to the device. See b43-tools/ssb_sprom documentation [1].

[1] https://github.com/mbuesch/b43-tools/tree/master/ssb_sprom

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_//7Hj5KtT_B49Y1+2PMPTewt
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmkHndMACgkQ9TK+HZCN
iw7WNxAAqwQ/6lcqajfQmkthAZR7/cph0khJChpdhvDFvWt7R5cne6QjIiUZJJat
6OqdFGZFWOLkatjZoa7DdHaZY2Dmlr3DTVXqbaqIHojGPlKowVUPXdPYSR58jyTz
JkiFFTAAwm5PboUb1mLii7myvxbLavpTo78ICEAt1rzGwshKHtpJCfzB8/7U3oj0
zvVcVPyOjuIpoGUa7PRFdip5tROVka0oZVsMHTiYXh2G6j943kh+4PtvJefZli7e
Oo2db4p5UPt3CwqLgEqBqT8sHLe8AYdWm/7lDStDKq/ZOVy0Y2XBOfV4T7edUTWJ
829PZ9UT+olm1f0I1eVk5PaIx3DcueVT3Oo8p8MvswCj7oHOGrywb7WounPcvGUT
PYAZRwVpLw7h4glRZx69ZOvqVNUC1VdSI+XZ/grd9fcq9x+3XxTZ0ILSCHBXIn4p
OU6/1egUS/wdzfCxuZ+FxnsNSrLrmKl0nAQyr0/GxUZe4ENYIL2qQEk/QMXt8cEi
ONv516VFeTzI4F1drd1UWIfzCX9AvBHNWczAU37Q0F0qkW/2KumpoNK8wEy02418
CL4lvVaYOAHF2sXXd6G2Z24AHhOdvBNxFerRzFpjO5iBe3F6e4w6GWPIsZvkz4KR
MCZURdznzrmpJPguIsi/VLOH+jQs9cmQK+9B6dbmLTwQoUDiFKc=
=/HYr
-----END PGP SIGNATURE-----

--Sig_//7Hj5KtT_B49Y1+2PMPTewt--


--===============4688682509714920521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============4688682509714920521==--

