From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 19 Nov 2011 00:08:51 +0100
Subject: b43: BCM 4331: MacBook 8,1: No connection after suspend
In-Reply-To: <4EC6BB5E.4010101@broadcom.com>
References: <20111118173242.GA2101@schottelius.org>
 <20111118173921.GB2101@schottelius.org>
 <4EC6B9E9.50204@broadcom.com> <4EC6BB5E.4010101@broadcom.com>
Message-ID: <CACna6ryw9gC5CnY-ex45JFmQtXRxs8NX9ADkqVZrOj5CCtjiVw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: Nico Schottelius <nico-nospam@schottelius.org>, Nico -telmich- Schottelius <nico-linux-20111118@schottelius.org>, LKML <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

2011/11/18 Arend van Spriel <arend@broadcom.com>:
> On 11/18/2011 09:02 PM, Arend van Spriel wrote:
>> On 11/18/2011 06:39 PM, Nico Schottelius wrote:
>>> Nico -telmich- Schottelius [Fri, Nov 18, 2011 at 06:32:42PM +0100]:
>>>> Hello,
>>>>
>>>> new notebook, new problems (*):
>>>
>>> + full dmesg attached.
>>>
>>
>> It seems you are running b43 + bcma. Adding Rafa? and friends.
>>
>> Gr. AvS
>
> Hi Rafa?,
>
> In brcmsmac we reprogram the PCI BAR windows upon resume. Not sure if
> that is done or needed in bcma, but may be worth checking.

Good point.

Please reload b43 *and bcma*. Both drivers. Share your results.

-- 
Rafa?
