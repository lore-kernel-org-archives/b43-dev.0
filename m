From: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Date: Wed, 11 May 2011 14:31:20 +0200
Subject: [PATCH 2/2] b43: implement timeouts workaround
In-Reply-To: <4DCA7E40.9070709@lwfinger.net>
References: <1305072659-4011-1-git-send-email-zajec5@gmail.com>
	<1305072659-4011-2-git-send-email-zajec5@gmail.com>
	<4DC9CD4D.6060002@lwfinger.net>
	<BANLkTik-BZnGr1Kya3=KSskr3QrNHHY1SA@mail.gmail.com>
	<4DC9D45C.6010505@lwfinger.net>
	<BANLkTimDQQSfDO-jUtVA0A5zSFxTQAvx7g@mail.gmail.com>
	<4DCA7E40.9070709@lwfinger.net>
Message-ID: <1305117080.16850.4.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Wed, 2011-05-11 at 07:17 -0500, Larry Finger wrote: 
> On 05/11/2011 02:35 AM, Rafa? Mi?ecki wrote:
> > W dniu 11 maja 2011 02:12 u?ytkownik Larry Finger
> > <Larry.Finger@lwfinger.net>  napisa?:
> >> On 05/10/2011 06:56 PM, Rafa? Mi?ecki wrote:
> >>>
> >>> W dniu 11 maja 2011 01:42 u?ytkownik Larry Finger
> >>> <Larry.Finger@lwfinger.net>    napisa?:
> >>>>
> >>>> On 05/10/2011 07:10 PM, Rafa? Mi?ecki wrote:
> >>>>>
> >>>>> Documented in:<4BB81CAD.10602@lwfinger.net>
> >>>>
> >>>> This reference is not correct.
> >>>
> >>> Ouch, GMail seems to lie to me. Any change you can give me real message id
> >>> of:
> >>> http://www.mail-archive.com/b43-dev at lists.infradead.org/msg00049.html
> >>
> >> This one is good.
> >
> > Sorry, do you mean<4BB81CAD.10602@lwfinger.net>  is OK? Or should I
> > use link I posted instead of message ID? Or do you know how to get
> > message ID from the link above?
> >
> 
> Use the link 
> "http://www.mail-archive.com/b43-dev at lists.infradead.org/msg00049.html". 
> <4BB81CAD.10602@lwfinger.net> just points to a non-existent email address on my 
> domain. I don't know how to get a message ID.

It's just an email header added by your MUA.
For example:   Message-ID: <4DCA7E40.9070709@lwfinger.net>

The advantage of this is that links change and vanish. However, message
IDs don't. The message ID uniquely identifies a message, regardless of
where it's stored. So even if the mail archive moves to another URL,
it's still possible to find the actual mail by the ID.

-- 
Greetings Michael.
