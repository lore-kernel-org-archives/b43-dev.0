From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 06 Feb 2014 10:54:10 -0600
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti2-W97qW40LoXFBNqcPXQ+vA7V7sAnZ_ZerxiknRNuF5Dg@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
 <52F33840.4060208@lwfinger.net>
 <CAD2Ti2-W97qW40LoXFBNqcPXQ+vA7V7sAnZ_ZerxiknRNuF5Dg@mail.gmail.com>
Message-ID: <52F3BE32.9030303@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/06/2014 03:01 AM, grarpamp wrote:
> On Thu, Feb 6, 2014 at 2:22 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
>> There is no one to one relationship. Both are internal Broadcom
>> designations.
>
> ... got it thx.
>
>> No. The firmware is just a black box.
>
> Hopefully these makers will someday stop software
> secrets. They sell primary hardware, not sw.

The firmware source would reveal trade secrets about the chip construction that 
a competitor could use. For that reason, I don't expect many of the vendors to 
publish those sources.

Most vendors license their binary firmware files for redistribution, and they 
are available in the linux-firmware git repo. That is where the distros get 
firmware. Broadcom does the same for devices driven by brcmsmac and brcmfmac.

For the b43-driven devices, the rules are different. Broadcom will not allow 
their firmware files to be redistributed under any circumstances. Any web site 
that contains files such as ucodeN, etc. is illegal and the operator of that 
site could be sued for illegally distributing proprietary material!

To get the firmware we have, we take advantage of a loophole. Because Broadcom 
uses Linux for the OS in their routers, the GPL requires them to make their 
contributions available for redistribution. Of course, they only provide binary 
blobs for their driver, but the firmware is contained within those binaries. 
Thus we need to find a binary driver that is redistributable, determine where 
the firmware is contained within that binary, and modify fwcutter to extract the 
firmware files from that blob.

Not all of Broadcom's drivers are suitable. For example, it has never seemed 
fruitful to download 300-500 MB of stuff to extract approximately 1 MB of 
firmware. My repository contains files that are no larger than ~10 MB. Windows 
drivers are stripped to the point that the firmware locations are not easily 
determined, thus I avoid them.

Larry
