From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 19 Feb 2012 21:01:49 +0100
Subject: [PATCH 04/11] ssb: add ccode
In-Reply-To: <20120219205016.742a4bad@milhouse>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
 <1329676345-15856-5-git-send-email-hauke@hauke-m.de>
 <20120219194923.566f3fe8@milhouse> <4F414D63.1070409@hauke-m.de>
 <20120219205016.742a4bad@milhouse>
Message-ID: <4F41552D.2020109@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Michael_B=FCsch?= <m@bues.ch>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 02/19/2012 08:50 PM, Michael B?sch wrote:
> On Sun, 19 Feb 2012 20:28:35 +0100 Hauke Mehrtens
> <hauke@hauke-m.de> wrote:
>>>> u8 country_code;	/* Country Code */ +	char ccode[2];		/*
>>>> Country Code as two chars like EU or US */
>>> 
>>> This usually is referred to as "alpha2". So we should name it
>>> like that, too.
>> I can not find any references to "alpha2" in the spec
> 
> http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
> 
OK, I will rename it.

Hauke
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQIcBAEBAgAGBQJPQVUWAAoJEIZ0px9YPRMyiJgP/i8PzgoVBhlPcUwdDwigbDVw
oUcRWdLs6Elo1cvfao0Txu3ntB02bT7wKn262AYgRUUPerp2CmvF9jEXziSLFV5L
/GEzkm2+yyM+dYNatL+6De9qNZGdzzJNR4lHZ/7aAFzE/0PY9Pg5OvY8cZdJDPb5
jQK97Vjdd1mfpFYpEJYUw24JOa/fF4+Ve/yHSjSJ3djf60h7i2GVWf/QBlQXNRc5
TEKb95wQUwXmGDjgkO41ZtmtN0XA506FzU5uy6kLFKTuiWM6EDcKQWhlfw+S90pR
7PpbyAvzLyZKpiOutV9SHgW0eimhFmEo9H7f3bwkBLDjkJKmEKrK3pqZ3pz8VQdK
JfOijxPnd91UAPUkIvDv7aFgrAt+HCYYq5T6KFsLvk4kLLX36Sgoxe3f+htBd2Mj
+as0i2xFBWniifAnPA1oWRGJsNvDAFDuix8XSaNqkz9RxCEZ+35KE4jw9rsqUwKJ
vYPmKZsen9YmI72N82eT/nww31Ppkc4p9JdvHn8qsa3G/QjA/fYm3r7ymOrOcA4o
Wb1MBx9584jukks1/HgVueUf77rj0q5A99bvuMuKpwrvtX0HlWBUdvG90oUJl5wL
cF0almhAj2oB4DfHaaAseFlq52WRF2VSXS296VZ8k7EZfnFELxtHrDXC7ku9jaut
92sDSHze8ron+1PmclEm
=BIVY
-----END PGP SIGNATURE-----
