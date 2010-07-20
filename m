From: Harry Bullen <hbullen@gmail.com>
Date: Tue, 20 Jul 2010 17:47:13 -0400
Subject: Crash with BCM4312 using ad-hoc mode and promiscuous
In-Reply-To: <4C4611D3.30104@lwfinger.net>
References: <AANLkTinxJtP4qj2kQqQd0uLguosQdHLPPs4BAXBZO0eg@mail.gmail.com>
	<4C4611D3.30104@lwfinger.net>
Message-ID: <AANLkTikMvuO9dXEPeuIBagl6QFC8A2pN9SUiBZseaM0z@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Harry William Bullen IV



On Tue, Jul 20, 2010 at 5:14 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 07/20/2010 03:18 PM, Harry Bullen wrote:
>>
>> Hey, I've been using a Broadcom BCM4312 on Ubuntu 10.04 kernel
>> 2.6.32-23. ?I found a way to crash the machine and wanted to know if
>> it was a known problem and if so is there a solution. ?If not I'd like
>> to report this as a bug.
>> I first join an existing ad-hoc network and and assign myself an ipv4
>> address. ?Then I use tcpdump or wireshark to listen to traffic in
>> promiscuous mode. ?Finally I generate I traffic between two other
>> computers on the same ad-hoc network by having one ping the other. ?At
>> this point the system freezes up immediately (including ssh sessions
>> and it cannot be pinged) and I have to hold down the power button to
>> reboot it. ?If I use an AP, don't put the card in promiscuous mode
>> (when using tcpdump or wireshark) or don't generate traffic between
>> other computers the system doesn't crash.
>
> Is this a crash or a freeze? A crash would provide a crash dump, but a
> freeze does not and they are harder to debug. With a KDE desktop, it is
> possible to switch to a logging console to capture whatever info is
> available. Is this possible with Gnome? Are you using a standard kernel or
> one you built yourself? If the former, could you please provide the
> configuration? It should be found in /proc/config.gz. If you are compiling
> yourself, then select CONFIG_DETECT_SOFTLOCKUP and CONFIG_DETECT_HUNG_TASK
> in the Kernel Hacking section.

I think it's a crash.  If a switch to a tty console I get a bunch of
scrolling output that looks like a crash, but I'm not sure how to
capture it.

I am using the default ubuntu 10.04 kernel.  I have attached the
config file I found in the /boot directory I didn't find anything in
/proc

>
>> Other issues that may or may not be related. ?The wireless card
>> sometimes switches between eth1 and eth2 after a reboot (I haven't
>> seen a pattern in this.) ?When sniffing traffic on a wireless network
>> using an AP I only see traffic that is broadcast or sent to me,
>> even-though I am in promiscuous mode.
>
> The naming should be controlled by udev according to the rules in
> /etc/udev/rules.d/70-persistent-network.rule. At least it works that way on
> my system.

I looking in that file and I see to settings for my card one labeled
eth1 and the other eth2.
This probably explains my problem
>
>> I have installed b43-fwcutter via: apt-get install b43-fwcutter. ?But
>> this did not appear to have any effect.
>
> As that package only installs the program that extracts firmware from a
> Broadcom driver, there is no reason to expect it to make a difference.
>
> I will try to duplicate your result.
>
Thanks if there is anything I can do to help please tell me.

> Larry
>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: config-2.6.32-23-generic
Type: application/octet-stream
Size: 115904 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100720/c9e8fdbe/attachment-0001.obj>
