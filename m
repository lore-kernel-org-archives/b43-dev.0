From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 26 Jul 2012 09:37:55 +0200
Subject: [PATCH V3] b43: be more user friendly with PHY info
In-Reply-To: <CACna6rwNcC38OtKmOC-dAU6BZgrTHoLrf9Ezav5CFUJRRXVUTw@mail.gmail.com>
References: <1343283361-4050-1-git-send-email-zajec5@gmail.com>
 <CA+XFjiofydQef-7GaUvZKXrH8Wx1sb1mh5j2jTHxh5bvd6NK5w@mail.gmail.com>
 <CACna6ryQ4eV62Fsjn6jBOVasu2BX4C=CxRz_TacVVQ4MVJUxrA@mail.gmail.com>
 <5010E243.6000807@fisher-privat.net>
 <CACna6ry-god2wr60t0c9WvaOBA_X=DK7j5xDU7r7R6mUFYKV3Q@mail.gmail.com>
 <5010F284.1040808@fisher-privat.net>
 <CACna6rwNcC38OtKmOC-dAU6BZgrTHoLrf9Ezav5CFUJRRXVUTw@mail.gmail.com>
Message-ID: <CACna6rzpuAuOTq6j6fma0PRM-GB4nA5Hb=vmtynNdbin3LjOkg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/7/26 Rafa? Mi?ecki <zajec5@gmail.com>:
> Yeah, but I can't use sprintf on locally-declared (inside function)
> char array. Well, I can, but I can't result such an array.

s/result/return/


> So the solution is to declare char array in called, and pass that
> array (and it's size) to the b43_phy_name.

s/called/caller/

-- 
Rafa?
