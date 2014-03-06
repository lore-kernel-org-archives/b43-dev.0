From: Matthew Garrett <mjg59@srcf.ucam.org>
Date: Thu, 6 Mar 2014 06:42:31 +0000
Subject: b43 register dumping/setting
In-Reply-To: <CACna6rzSdzfqBnm1YHQEyThO6M2raDKD6Y9jwtUhzXr+CtLq9w@mail.gmail.com>
References: <20140306014015.GA19521@srcf.ucam.org>
 <CACna6rzSdzfqBnm1YHQEyThO6M2raDKD6Y9jwtUhzXr+CtLq9w@mail.gmail.com>
Message-ID: <20140306064231.GA9275@srcf.ucam.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Mar 06, 2014 at 07:30:20AM +0100, Rafa? Mi?ecki wrote:

> First, please note BCM4331 is using BCMA instead of the older SSB.
> Second, there are plenty of registers you may need to dump. BCMA bus
> has multiple cores, every core has it's agent/wrapper core. You should
> probably dump registers of PCIe, ChipCommon and 80211 cores. To make
> that more tricky PCIe and 80211 cores have few sets of indirect
> registers.

Awesomes. I'll see what I can figure out.

> As a quick test: did you try pio mode? I'm not even sure if it used to
> work with BCM4331, but it's easy to try. Just b43.pio=1.

On the plus side, no corruption. On the down side, no packets. I don't 
get any scan results and never associate, so probably not an entirely 
fair comparison.

-- 
Matthew Garrett | mjg59 at srcf.ucam.org
