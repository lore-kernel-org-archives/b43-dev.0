From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 7 Dec 2011 13:52:21 +0100
Subject: bcma usage in isr context
In-Reply-To: <4EDCE2CC.3060500@broadcom.com>
References: <4ED77C85.1050705@broadcom.com>
 <CACna6rznu8d1BjG0EWjP1VRCPdYAGJv1q+fi1X+XF_Bf-Cx+Mg@mail.gmail.com>
 <4EDCE2CC.3060500@broadcom.com>
Message-ID: <CACna6rwVRrm8YgvoYAmswru8nHXgytuiDRO2F2TQVZyxnfaV9w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

W dniu 5 grudnia 2011 16:27 u?ytkownik Arend van Spriel
<arend@broadcom.com> napisa?:
>> You're right, we don't handle this properly. I'll try to send patch
>> today to make use of fixed windows. I've it here for some time
>> already, just didn't clean it enough.
>>
>
> Ok. For now I have a patch in the bcma read/write host_pci functions
> that solves it, but fixed bar windows are preferable.

Have you tested my patch? Does it solver your issue? I can't wait to
see bcma patches for brcmsmac :)

-- 
Rafa?
