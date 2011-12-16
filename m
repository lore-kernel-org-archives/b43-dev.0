From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 16 Dec 2011 13:04:39 -0600
Subject: [RFC] b43: Rearranging functions in phy_n.c
In-Reply-To: <CACna6rxEyGbxq813UW8RvzaysCd0jCawYZ0G6eN7XiAQOykTig@mail.gmail.com>
References: <CACna6rxEyGbxq813UW8RvzaysCd0jCawYZ0G6eN7XiAQOykTig@mail.gmail.com>
Message-ID: <4EEB9647.9080208@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

On 12/16/2011 12:55 PM, Rafa? Mi?ecki wrote:
> Hey,
>
> The order of functions in phy_n.c is really messy. I wanted to collect
> related functions, fix order (dependency) and name goups via comments.
>
> Is there anything I should know? Patches are going to be huge, tons of
> lines moved around the phy_n.c :(
>
> Are there any objections against that? Any suggestions if I should
> post one huge patch or few smaller ones?

Several smaller ones always help the reviewer. I would vote for that option.

Larry
