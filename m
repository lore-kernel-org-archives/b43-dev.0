From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 20 Oct 2010 12:37:04 -0500
Subject: PIO mode
In-Reply-To: <20101019162258.GO1593@home.pavel.comp>
References: <20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
Message-ID: <4CBF28C0.9000404@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/19/2010 11:22 AM, Paul Fertser wrote:
> 
> BTW, while reading the mmiotrace logs (i hope you got all my logs as well
> ;)) i found something that is not present in ssb/b43:
> 
> MARK 680.950958 Read dword 0xCE035801 from 0x40, devfn: 0
> MARK 680.950966 Wrote dword 0xCE030001 to 0x40, devfn: 0
> 
> And indeed there's code (in the free part of the wl driver) responsible for
> that. Adding that to ssb right after pci_set_master doesn't help though :|

As you probably noticed, I have submitted a patch to clear 0x41 in the PCI
configuration space.

More to report on the "ssh user at ipaddress bash -c 'cat > /dev/null' < /dev/zero"
test. If I issue it on the netbook using the IP address of a computer connected
to the AP with a wire, it does not fail. So far, the test has been running for
nearly 24 hours. When I log into the wired machine and issue the command using
the netbook's address, then it fails after 20-22 minutes when it gets the "No
probe response" message that I reported earlier.

Larry
