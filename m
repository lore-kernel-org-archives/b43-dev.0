From: Cheng Renquan <crquan@gmail.com>
Date: Thu, 5 Aug 2010 11:23:31 +0800
Subject: b43 help,
In-Reply-To: <AANLkTim1WEyom6vh07_EMqvXgTayJW2NGqqBoeXzCyqH@mail.gmail.com>
References: <AANLkTimkV_LjgacMA6tR7Eaj=QpmXYJ2KwWYsuQFY-MV@mail.gmail.com> 
	<AANLkTi=cbYrUsNJCdQG+UZ9DZNCo0d-BJ9zqsTW3iv89@mail.gmail.com> 
	<AANLkTimYyzUE3_G+SrOyib=cBUj9GyrHT+eTAy2AUvXu@mail.gmail.com> 
	<AANLkTi=jXTDadn_iDPxobV2=ks-tsGB2x8Gge3_8pS_V@mail.gmail.com> 
	<AANLkTim1WEyom6vh07_EMqvXgTayJW2NGqqBoeXzCyqH@mail.gmail.com>
Message-ID: <AANLkTikpUDgB6wUcJ9-p=rFerR8=fEi5OxJqubVLwyeS@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Aug 5, 2010 at 12:08 AM, William Bourque
<william.bourque@polymtl.ca> wrote:
>
> Did you try the command Gabor gave you? ( "modprobe b43 nohwcrypt=1 qos=0
> pio=1" )
>
> Assuming your kernel is recent enought, this should fix your problem.

Got it! with these parameters it really works! the kernel is ubuntu
10.04 default 2.6.32-23-generic-pae,

Then these parameters mean the haredware crypto functions cannot be utilized,
all encrypt/decrypt calculations are using the main CPU, right?

Then our remaining job is still to figure out how to make it work with
enabling these
parameters; without released documents from Broadcom, we can only do
reverse engineering?
from where to start? although maybe not an easy task, but I'd like a try;

2010/8/5 G?bor Stefanik <netrolller.3d@gmail.com>:
> I see you are using Madwifi for the atheros card. Please test with
> ath5k in the same kernel that is experiencing problems in b43 - this
> will reveal whether the problem is in b43 or mac80211.

Sorry, that linux netbook with atheros is using linux 2.6.21.7, really
old kernel
I cannot update software on it because its storage is very limited, I
cannot even
install a compiler on it;
(in fact, it's EeePC 701, the very first model, with Intel Celeron 900 MB,
and only 4 GB SSD storage,)

--
Cheng Renquan (???), from Singapore
