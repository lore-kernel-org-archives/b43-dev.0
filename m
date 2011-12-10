From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 10 Dec 2011 10:18:36 +0100
Subject: Performance of BCM43224 (14e4:4353)
In-Reply-To: <4EE29171.9060608@lwfinger.net>
References: <4EE15A4E.1090500@lwfinger.net> <4EE1E2AC.8030002@broadcom.com>
 <4EE23AF5.8000400@lwfinger.net> <4EE24615.9020003@broadcom.com>
 <4EE2509D.6020501@lwfinger.net> <4EE269CF.2000608@broadcom.com>
 <4EE29171.9060608@lwfinger.net>
Message-ID: <CACna6rzQuw+oMvYjN6+7SsTqqW=vFFj8W1iuwDY8x+p+GgJ6jA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Arend van Spriel <arend@broadcom.com>, Francesco Gringoli <francesco.gringoli@ing.unibs.it>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

2011/12/9 Larry Finger <Larry.Finger@lwfinger.net>:
> On 12/09/2011 02:04 PM, Arend van Spriel wrote:
>>
>>
>> Indeed. What is more strange is that this looks like value from
>> enumeration rom. 0x4bf is BCMA_MANUF_BCM, 0x800 is BCMA_CORE_CHIPCOMMON.
>> It seems the BAR window is wrong. Can you read PCI_BAR window in the
>> ai_doattach() before reading the chip id.
>
>
> I would like a hint on how to do this. I tried some things that failed.

Have you tried
u32 value;
pci_write_config_dword(core->bus->host_pci, BCMA_PCI_BAR0_WIN, &value);
pr_info();
pci_write_config_dword(core->bus->host_pci, BCMA_PCI_BAR0_WIN2, &value);
pr_info();

You should also hack bcma_bus_scan to display addr and wrap.
pr_info("Core %d addr: 0x%X, wrap 0x%X\n", core->core_index,
core->addr, core->wrap);
(put is inside the while, after existing pr_info)

-- 
Rafa?
