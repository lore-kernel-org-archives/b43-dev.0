From: Darren <dmbtech@gmail.com>
Date: Sun, 12 Jun 2011 11:40:00 -0400
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <1307786973.4771.114.camel@i7.infradead.org>
References: <4D8F022C.2050606@rostlab.org>	<AANLkTikdg-ZQ2rDL901A_HZ9TnYiQHG2h-jmhOrM_t6D@mail.gmail.com>	<BANLkTimiCVU8JL-eMT0v1s1GswC+hwkLFQ@mail.gmail.com>	<4D9D8D4D.3030603@rostlab.org>	<BANLkTi=GHKddWTfB1gkhbWvpaG9bsX3zRw@mail.gmail.com>	<1307744628.4771.109.camel@i7.infradead.org>	<BANLkTik4MFG6xwPH3ETbc1sxmh8xbzE+rw@mail.gmail.com>	<BANLkTikDxQtkp814KMPVCTXPmGbO4=12mA@mail.gmail.com>
	<1307786973.4771.114.camel@i7.infradead.org>
Message-ID: <4DF4DDD0.4000908@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/11/2011 06:09 AM, David Woodhouse wrote:
> On Sat, 2011-06-11 at 11:36 +0200, Rafa? Mi?ecki wrote:
>> I've asked for tests of mmiotracer and ndiswrapper on Ubuntu forum [1] [2].
> I can do that but it will probably take a while; I may just use the box
> with wired and Bluetooth networking for now, or not use it at all until
> I'm not quite so snowed under with other things.
>
> If you send me a SSH public key I can give you root access on the box
> over the wired connection and you can play with it yourself, which might
> be a lot faster all round?
>
If you are using Ubuntu David, you can get the mmio trace without
recompiling the kernel.
Just do

echo mmiotrace > /sys/kernel/debug/tracing/current_tracer
cat /sys/kernel/debug/tracing/trace_pipe > /tmp/dump.txt &

echo "Modprobe start" > /sys/kernel/debug/tracing/trace_marker
modprobe ndiswrapper
echo "Modprobe end" > /sys/kernel/debug/tracing/trace_marker

echo "ifconfig wlan1 up start" > /sys/kernel/debug/tracing/trace_marker
ifconfig wlan1 up
echo "ifconfig wlan1 up end" > /sys/kernel/debug/tracing/trace_marker

killall cat
