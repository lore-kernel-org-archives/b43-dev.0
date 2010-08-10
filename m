From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 10 Aug 2010 15:29:41 -0500
Subject: Can developers add a switch for bluetooth coexistence?
In-Reply-To: <AANLkTin6cuE+jVFgPGjUdrQvDP=SRUqsxNoXEbPAD8yF@mail.gmail.com>
References: <AANLkTi=zuQiWdf-fk48zC=frDvQgECwjxqNYvta0DZ-9@mail.gmail.com>
	<4C611CD7.3070203@tudelft.nl>	<AANLkTi=LVpGMEVUo14OgCERJD2+KUBbj2z6tk=F=9KvX@mail.gmail.com>
	<4C6149E6.7080004@lwfinger.net>
	<AANLkTin6cuE+jVFgPGjUdrQvDP=SRUqsxNoXEbPAD8yF@mail.gmail.com>
Message-ID: <4C61B6B5.1040706@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/10/2010 02:55 PM, Baybal Ni wrote:
> On 10 August 2010 05:45, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> On 08/10/2010 04:36 AM, Baybal Ni wrote:
>>> The problem is that I need to turn the coexistence off. I'm using a
>>> piece of paper to prevent coexistence pins from contacting.
>>
>> I think that loading b43 with 'modprobe b43 btcoex=0' should do what you want.
>> Have you tried that?
>>
>> Larry
>>
> 
> It doesn't work for me.

Did you unload it first? AFAICT, that option should do the same as you are doing
with your piece of paper. If not, you will have to debug it. I don't have the
hardware.

Larry
