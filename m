From: Matthew Garrett <mjg59@srcf.ucam.org>
Date: Thu, 6 Mar 2014 01:40:15 +0000
Subject: b43 register dumping/setting
Message-ID: <20140306014015.GA19521@srcf.ucam.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Every time I send a packet on the 4331 in this Macbook Pro, the screen 
flickers. It doesn't happen with the closed driver. Is there a simple 
way to dump the SSB and b43 registers from userspace and rewrite them in 
an attempt to identify whether there's some magic "Don't fuck with my 
displayport timings" bit?

-- 
Matthew Garrett | mjg59 at srcf.ucam.org
