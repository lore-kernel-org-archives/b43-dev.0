From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 08 Dec 2012 16:19:59 -0600
Subject: [RFC/RFT] b43: Load initial firmware file asynchronously
In-Reply-To: <20121208214157.GA21034@gauss>
References: <50C01558.8050102@lwfinger.net> <20121208143032.GA1903@gauss>
 <50C375BE.9050907@lwfinger.net> <20121208175615.GA10664@gauss>
 <50C399A9.2060304@lwfinger.net> <20121208202435.GA14973@gauss>
 <50C3AF0C.8000607@lwfinger.net> <20121208214157.GA21034@gauss>
Message-ID: <50C3BD0F.1050603@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Felix Janda <felix.janda@posteo.de>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 12/08/2012 03:41 PM, Felix Janda wrote:
> On 12/08/12 at 03:20pm, Larry Finger wrote:
>> On 12/08/2012 02:24 PM, Felix Janda wrote:
>>>
>>> Not much has changed. Say, if you want to have the complete dmesg output.
>>
>> Yes, I messed that one up. Try this one - it is different in the error recovery.
>>
>> Larry
>
> Now I have a wlan0. Haven't tested it though yet. dmesg still prints some errors.

That is not an error - I just left a diagnostic in the code. Please let me know 
if it works. It should as we only touched the firmware loading.

Is it OK if I use a "Reported-and-Tested by: <you>?

Larry
