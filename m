From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Thu, 14 Oct 2010 22:27:53 +0200
Subject: brcm80211 in b43
In-Reply-To: <840064.48426.qm@web111406.mail.gq1.yahoo.com>
References: <840064.48426.qm@web111406.mail.gq1.yahoo.com>
Message-ID: <AANLkTikX2BXn8mhSUJ9aMSVTWpWxWGfmxEWm7gdcoKTu@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Oct 14, 2010 at 9:51 PM, Ariel Pedraza <pedrazaa@yahoo.com> wrote:
> In the future the b43 driver will support the same devices that the brcm80211 driver does? just one universal driver pure FOSS...

No.

B43 only supports SSB-based devices; while brcm80211 is for SSB-less
ones. (Brcmfmac is yet another driver - for fullmac Broadcoms with the
exception of BCM4320, which is handled by rndis_wlan.)

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
