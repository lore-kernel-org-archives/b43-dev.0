From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Tue, 18 Oct 2011 21:43:57 +0200
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9DD41A.2030805@lwfinger.net>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
	<4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
	<4E9DD41A.2030805@lwfinger.net>
Message-ID: <4E9DD6FD.3030108@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El mar 18 oct 2011 21:31:38 CEST, Larry Finger escribi?:
> On 10/18/2011 02:15 PM, Jes?s Vidal Panal?s wrote:
>> Uhmmm....my bcm4301 is not sending any packets. In fact, using kismet 
>> if i
>> execute dmesg i don't see any message trying to connect on the 
>> output...there is
>> only inizitialization of the driver.
>
> Is the kismet*.pcap file empty? After starting kismet, you will then 
> need to initiate the connection in the regular way.
>
> Do you have access to another computer in the wireless network on 
> which you can run kismet?
>
> Larry
>
>
>
>
>

There is the following files on /var/log/kismet:

Kismet-Oct-18-2001-1.csv
Kismet-Oct-18-2001-1.cisco
Kismet-Oct-18-2001-1.dump
Kismet-Oct-18-2001-1.network
Kismet-Oct-18-2001-1.weak
Kismet-Oct-18-2001-1.xml

There are more files (more captures, Kismet-Oct-18-2001-2.*, 
Kismet-Oct-18-2001-3, Kismet-Oct-18-2001-4)

The only extension that i can open with wireshark is .dump. But there 
i've only seen wifi stations sending packets, my wifi router sending 
broadcast packets, but nothing from my broadcom device.
