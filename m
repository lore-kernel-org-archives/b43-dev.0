From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 08 Dec 2012 17:12:00 -0600
Subject: [RFC/RFT] b43: Load initial firmware file asynchronously
In-Reply-To: <20121208223509.GA21258@gauss>
References: <50C01558.8050102@lwfinger.net> <20121208143032.GA1903@gauss>
 <50C375BE.9050907@lwfinger.net> <20121208175615.GA10664@gauss>
 <50C399A9.2060304@lwfinger.net> <20121208202435.GA14973@gauss>
 <50C3AF0C.8000607@lwfinger.net> <20121208214157.GA21034@gauss>
 <50C3BD0F.1050603@lwfinger.net> <20121208223509.GA21258@gauss>
Message-ID: <50C3C940.3060704@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Felix Janda <felix.janda@posteo.de>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 12/08/2012 04:35 PM, Felix Janda wrote:
> On 12/08/12 at 04:19pm, Larry Finger wrote:
>>> Now I have a wlan0. Haven't tested it though yet. dmesg still prints some errors.
>>
>> That is not an error - I just left a diagnostic in the code. Please let me know
>> if it works. It should as we only touched the firmware loading.
>>
>> Is it OK if I use a "Reported-and-Tested by: <you>?
>>
>> Larry
>
> It's OK. Over christmas I'll do some thoroughful testing.
>
> The delay of 60 seconds will stay?

As this happens while user-space is getting started, there is little we can do. 
On my dual-core x86_64 system with each CPU running at 2 GHz, it takes 24 sec 
before the fw is loaded. At least other things happen in parallel.

Larry
