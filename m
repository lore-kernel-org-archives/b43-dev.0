From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 19 Oct 2010 20:22:58 +0400
Subject: PIO mode
In-Reply-To: <4CBDC183.9020101@lwfinger.net>
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
Message-ID: <20101019162258.GO1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, Oct 19, 2010 at 11:04:19AM -0500, Larry Finger wrote:
> On 10/18/2010 07:43 PM, Paul Fertser wrote:
> > I have a desktop connected by wired ethernet to the wireless AP and i do
> > 
> > $ ssh pavelssh at 192.168.1.2 bash -c 'cat > /dev/null' < /dev/zero
> > 
> > from the netbook.
> 
> Running the equivalent of the above command on my system does not result in a
> DMA error for my 14e4:4315 device. It runs for almost 22 minutes and then loses
> the connection with the following logged:
...
> Oct 19 10:35:03 linux-1fyl kernel: [84172.908799] wlan0: authenticate with
> c0:3f:0e:be:2b:45 (try 1)
> Oct 19 10:35:04 linux-1fyl kernel: [84173.108181] wlan0: authenticate with
> c0:3f:0e:be:2b:45 (try 2)

So there certainly are some problems left that you're able to reproduce,
that's nice :)

BTW, while reading the mmiotrace logs (i hope you got all my logs as well
;)) i found something that is not present in ssb/b43:

MARK 680.950958 Read dword 0xCE035801 from 0x40, devfn: 0
MARK 680.950966 Wrote dword 0xCE030001 to 0x40, devfn: 0

And indeed there's code (in the free part of the wl driver) responsible for
that. Adding that to ssb right after pci_set_master doesn't help though :|

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
