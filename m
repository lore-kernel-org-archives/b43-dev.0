From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed, 27 Mar 2013 19:37:36 +0100
Subject: [PATCH] b43: remove warning for LP-PHY with sprom < 8
In-Reply-To: <20130323174732.GE2873@Vault13>
References: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
 <20130323174732.GE2873@Vault13>
Message-ID: <51533C70.1070904@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 03/23/2013 06:47 PM, Christian Klein wrote:
> On Thu, Mar 21, 2013 at 08:28:40PM +0100, Hauke Mehrtens wrote:
>> The BCM5354 SoC has a build in ieee80211 core rev 13 with a
>> LP-PHY on it. This devices has a sprom version 3 stored in the
>> nvram. This patch removes the warning and uses the opo values
>> from the sprom as mentioned in the specs.
> 
> Hello Hauke,
> 
> thanks for the patch. I tried it on my Asus WL-520GU with BCM5354
> SoC. As expected, the warning goes away. But the router still
> becomes unstable as soon as I start WIFI. I tried both the 666.2
> and the 410.2160 firmware, but the results are the same. As soon as
> WIFI starts, the system becomes so unresponsive that it seems like
> it crashed. However, a previously started dmesg in a "while true"
> loop still works for some time, albeit it responds very slowly.
> After a few minutes the router will reset.
> 
> With 666.2, the oom-killer kicks in, too. I didn't see this in the
> dmesg with the 410.2160 firmware, but it may just be that the dmesg
> process died.
> 
> I attached the dmesg output for both cases. I'd be happy to provide
> more help in debugging and fixing this issue.
> 
The Asus WL-520GU just has very little memory I think that's the
problem. This patch just removes the warning, but I do not think it
will improve anything.

Hauke
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with undefined - http://www.enigmail.net/

iQIcBAEBAgAGBQJRUzxdAAoJEIZ0px9YPRMyWOYP/0UECbNA2VjyJu8WfNNgxJXx
jQBYznqFNmVIMqWrsJcYKlMwChUayBH7LsAw/LQ2WpCuccJFQac1QCBtj6ynWrJa
Fmmwdcr10MnltHpREXNdWnFjdoqXQUBvz+LD0BsN2RDsn9rpNc3SOuDQ2AB1aMyi
aSjDCA2ffSBgGDYwlbhb6Tf+w79sOqHlVtojg5qCxBDV4BxEvSj5b+OQdC3V79JX
S8q14+d+Q2xE6qXcDllaH51nDzNSS5+W0MtpExxEuAWItoetsRw6t4sjBG7tdyWQ
zPg/qaZgpblH/9UYxcDxZu5un1677oEKBPN3qnn6MHD/YggdY7KMWpd2poWntuF8
vwY9aZD5q10YHbOFLwnJ7xvIV+TRRJKS1eU7r1kpI25uvpRGKx/HGxyVTHs65llK
5IUiH/NEQyxc6vHzZBDSPxNaPQ8X5JFP3ZvW3ukxupIg6nnqivGTkNRckE0ry6lC
zEfOhKQwuTo85CIAs8B8sD8Qqv9kXrGhAfR9kVvVCNOTcnqy2kSuvDKJp32rvMcd
6vKNOmbC416G0lc0O9swzhpLv7Kv3g5Zwl9a2HFVECYWqtevtf6ia9QSJCnW4m87
O1YGH/jGisKbpkkk0O2895cdZ3kanrO0+HgWZxPGlDK56nJ9we/xh/5Kx/1TrdKS
nwgqEEUt1Ih9XgvStXpx
=YFCz
-----END PGP SIGNATURE-----
