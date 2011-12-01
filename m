From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Thu, 01 Dec 2011 17:28:08 +0100
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4ED7A64A.3020908@lwfinger.net>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
 <4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
 <4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
 <4E9DD41A.2030805@lwfinger.net> <4E9DD6FD.3030108@vodafone.es>
 <4E9DDC16.40501@lwfinger.net> <4E9DE41D.5020909@vodafone.es>
 <4E9DEA29.4050509@lwfinger.net> <4E9EBF72.2090505@vodafone.es>
 <4E9EC5A5.2040105@lwfinger.net> <4E9ECD29.1080105@vodafone.es>
 <4E9EDCFC.9000301@lwfinger.net> <4E9F3D9E.8020009@vodafone.es>
 <4E9F5D69.2010105@lwfinger.net> <4E9FD769.6090105@vodafone.es>
 <CACna6rz9AMUqcBXQgLBsu70qDJEAOQXC5f-664ygWC0KYZRdBg@mail.gmail.com>
 <4EA160F6.8070403@vodafone.es>
 <CACna6rwtUJKmkBAVWXtk=O3DbhKUdnSuyv_zhpGvZ47ZF+p6Dw@mail.gmail.com>
 <4EA1CDDF.6010403@vodafone.es> <4ED76A51.6090600@vodafone.es>
 <4ED7A64A.3020908@lwfinger.net>
Message-ID: <4ED7AB18.9080302@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El jue 01 dic 2011 17:07:38 CET, Larry Finger escribi?:
> On 12/01/2011 05:51 AM, Jes?s Vidal Panal?s wrote:
>>> i can't find any new driver for my laptop. I've tried with this one
>>> http://www.x-drivers.com/catalog/drivers/wireless_networks/companies/broadcom/models/bcm94301/17599.html 
>>>
>>> but on ndisgtk says that hardware is not present, so i think that 
>>> this driver
>>> is not good for my laptop.
>>
>> Any new suggestion about what can i do or test? Thanks.
>
> That driver link above was horrible. I had to download the awful media 
> manager software just to get to actual driver package downloaded.
>
> Once I got that stuff, the .inf file contains lines with 
> PCI\VEN_14E4&DEV_4303, but not PCI\VEN_14E4&DEV_4301, which is what 
> your device needs. At least I think the output of 'lspci -n' should 
> have a line with "14e4:4301".
>
> One thing you could try is to edit the inf file and change "DEV_4303" 
> to "DEV_4301". It might work.
>
> Larry
>
>
>

I'll try it. 

I don't know if this is important, but the driver that i have on 
Windows XP is this: 
http://h10025.www1.hp.com/ewfrf/wc/softwareDownloadIndex?cc=us&destPage=softwareDownloadIndex&lc=en&os=228&product=409654&softwareitem=ob-31559-1&sw_lang=&tmp_docname=

http://ftp.hp.com/pub/softpaq/sp30001-30500/SP30379.exe
