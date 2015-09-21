From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 21 Sep 2015 11:38:30 -0500
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <20150921182622.0727f224@wiggum>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
 <56002CE8.3080605@lwfinger.net> <20150921182622.0727f224@wiggum>
Message-ID: <56003286.4010800@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org

On 09/21/2015 11:26 AM, Michael B?sch wrote:
> On Mon, 21 Sep 2015 11:14:32 -0500
> Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
>> This patch has been tested on PPC architecture with Linksys WPC54G PCMCIA cards.
>
> Are you sure that this really is a 16 bit PCMCIA card and not a PC-Card?
> If it shows up in lspci, it's not a PCMCIA card.

Point taken. These are indeed PC-Cards in a PCMCIA format.

>> It probably does not matter here, but I prefer that hexadecimal constants in
>> device tables contain only the lower-case versions of a-f. That makes searching
>> for such constants with grep a lot easier.
>
> I prefer coffee over tea. That doesn't make coffee any better, though.
>
> Is it really so that the rest of the kernel only uses lower case here?
> Grep also supports case insensitive regexes, if done correctly. And if
> not everybody uses lower case here, you'll have to do that anyway.

Yes, I know how to use grep to ignore case.

Larry

>
