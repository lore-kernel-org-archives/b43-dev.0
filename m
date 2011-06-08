From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 08 Jun 2011 18:05:39 -0500
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>
	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>
Message-ID: <4DF00043.1070304@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/08/2011 05:55 PM, Rafa? Mi?ecki wrote:
> W dniu 8 czerwca 2011 23:19 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>  napisa?:
>> Forcing rate to 1M workarounded this issue.
>
> Working state seems to be random and not related to rate.
>
> Even if I manage to connect, I do not have a chance to achieve 1MB/s.
>
> At least ndiswrapper seems to work fine. I got easy&stable connection
> and speed around 10MB/s. Nice to know my card is not faulty.

What is the nature of that 4315 card? Mine is currently in use and has been 
working correctly. This is one of the original PCIe units with the SPROM at 0x1000.

When I use the one in the netbook with the SPROM at 0x0800, the unit is a lot 
less stable.

Larry
