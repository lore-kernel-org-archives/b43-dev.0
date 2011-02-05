From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 5 Feb 2011 12:39:41 +0100
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <AANLkTinSVSx_AZ=sc+f5UF_8WRRtnotXZxOdXU4YOEB8@mail.gmail.com>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
	<4D4C5595.7060903@lwfinger.net>
	<AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
	<4D4CC268.2080008@lwfinger.net>
	<AANLkTinSVSx_AZ=sc+f5UF_8WRRtnotXZxOdXU4YOEB8@mail.gmail.com>
Message-ID: <AANLkTi=ug=bqcegmE4an1zQCCHFFjtNJ7DxYSey6vkXx@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/2/5 G?bor Stefanik <netrolller.3d@gmail.com>:
> The device with PCI ID 0x4312 is called BCM4311 (dual-band) - check
> Broadcom's official brochure on BCM4311 (has a single-band and a
> dual-band version). Same for 0x4319 - it's actually BCM4318 dual-band
> (for example, the BCM94318MPAGH has this ID). The only BCM4312 is
> 0x4315 (also, there exists no "BCM4315", and while BCM4310 might
> indeed be real, it has nothing to do with PCI ID 0x4315). Apparently
> the correlation between PCI ID and chip ID only exists for pure G-PHY
> cards.

A look into a recent bcmdevs.h agrees with this. But the correlation
seems to be true for only a few devices, and one is a dualband chip
(the 43421):

/* PCI Device ID's */
#define BCM4210_DEVICE_ID       0x1072          /* never used */
#define BCM4230_DEVICE_ID       0x1086          /* never used */
#define BCM4401_ENET_ID         0x170c          /* 4401b0 production
enet cards */
#define BCM3352_DEVICE_ID       0x3352          /* bcm3352 device id */
#define BCM3360_DEVICE_ID       0x3360          /* bcm3360 device id */
#define BCM4211_DEVICE_ID       0x4211
#define BCM4231_DEVICE_ID       0x4231
#define BCM4303_D11B_ID         0x4303          /* 4303 802.11b */
#define BCM4311_D11G_ID         0x4311          /* 4311 802.11b/g id */
#define BCM4311_D11DUAL_ID      0x4312          /* 4311 802.11a/b/g id */
#define BCM4311_D11A_ID         0x4313          /* 4311 802.11a id */
#define BCM4328_D11DUAL_ID      0x4314          /* 4328/4312 802.11a/g id */
#define BCM4328_D11G_ID         0x4315          /* 4328/4312 802.11g id */
#define BCM4328_D11A_ID         0x4316          /* 4328/4312 802.11a id */
#define BCM4318_D11G_ID         0x4318          /* 4318 802.11b/g id */
#define BCM4318_D11DUAL_ID      0x4319          /* 4318 802.11a/b/g id */
#define BCM4318_D11A_ID         0x431a          /* 4318 802.11a id */
#define BCM4325_D11DUAL_ID      0x431b          /* 4325 802.11a/g id */
#define BCM4325_D11G_ID         0x431c          /* 4325 802.11g id */
#define BCM4325_D11A_ID         0x431d          /* 4325 802.11a id */
#define BCM4306_D11G_ID         0x4320          /* 4306 802.11g */
#define BCM4306_D11A_ID         0x4321          /* 4306 802.11a */
#define BCM4306_UART_ID         0x4322          /* 4306 uart */
#define BCM4306_V90_ID          0x4323          /* 4306 v90 codec */
#define BCM4306_D11DUAL_ID      0x4324          /* 4306 dual A+B */
#define BCM4306_D11G_ID2        0x4325          /* BCM4306_D11G_ID;
INF w/loose binding war */
#define BCM4321_D11N_ID         0x4328          /* 4321 802.11n dualband id */
#define BCM4321_D11N2G_ID       0x4329          /* 4321 802.11n 2.4Ghz
band id */
#define BCM4321_D11N5G_ID       0x432a          /* 4321 802.11n 5Ghz band id */
#define BCM4322_D11N_ID         0x432b          /* 4322 802.11n
dualband device */
#define BCM4322_D11N2G_ID       0x432c          /* 4322 802.11n 2.4GHz device */
#define BCM4322_D11N5G_ID       0x432d          /* 4322 802.11n 5GHz device */
#define BCM43221_D11N2G_ID      0x4341          /* 43221 802.11n
2.4GHz device */
#define BCM43231_D11N2G_ID      0x4340          /* 43231 802.11n
2.4GHz device */
#define BCM43222_D11N_ID        0x4350          /* 43222 802.11n
dualband device */
#define BCM43222_D11N2G_ID      0x4351          /* 43222 802.11n
2.4GHz device */
#define BCM43222_D11N5G_ID      0x4352          /* 43222 802.11n 5GHz device */
#define BCM43224_D11N_ID        0x4353          /* 43224 802.11n
dualband device */
#define BCM43225_D11N2G_ID      0x4357          /* 43225 802.11n
2.4GHz device */
#define BCM43421_D11N_ID        0xA99D          /* 43421 802.11n
dualband device */
#define BCM4315_D11DUAL_ID      0x4334          /* 4315 802.11a/g id */
#define BCM4315_D11G_ID         0x4335          /* 4315 802.11g id */
#define BCM4315_D11A_ID         0x4336          /* 4315 802.11a id */


It doesn't seem to be complete though; I have a 2G BCM4322 on
a BCM6358 board that uses the PCI ID 14e4:4322.

-- 
Regards,
Jonas
