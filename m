From: Thommy Jakobsson <thommyj@gmail.com>
Date: Sun, 21 Apr 2013 20:44:24 +0200 (CEST)
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130421202601.179eaf44@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
 <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202305470.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
 <20130421083822.5d6599e3@milhouse>
 <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211951130.13040@kelly.ryd.net>
 <20130421202601.179eaf44@milhouse>
Message-ID: <alpine.DEB.2.02.1304212043090.13040@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

New response since my phone answered with html

On Sun, 21 Apr 2013, Michael B?sch wrote:

> Hmmm. While this does work (because the register and ring->current_slot contain the same
> value at this point), I'd prefer if you write ring->current_slot - 1
> to the stop-index-register.
The reason for the interrupt is because the current index in the device is
the same as the last index. That's why I read the value from the device. But
I fix it, don't have a strong opinion about it.

> Also, the comment needs to be updated
Crap, missed that.

/thommy
