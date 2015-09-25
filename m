From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 25 Sep 2015 05:40:50 +0200
Subject: b43 with Kernel 4.1?
In-Reply-To: <CABC5Cq+ecoDYz2kq9rF9_XNRDP1bKT=TcnqQvMQAd4WbPxUgmw@mail.gmail.com>
References: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
 <55F75EE9.6070304@lwfinger.net>
 <CABC5Cq+ecoDYz2kq9rF9_XNRDP1bKT=TcnqQvMQAd4WbPxUgmw@mail.gmail.com>
Message-ID: <CACna6rwh0Ta2WbyVD2Zi_jKvof=BPcLV4h9ux-C6SBWdDneobA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 24 September 2015 at 20:00, Wifi User <mywifiismycastle@gmail.com> wrote:
> Do you happen to have a clue where I'm doing something wrong?

You're trying to use obsolete API (iwconfig). Just stick to nl80211
(it's used by "iw" tool and wpa_supplicant with "-D nl80211").

-- 
Rafa?
