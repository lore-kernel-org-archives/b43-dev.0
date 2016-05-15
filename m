From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 15 May 2016 19:09:14 +0200
Subject: [b43] don't unconditionally fall back to CCK if the rate is 6MB
 OFDM.
In-Reply-To: <CAJ-Vmom45Pb9X_1Zw6VdszZAiizZUUd=HbEFw0hFMmPFFSNbpQ@mail.gmail.com>
References: <CAJ-Vmom45Pb9X_1Zw6VdszZAiizZUUd=HbEFw0hFMmPFFSNbpQ@mail.gmail.com>
Message-ID: <CACna6rx+MTfdXd_UV_fJQacRr7Sr0RCvnCx1ODL7T5RSWZP8ig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adrian Chadd <adrian@freebsd.org>
Cc: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

Hi,

Unfortunately your patch is malformed and I couldn't apply it locally.
It seems your mailer broke lines longer than 80 chars and there are
some wrong indents in the description. After fixing up some line break
I got following commit in my git log:

Author: Adrian Chadd <adrian@freebsd.org>
Date:   Sun May 15 07:23:25 2016 -0700

    don't unconditionally fall back to CCK if the rate is 6MB OFDM.

    Author: Adrian Chadd <adrian@freebsd.org>
    Date:   Sun May 15 07:15:54 2016 -0700

        [b43] don't unconditionally fall back to CCK if the rate is 6MB OFDM.

        Check the current PHY operating mode (gmode) to see if we should
        fall back from 6MB OFDM to 11MB CCK.  For 5GHz operation this isn't
        allowed.

        Note, the fallback lookup is only done for RTS rates; normal fallback
        rates are done via mac80211 and aren't affected by this change.

        Signed-off-by: Adrian Chadd <adrian@freebsd.org>


Please fixup these problems, send patch to yourself, save it and see
if you can apply it with "git am" this time. If that works, please
resend to the mailing list.


On 15 May 2016 at 16:23, Adrian Chadd <adrian@freebsd.org> wrote:
> Author: Adrian Chadd <adrian@freebsd.org>
> Date:   Sun May 15 07:15:54 2016 -0700
>
>     [b43] don't unconditionally fall back to CCK if the rate is 6MB OFDM.

Please use "b43:" prefix and fix indent.


>     Check the current PHY operating mode (gmode) to see if we should
>     fall back from 6MB OFDM to 11MB CCK.  For 5GHz operation this isn't
>     allowed.
>
>     Note, the fallback lookup is only done for RTS rates; normal fallback
>     rates are done via mac80211 and aren't affected by this change.
>
>     Signed-off-by: Adrian Chadd <adrian@freebsd.org>

Fix indent.


> diff --git a/drivers/net/wireless/broadcom/b43/xmit.c
> b/drivers/net/wireless/broadcom/b43/xmit.c
> index f620126..fbf0e92 100644
> --- a/drivers/net/wireless/broadcom/b43/xmit.c
> +++ b/drivers/net/wireless/broadcom/b43/xmit.c
> @@ -205,7 +205,7 @@ static u16 b43_generate_tx_phy_ctl1(struct
> b43_wldev *dev, u8 bitrate)
>         return control;

Unexpected line break.


>  }
>
> -static u8 b43_calc_fallback_rate(u8 bitrate)
> +static u8 b43_calc_fallback_rate(u8 bitrate, int gmode)
>  {
>         switch (bitrate) {
>         case B43_CCK_RATE_1MB:
> @@ -216,8 +216,16 @@ static u8 b43_calc_fallback_rate(u8 bitrate)
>                 return B43_CCK_RATE_2MB;
>         case B43_CCK_RATE_11MB:
>                 return B43_CCK_RATE_5MB;
> +
> +       /*
> +        * Don't just fallback to CCK; it may be in 5GHz operation
> +        * and falling back to CCK won't work out very well.
> +        */
>         case B43_OFDM_RATE_6MB:
> -               return B43_CCK_RATE_5MB;
> +               if (gmode)
> +                       return B43_CCK_RATE_5MB;
> +               else
> +                       return B43_OFDM_RATE_6MB;
>         case B43_OFDM_RATE_9MB:
>                 return B43_OFDM_RATE_6MB;
>         case B43_OFDM_RATE_12MB:
> @@ -438,7 +446,7 @@ int b43_generate_txhdr(struct b43_wldev *dev,
>
>                 rts_rate = rts_cts_rate ? rts_cts_rate->hw_value :
> B43_CCK_RATE_1MB;

Unexpected line break.


>                 rts_rate_ofdm = b43_is_ofdm_rate(rts_rate);
> -               rts_rate_fb = b43_calc_fallback_rate(rts_rate);
> +               rts_rate_fb = b43_calc_fallback_rate(rts_rate, phy->gmode);
>                 rts_rate_fb_ofdm = b43_is_ofdm_rate(rts_rate_fb);
>
>                 if (rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
>
