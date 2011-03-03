From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 03 Mar 2011 09:52:40 -0600
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTi=nPjvDvN+EF08oey=PCKWH0=u2R0X813-GNsnh@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>	<4CFE538A.10808@lwfinger.net>
	<4CFE8934.4060803@hauke-m.de>	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>	<AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>	<AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>	<AANLkTikGKhhnVN+7S3HZpKj6q3ufpK2jniO92KMHR6JU@mail.gmail.com>
	<AANLkTi=nPjvDvN+EF08oey=PCKWH0=u2R0X813-GNsnh@mail.gmail.com>
Message-ID: <4D6FB948.2000902@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/03/2011 01:55 AM, Rafa? Mi?ecki wrote:
> 824 line is:
> [struct b43_dmaring *]ring = kzalloc(sizeof(*ring), GFP_KERNEL);
>
> Does anyone know why sometime we allocate 60b and sometimes 96b? It's
> always the same struct... :| Could be STA vs. AP related but... how? I
> don't see a way.

It depends on whether CONFIG_B43_DEBUG is defined.

As you hint at later, Chris's memory problem is not due to a direct allocation 
problem, but is due to indirect allocation of skb or some other type of buffer. 
Why they leak on his system, and not on mine is a puzzle.

Larry
