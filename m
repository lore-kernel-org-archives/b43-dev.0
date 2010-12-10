From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 10 Dec 2010 16:06:30 -0600
Subject: Question about SPROM Readout
Message-ID: <4D02A466.2030607@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On the box with the SPROM located at 0x0800 rather than 0x1000, a readout cycle
dumps data from whatever core happens to be mapped in the region 0x0 - 0xFFF. As
this is usually not the ChipCommon core, the SPROM dump is usually garbage.
Similarly, an SPROM write would overwrite lots of things.

I see several possible fixes and would like to get a sense of what you think is
best:

(1) Change the code to map ChipCommon before doing any SPROM dumps or saves. I
first tried this and crashed the driver - I'm not sure what I did wrong.

(2) Assume that the need to change SPROM contents is probably past and return an
error message if anyone tries to dump or rewrite for such a card.

(3) Save the SPROM image from the initial read and echo it for a dump, and error
on an attempted rewrite.

(4) Whatever I missed.

Thanks,

Larry
