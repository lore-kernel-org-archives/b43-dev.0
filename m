From: Baybal Ni <nikulinpi@gmail.com>
Date: Fri, 17 Sep 2010 20:26:25 -0700
Subject: Can developers add a switch for bluetooth coexistence?
In-Reply-To: <AANLkTikuKd05U38=GgEek_f7mBnTQy=xR8vAUMah8uZh@mail.gmail.com>
References: <AANLkTi=zuQiWdf-fk48zC=frDvQgECwjxqNYvta0DZ-9@mail.gmail.com>
	<4C611CD7.3070203@tudelft.nl>
	<AANLkTi=LVpGMEVUo14OgCERJD2+KUBbj2z6tk=F=9KvX@mail.gmail.com>
	<4C6149E6.7080004@lwfinger.net>
	<AANLkTin6cuE+jVFgPGjUdrQvDP=SRUqsxNoXEbPAD8yF@mail.gmail.com>
	<4C61B6B5.1040706@lwfinger.net>
	<AANLkTikuKd05U38=GgEek_f7mBnTQy=xR8vAUMah8uZh@mail.gmail.com>
Message-ID: <AANLkTi=+2wE4XEaSm6mvkNoZAPwUgcaLmya+tJL_ZJax@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I successfully replace my piece of paper with "echo on
>/sys/class/bluetooth/hci0/power/control" It looks that the problem
was broken power management.

On 10 August 2010 13:57, Baybal Ni <nikulinpi@gmail.com> wrote:
> On 10 August 2010 13:29, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> On 08/10/2010 02:55 PM, Baybal Ni wrote:
>>> On 10 August 2010 05:45, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>>>> On 08/10/2010 04:36 AM, Baybal Ni wrote:
>>>>> The problem is that I need to turn the coexistence off. I'm using a
>>>>> piece of paper to prevent coexistence pins from contacting.
>>>>
>>>> I think that loading b43 with 'modprobe b43 btcoex=0' should do what you want.
>>>> Have you tried that?
>>>>
>>>> Larry
>>>>
>>>
>>> It doesn't work for me.
>>
>> Did you unload it first? AFAICT, that option should do the same as you are doing
>> with your piece of paper. If not, you will have to debug it. I don't have the
>> hardware.
>>
>> Larry
>>
>
> Yes, I unloaded it and rebooted a few times, trying other switches
> like hwpctl and their combinations. What kind of debugging output do
> you want me to get? But I'm somehow confident that this may not be a
> bad hardware problem as "ifconfig wlan1 down" allows my bluetooth
> devices to operate normally. And as I can understand ifconfig down
> doesn't perform a normal hardware power off.
>
