From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 7 Sep 2017 20:54:25 +0200
Subject: CVE-2017-9417 firmware fix with b43-fwcutter?
In-Reply-To: <1483001379.8665325.1504807495471.JavaMail.zimbra@redhat.com>
References: <20170906055818.GA25367@auburn.dreamhost.com>
 <1483001379.8665325.1504807495471.JavaMail.zimbra@redhat.com>
Message-ID: <20170907205107.6a3490f2@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 7 Sep 2017 14:04:55 -0400 (EDT)
Vladis Dronov <vdronov@redhat.com> wrote:

> I would join Drew in asking a question about CVE-2017-9417/Broadpwn.
> My main concern is if this flaw in a firmware above can affect
> laptop/desktop/server Linux systems?
> 
> So far I see two contradicting answers: "he could reproduce the crash
> with the standard Linux firmware [on a mobile phone]" and "I do not
> think that Broadpwm is a problem". Can someone please clarify?


Mobile phones often use FullMAC chips.

That means the chip runs a small operating system and a full 802.11
MLME stack. Usually referred to as "firmware".
This is not to be confused with the "microcode" or "ucode". The ucode
runs on a small sequencer in the 802.11 baseband processor.

FullMAC:	An ARM/MIPS core on the chip runs the 802.11 MLME stack.
		The 802.11 baseband core runs ucode.

SoftMAC:	The host system runs the 802.11 MLME stack.
		The 802.11 baseband core runs ucode.

So if the vulnerability is in the "firmware" and not in the "ucode",
the SoftMAC chips are not affected.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170907/79aa4ac6/attachment.sig>
