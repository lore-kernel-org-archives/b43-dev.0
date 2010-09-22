From: Luis R. Rodriguez <mcgrof@gmail.com>
Date: Wed, 22 Sep 2010 10:26:08 -0700
Subject: [PATCH] b43/b43legacy - Credit Broadcom with enabling the
	development of the drivers
In-Reply-To: <1285154078.4498.78.camel@i7.infradead.org>
References: <1284921651.24835.11.camel@i7.infradead.org>
	<AANLkTinoe86gtsMJMJ-jitj3yHo35FBdyiqbPKuUAe_R@mail.gmail.com>
	<AANLkTi=sbh-y73+VuEWQz8ni47zaeBXCBRQGUH=0j_Zr@mail.gmail.com>
	<4C97AFCE.3040806@wetwork.net>
	<AANLkTinEY2XeoA1WN8GRTdAcSebe+LUb-N9u7-zz_bpe@mail.gmail.com>
	<4C97D0B2.9080704@wetwork.net>
	<AANLkTim-69if8MdUtDnE+sDU0hCMUed6WGaPURCAy5W4@mail.gmail.com>
	<4C97D76F.1040601@wetwork.net> <20100921040122.17974.qmail@stuge.se>
	<AANLkTincBvTWQ=7_xHsdmg8E1q7DKstwkOLERm_SRKY0@mail.gmail.com>
	<AANLkTikMZQ6G0=hLAdehinM1LNo7NzVVEE4xbK6fU0yP@mail.gmail.com>
	<1285131914.14456.17.camel@maggie>
	<1285154078.4498.78.camel@i7.infradead.org>
Message-ID: <AANLkTikTtdYT8mPC8zU6YbsZtpwo7jGdYcR37jHay2Rc@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Sep 22, 2010 at 4:14 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Wed, 2010-09-22 at 07:05 +0200, Michael B?sch wrote:
>>
>> + ?Broadcom enabled the development of this driver, by providing all required
>> + ?hardware information in the form of binary software drivers.
>>
>> Let me rephrase the comment a little bit. I will not change the
>> meaning :)
>>
>> + ?Certain lawyers are wrong, and this driver proves it.
>> + ?http://tinyurl.com/ybl83uw
>>
>> That's basically all it says. No more, no less.
>
> Fairly close :)
>
> But it's a little more than that. It's more like:
>
> ?+ I know you're scared that the world will end if you 'enable' this
> ?+ driver in any way... but *look* -- you've actually been 'enabling'
> ?+ if from the very beginning, and you haven't been eaten by a grue
> ?+ yet. So please get over your stupid paranoia, and work with us
> ?+ sensibly for once. Which would include:
> ?+ ?- letting us have permission to distribute the firmware.
> ?+ ?- giving us the odd hint about how to fix/improve the driver.
> ?+ ?- merging your new driver with the existing one, if appropriate.
> ?+ ?- etc.
>
> It does us no harm to make it explicitly clear that the driver
> development was 'enabled' by what Broadcom published. And if it has
> *any* chance of showing the paranoid factions in Broadcom that their
> fears are baseless, it has the potential to be helpful.

There even some more technical arguments which can help clear the fuzz
from paranoia. There are two options:

  1) Do nothing

      This was already done and when this is done this actually turns
out putting
      a vendor in the worst situation since it creates huge
independent motivation
      by the community to reverse engineer drivers. This yields both
lower quality
      drivers and likely regulatory-broken drivers.

  2) Work upstream

      You proactively accept that although security through obscurity
      can hold back a few people, with enough motivation its pointless, and
      you can actually end up in better place by working with proper
technical solutions
      to the regulatory problem by engaging with developers

Working upstream also preps you to start considering future changes we
can use in legislation to help innovate, enhance and enable wireless
communications further, which is really the purpose behind regulatory
agencies. The trouble behind these problems is the technical solutions
are not clear -- but I believe we are leading this with the work we've
put into the Linux kernel, and technically, this can also be reused on
other Operating Systems, and I'm encouraging that.

  Luis
