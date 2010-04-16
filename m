From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 16 Apr 2010 10:38:53 -0500
Subject: BCM43224 802.11a/b/g/
In-Reply-To: <1271394900.2705.10.camel@localhost.localdomain>
References: <1271394900.2705.10.camel@localhost.localdomain>
Message-ID: <4BC8848D.8030608@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/16/2010 12:15 AM, Rodd Clarkson wrote:
> Hi All,
> 
> New to this list, but noticed that my card (a BCM43224) wasn't listed on
> the http://wireless.kernel.org/en/users/Drivers/b43 page (even though
> I'm sure it's going to be listed as supported)
--snip--
> 
> I'm not sure if dmesg is needed for this and it's quite a bit of text.
> Ask if you want it.

No, the dmesg output will not be needed. I have just updated the table
on the web page. At present, we do not support any N PHY devices. Quite
a bit of the code has been written and is in the wireless-testing tree;
however, not enough for it to work yet.

Larry
