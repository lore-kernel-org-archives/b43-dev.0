From: yhager at yhager.com <yhager@yhager.com>
Date: Thu, 22 Apr 2010 09:12:32 -0700
Subject: System freezes with 2.6.33
In-Reply-To: <4BCDDF5C.2040901@lwfinger.net>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
	<20100420143358.GA1990@happy.exit>
	<20100420155140.14443.qmail@stuge.se>
	<20100420180704.74972858@Mobile-Workstation.localdomain>
	<20100420162751.25907.qmail@stuge.se>
	<4BCDDF5C.2040901@lwfinger.net>
Message-ID: <20100422161231.GA1941@happy.exit>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12:07 Tue 20 Apr     , Larry Finger wrote:
> Yuval: If you are willing to generate your own kernel, please set
> 'CONFIG_B43_FORCE_PIO=y' in your configuration. That will skip DMA
> completely.
> 
> Larry
> 

I have tested the same kernel, with CONFIG_B43_FORCE_PIO=y. The
results are mostly the same. Full system freeze. Turning the radio off
avoids the freeze. Turning the radio on would not immediately freeze -
only when I tried to connect to a wireless network it did. 
I also enabled CONFIG_B43_DEBUG, but no messages on the console that
would testify a problem.

--yuval
