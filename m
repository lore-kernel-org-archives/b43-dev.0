From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 19 Oct 2011 18:29:45 -0500
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9F3D9E.8020009@vodafone.es>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
	<4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
	<4E9DD41A.2030805@lwfinger.net> <4E9DD6FD.3030108@vodafone.es>
	<4E9DDC16.40501@lwfinger.net> <4E9DE41D.5020909@vodafone.es>
	<4E9DEA29.4050509@lwfinger.net> <4E9EBF72.2090505@vodafone.es>
	<4E9EC5A5.2040105@lwfinger.net> <4E9ECD29.1080105@vodafone.es>
	<4E9EDCFC.9000301@lwfinger.net> <4E9F3D9E.8020009@vodafone.es>
Message-ID: <4E9F5D69.2010105@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/19/2011 04:14 PM, Jes?s Vidal Panal?s wrote:
> Well, i think that i've got ndiswrapper working with the windows driver, but i
> have the same problem, is not connection. Running wpa_suplicant (using right
> configuration) i've got this output:
>
> ioctl[SIOCSIWENCODEEXT]: Invalid argument
> ioctl[SIOCSIWENCODEEXT]: Invalid argument
> Trying to associate with 20:cf:30:ce:0e:c7 (SSID='WIFI-Tux' freq=2442 MHz)
> Association request to the driver failed
> Associated with 00:00:00:00:00:00
> CTRL-EVENT-DISCONNECTED bssid=20:cf:30:ce:0e:c7 reason=0
> ioctl[SIOCSIWENCODEEXT]: Invalid argument
> ioctl[SIOCSIWENCODEEXT]: Invalid argument
> Trying to associate with 20:cf:30:ce:0e:c7 (SSID='WIFI-Tux' freq=2442 MHz)
> Association request to the driver failed
> Associated with 00:00:00:00:00:00
> CTRL-EVENT-DISCONNECTED bssid=20:cf:30:ce:0e:c7 reason=0
>

Does wireshark on Win 7 show any packets from your device with ndiswrapper?

My hotel has wifi and I will be able to see Email daily.

Larry
