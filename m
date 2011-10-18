From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 18 Oct 2011 13:30:58 -0500
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9DB5FD.6090902@vodafone.es>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
Message-ID: <4E9DC5E2.8070708@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/18/2011 12:23 PM, Jes?s Vidal Panal?s wrote:
> El 18/10/11 17:34, Larry Finger escribi?:
>> On 10/18/2011 10:05 AM, Jes?s Vidal Panal?s wrote:
>>>>
>>> Running Wireshark on this laptop and capturing wireless interface does not show
>>> traffic at all. So there is something wrong.
>>
>> For unknown reasons, wireshark fails to capture data on my computer as well
>> abd my BCM4303 works. Use kismet.
>>
>> Larry
>>
>>
>>
> Ok. I've installed kismet, i've edited kismet.conf file, setting only source to
> this: source=b43legacy,wlan0,addme
>
> I ran kismet, and i can see my wifi essid. Packts is updating everytime, so
> sniffing is working fine. Now, what can i do with kismet to probe if my card is
> sending packets?

In general, do not drop the mailing list from the distribution list. ALWAYS use 
"reply-all". All of my debugging is made available on the list. If you do not 
accept that restriction, then I will be unable to help you.

You can analyze the .pcap file produced by kismet with wireshark. Look for probe 
requests from your BCM4303 and the response from the AP. If you cannot analyze 
the data, it is OK to send the pcap file to me privately. I will limit the 
traffic to just your ESSID and post it on the list if I cannot figure out what 
is wrong.

Larry
