From: Ruben De Smet <ruben.de.smet@telenet.be>
Date: Fri, 01 Nov 2013 10:55:40 +0100
Subject: BCM43228
Message-ID: <52737A9C.3020404@telenet.be>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi folks,

I'm currently running Broamcoms prorietary wl drivers, which were
running fine until I found a bug in the bluetooth part of it, which
panics the kernel at a certain position.
I don't know if it's a part in the GPL part of the kernel which
panics, or if it's in the Broadcom part, as the kernel is tainted by
the wireless driver and cannot be debugged that way.

lspci shows me this:
03:00.0 Network controller: Broadcom Corporation BCM43228 802.11a/b/g/n

My question: will b43 ever support this chip? If so, I'd be able to
give someone access to this computer for debugging purposes.
I'd give any help possible, though kernels and modules aren't my
domain yet.

Ruben De Smet
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBAgAGBQJSc3qcAAoJEPgmWogSE9wQHLwH/0RYHsHaZUML+nLcMM32OwkI
DmhXTKibCgPEmTfzsMF01sBeru6O2rYeXl2VY5tx6yoAS3fcje4p6EV9OlH4yzYv
Evi/XDZM8J/Xvjqhhgh1+UYsM1P7q+mejXAzDSvtkmdHD/PnOXY0Q+u3ezMGYEi0
9oX1PeSOnZSzAC6pahdN1ecE+GgrGEYEXPt5an8V42H5X1TGgqh8L1bWgWxs7jko
jzUZTjP5KcvTUdtAWJkBp9WbNhVEFlBeklYXtFC4sZberFNOE8ynk1m7CSbtscrj
lcEMbXehxtTXKY8UQDtg/A+KE6XFJTme/dn9PrpIGQF2hIu3QGtWfMTFBHvswRo=
=N7Qs
-----END PGP SIGNATURE-----
