From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 20 Oct 2010 21:54:28 +0400
Subject: PIO mode
In-Reply-To: <4CBF28C0.9000404@lwfinger.net>
References: <20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
	<4CBF28C0.9000404@lwfinger.net>
Message-ID: <20101020175427.GQ1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Oct 20, 2010 at 12:37:04PM -0500, Larry Finger wrote:
> On 10/19/2010 11:22 AM, Paul Fertser wrote:
> > MARK 680.950958 Read dword 0xCE035801 from 0x40, devfn: 0
> > MARK 680.950966 Wrote dword 0xCE030001 to 0x40, devfn: 0
> 
> As you probably noticed, I have submitted a patch to clear 0x41 in the PCI
> configuration space.

Yes, thank you (tbh i was surprised to see you adding the code to the
"fixup" routine but i thought you know better, now Michael's clarified it
fully :) )
 
> More to report on the "ssh user at ipaddress bash -c 'cat > /dev/null' < /dev/zero"
> test. If I issue it on the netbook using the IP address of a computer connected
> to the AP with a wire, it does not fail. So far, the test has been running for
> nearly 24 hours. When I log into the wired machine and issue the command using
> the netbook's address, then it fails after 20-22 minutes when it gets the "No
> probe response" message that I reported earlier.

It looks like we're seeing two different issues.

BTW, with this test i can't reproduce my "fatal dma" problems if i
modprobe/rmmod wl first, so that's somehow related. Do you have any ideas
on how i can further help with debugging?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
