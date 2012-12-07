From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Fri, 07 Dec 2012 17:12:35 +0100
Subject: [PATCH] b43-fwcutter: pack correct ucode for brcmsmac fw
In-Reply-To: <20121207141702.4313db7e@milhouse>
References: <1354830298-4160-1-git-send-email-hauke@hauke-m.de>
 <20121207141702.4313db7e@milhouse>
Message-ID: <50C21573.3040209@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 12/07/2012 02:17 PM, Michael B?sch wrote:
> On Thu,  6 Dec 2012 22:44:58 +0100 Hauke Mehrtens
> <hauke@hauke-m.de> wrote:
> 
>> brcmsmac supports only lcn-phy core with core rev 24 and no n-phy
>> cores with core rev 24, so pack the correct ucode image into the
>> firmware package.
>> 
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> 
> Thanks, applied.
> 
> Should a new version be released?
> 
Yes I thing a new release would be nice, as the wrong firmware will
probably not work and could cause people some trouble.

Hauke
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with undefined - http://www.enigmail.net/

iQIcBAEBAgAGBQJQwhVrAAoJEIZ0px9YPRMymAwP/0/4KPUe+YlLQWuUU9xxVqo9
c0Bzd8NAeahnJlZ0oRT9xW9GC1YiwvqPhdi2xrw/xWm75m9hBa0pYDzpLnbMlIH4
LhjICx+I+GVZBQAKOK/3RVDpZDylOoMIffPGSXe/FHr92TR8a0UaQWTDL4PojFiK
X6m/gQYYp6MQuwra36rwC+E/oEbJ8E+tYXpvhs+OR1qMFce8qrgsWusJDH2fbLu6
CgeprpKS2QauM/FoR9RAlVRBvri5dDSrL3xCdCrTw+F3BjyyVHw9DT8CVdnImLLI
qNnzxD+ATpWrahg+xJutKk+JLW5LbzUSXf5YpAfktXEIOiFD3hhPZ0a82lA1mqaZ
JKp6y83cPHihGyzBcoMWzpuoEK7t4MaVoy+4mwfawpoXSbsVtjrhVjR2rA2XoQ6F
rtdIz8lT9qgr1aZFYqBQx4x+ux59+ktXeKZVk7/hzp0zwhJj9HCLVk2flo7baY2+
AvCYOcq9qB3PW7BBaPFos82uKVsSzmEopKeGgyjmWu18t2RGH5zGztne2NNRbTv+
h3EiURv9Iq2xZfuraXSdKqhtbFnU+CRqlKIjJDElWQkXWfVq5wG88tJa01SQ9ru1
l6Tx1TxSt6QANyXHBTP9s17hGWHZfkXsLOj8lOdE3mH2Jk106X4RqFPRTwHwlWjI
AA9KNwpwiAO88HWWE/S1
=U0KB
-----END PGP SIGNATURE-----
