From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 19 Oct 2011 09:21:48 -0500
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9ECD29.1080105@vodafone.es>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
	<4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
	<4E9DD41A.2030805@lwfinger.net> <4E9DD6FD.3030108@vodafone.es>
	<4E9DDC16.40501@lwfinger.net> <4E9DE41D.5020909@vodafone.es>
	<4E9DEA29.4050509@lwfinger.net> <4E9EBF72.2090505@vodafone.es>
	<4E9EC5A5.2040105@lwfinger.net> <4E9ECD29.1080105@vodafone.es>
Message-ID: <4E9EDCFC.9000301@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/19/2011 08:14 AM, Jes?s Vidal Panal?s wrote:
>
> Running XP i can see packets using eth.addr filter on the other laptop.

It would appear that the radio is being blocked. Does that zv5000 have a 
wireless switch? It should show up in rfkill, but it might not.

I'm going to be out of town for a few days starting this morning. To get on the 
air, you might try blacklisting ssb and implementing ndiswrapper using the 
Windows XP driver. That will work only if you are using a 32-bit Linux system.

Larry
