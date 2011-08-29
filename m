From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 30 Aug 2011 01:46:35 +0200
Subject: BCM4321 support
In-Reply-To: <4E5BC004.8060608@lwfinger.net>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
	<4E5AB689.4010000@lwfinger.net>
	<CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
	<4E5BC004.8060608@lwfinger.net>
Message-ID: <20110830014635.2c0623d8@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 29 Aug 2011 11:36:20 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> The firmware has its own private memory and it shares some memory with the host 
> CPU

The firmware does not share any memory with the host CPU. The memory is called
"shared memory", but that is a misnomer. The host CPU accesses that memory
by memory mapped I/O. Firmware can do DMA only indirectly through the
TX and RX engines.

-- 
Greetings, Michael.
