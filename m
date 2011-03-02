From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 01 Mar 2011 19:01:03 -0600
Subject: [PATCH] b43-fwcutter: Add info for firmware version 508.1084
Message-ID: <4d6d96cf.bzaH6nkkqUvbfWXI%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Add details for extracting firmware from
http://mirror2.openwrt.org/sources/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2. A
firmware source of this vintage is needed for Rev 16 802.11 cores found in the
14e4:432b N PHY devices.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---

Index: fwcutter/fwcutter_list.h
===================================================================
--- fwcutter.orig/fwcutter_list.h
+++ fwcutter/fwcutter_list.h
@@ -340,6 +340,69 @@ static struct extract _bb8537e3204a1ea59
 	EXTRACT_LIST_END
 };
 
+static struct extract _490d4e149ecc45eb1a91f06aa75be071[] =
+{
+	{ .name = "ucode19", .offset = 0xFB3BC, .type = EXT_UCODE_3, .length = 0x9998 },
+	{ .name = "lp0initvals14", .offset = 0x999C8, .type = EXT_IV, .length = 0xB20 },
+	{ .name = "ucode16_lp", .offset = 0xCE5F4, .type = EXT_UCODE_3, .length = 0x9D90 },
+	{ .name = "ucode16_sslpn", .offset = 0xD8388, .type = EXT_UCODE_3, .length = 0x8936 },
+	{ .name = "lp0bsinitvals14", .offset = 0x9A4F0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "b0g0initvals9", .offset = 0x939F8, .type = EXT_IV, .length = 0xAE0 },
+	{ .name = "sslpn2bsinitvals17", .offset = 0x9ECE8, .type = EXT_IV, .length = 0x118 },
+	{ .name = "a0g1bsinitvals9", .offset = 0x95CF0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "b0g0bsinitvals13", .offset = 0x98C00, .type = EXT_IV, .length = 0x118 },
+	{ .name = "ucode16_sslpn_nobt", .offset = 0xE0CC4, .type = EXT_UCODE_3, .length = 0x7413 },
+	{ .name = "b0g0bsinitvals5", .offset = 0x92278, .type = EXT_IV, .length = 0x118 },
+	{ .name = "sslpn2initvals17", .offset = 0x9E020, .type = EXT_IV, .length = 0xCC0 },
+	{ .name = "ucode4", .offset = 0xA0A68, .type = EXT_UCODE_1, .length = 0x4E80 },
+	{ .name = "b0g0initvals4", .offset = 0x8FB08, .type = EXT_IV, .length = 0xE70 },
+	{ .name = "b0g0initvals13", .offset = 0x98078, .type = EXT_IV, .length = 0xB80 },
+	{ .name = "ucode17", .offset = 0xF1B50, .type = EXT_UCODE_3, .length = 0x9868 },
+	{ .name = "sslpn1bsinitvals20", .offset = 0xA0948, .type = EXT_IV, .length = 0x118 },
+	{ .name = "ucode14", .offset = 0xBF864, .type = EXT_UCODE_2, .length = 0x64A0 },
+	{ .name = "a0g0initvals5", .offset = 0x92398, .type = EXT_IV, .length = 0xA08 },
+	{ .name = "lp0bsinitvals16", .offset = 0x9DF00, .type = EXT_IV, .length = 0x118 },
+	{ .name = "pcm4", .offset = 0x10E9EC, .type = EXT_PCM, .length = 0x520 },
+	{ .name = "a0g1bsinitvals5", .offset = 0x938D8, .type = EXT_IV, .length = 0x118 },
+	{ .name = "n0bsinitvals11", .offset = 0x96990, .type = EXT_IV, .length = 0x118 },
+	{ .name = "n0absinitvals11", .offset = 0x96AB0, .type = EXT_IV, .length = 0x118 },
+	/* ucode minor version at offset 0x8fb04 */
+	{ .name = "a0g1bsinitvals13", .offset = 0x998A8, .type = EXT_IV, .length = 0x118 },
+	{ .name = "pcm5", .offset = 0x10EF10, .type = EXT_PCM, .length = 0x520 },
+	{ .name = "ucode9", .offset = 0xAB000, .type = EXT_UCODE_2, .length = 0x6268 },
+	{ .name = "a0g0bsinitvals9", .offset = 0x95BD0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "a0g0bsinitvals4", .offset = 0x91830, .type = EXT_IV, .length = 0x30 },
+	{ .name = "ucode20", .offset = 0x104D58, .type = EXT_UCODE_3, .length = 0x9C90 },
+	{ .name = "a0g1initvals5", .offset = 0x92DA8, .type = EXT_IV, .length = 0xA08 },
+	{ .name = "n0bsinitvals16", .offset = 0x9C1D0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "b0g0bsinitvals4", .offset = 0x90980, .type = EXT_IV, .length = 0x30 },
+	{ .name = "lp0initvals15", .offset = 0x9A610, .type = EXT_IV, .length = 0xD20 },
+	{ .name = "b0g0initvals5", .offset = 0x91868, .type = EXT_IV, .length = 0xA08 },
+	{ .name = "a0g0initvals4", .offset = 0x909B8, .type = EXT_IV, .length = 0xE70 },
+	{ .name = "sslpn0initvals16", .offset = 0x9C2F0, .type = EXT_IV, .length = 0xD70 },
+	{ .name = "a0g1initvals13", .offset = 0x98D20, .type = EXT_IV, .length = 0xB80 },
+	{ .name = "sslpn2initvals19", .offset = 0x9EE08, .type = EXT_IV, .length = 0xCB0 },
+	/* ucode major version at offset 0x8fb00 */
+	{ .name = "a0g1initvals9", .offset = 0x950E8, .type = EXT_IV, .length = 0xAE0 },
+	{ .name = "ucode5", .offset = 0xA58EC, .type = EXT_UCODE_2, .length = 0x5710 },
+	{ .name = "lp0bsinitvals13", .offset = 0x97F58, .type = EXT_IV, .length = 0x118 },
+	{ .name = "n0initvals16", .offset = 0x9B458, .type = EXT_IV, .length = 0xD70 },
+	{ .name = "b0g0bsinitvals9", .offset = 0x944E0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "ucode11", .offset = 0xB126C, .type = EXT_UCODE_2, .length = 0x74A8 },
+	{ .name = "lp0initvals16", .offset = 0x9D188, .type = EXT_IV, .length = 0xD70 },
+	{ .name = "ucode16_mimo", .offset = 0xE80DC, .type = EXT_UCODE_3, .length = 0x9A70 },
+	{ .name = "a0g0initvals9", .offset = 0x94600, .type = EXT_IV, .length = 0xAE0 },
+	{ .name = "lp0initvals13", .offset = 0x96BD0, .type = EXT_IV, .length = 0x1380 },
+	{ .name = "a0g0bsinitvals5", .offset = 0x937B8, .type = EXT_IV, .length = 0x118 },
+	{ .name = "ucode13", .offset = 0xB8718, .type = EXT_UCODE_2, .length = 0x7148 },
+	{ .name = "sslpn2bsinitvals19", .offset = 0x9FAC0, .type = EXT_IV, .length = 0x118 },
+	{ .name = "ucode15", .offset = 0xC5D08, .type = EXT_UCODE_3, .length = 0x88E8 },
+	{ .name = "lp0bsinitvals15", .offset = 0x9B338, .type = EXT_IV, .length = 0x118 },
+	{ .name = "n0initvals11", .offset = 0x95E10, .type = EXT_IV, .length = 0xB78 },
+	{ .name = "sslpn0bsinitvals16", .offset = 0x9D068, .type = EXT_IV, .length = 0x118 },
+	{ .name = "sslpn1initvals20", .offset = 0x9FBE0, .type = EXT_IV, .length = 0xD60 },
+	EXTRACT_LIST_END
+};
 /*
  * Links change, so let's not put them into the README.
  * I still put them here so we know where the file was obtained.
@@ -419,4 +482,13 @@ static const struct file files[] =
 		.flags		= FW_FLAG_LE | FW_FLAG_V4,
 		.extract	= _bb8537e3204a1ea5903fe3e66b5e2763,
 	},
+	{
+		/* http://mirror2.openwrt.org/sources/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2 */
+		.name		= "wl_prebuilt.o",
+		.id		= "FW15",
+		.ucode_version	= "508.1084",
+		.md5		= "490d4e149ecc45eb1a91f06aa75be071",
+		.flags		= FW_FLAG_LE | FW_FLAG_V4,
+		.extract	= _490d4e149ecc45eb1a91f06aa75be071,
+	},
 };
