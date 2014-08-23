From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Aug 2014 18:23:43 +0200
Subject: B43 driver problem
In-Reply-To: <53F8B4FE.3090600@hauke-m.de>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <CACna6rwkJRKp_cxVPEkJuwV7OVQf0frP1q5RLc9+oWRVN0P+Dg@mail.gmail.com>
 <CA+FnnTy2LENG+W_oXvwKKehHfibmjE3MziRgdNEzOMTG1CRTVg@mail.gmail.com>
 <53F8B4FE.3090600@hauke-m.de>
Message-ID: <CACna6rxXkb2omRci7ZWD+-MruqZDRx2m1Bv0cGWVnYKv7gOaCA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 23 August 2014 17:36, Hauke Mehrtens <hauke@hauke-m.de> wrote:
>> [    1.366477] Broadcom 43xx driver loaded [ Features: PL ]
>
> With this config the Features should be: PNL
>
> You are not using the configuration you posted.

My guess would be that there is some old module in initramfs that gets loaded.

-- 
Rafa?
