From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 26 Jul 2012 09:37:11 +0200
Subject: [PATCH V3] b43: be more user friendly with PHY info
In-Reply-To: <5010F284.1040808@fisher-privat.net>
References: <1343283361-4050-1-git-send-email-zajec5@gmail.com>
 <CA+XFjiofydQef-7GaUvZKXrH8Wx1sb1mh5j2jTHxh5bvd6NK5w@mail.gmail.com>
 <CACna6ryQ4eV62Fsjn6jBOVasu2BX4C=CxRz_TacVVQ4MVJUxrA@mail.gmail.com>
 <5010E243.6000807@fisher-privat.net>
 <CACna6ry-god2wr60t0c9WvaOBA_X=DK7j5xDU7r7R6mUFYKV3Q@mail.gmail.com>
 <5010F284.1040808@fisher-privat.net>
Message-ID: <CACna6rwNcC38OtKmOC-dAU6BZgrTHoLrf9Ezav5CFUJRRXVUTw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/7/26 Oleksij Rempel <bug-track@fisher-privat.net>:
> Am 26.07.2012 08:50, schrieb Rafa? Mi?ecki:
>> 2012/7/26 Oleksij Rempel <bug-track@fisher-privat.net>:
>>> Am 26.07.2012 08:10, schrieb Rafa? Mi?ecki:
>>>> 2012/7/26 G?bor Stefanik <netrolller.3d@gmail.com>:
>>>>> On Thu, Jul 26, 2012 at 8:16 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>>>>> First of all, use PHY names instead of magic numbers. It should make
>>>>>> configuring kernel easier in case of not enabled PHY type support.
>>>>>> Secondly, always print info about PHY. This is really basic info about
>>>>>> hardware and quite important for the support level.
>>>>>>
>>>>>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>>>>>> ---
>>>>>> V2: add new PHYTYPEs
>>>>>> V3: don't printk error in b43_phy_name, just return "UNKNOWN". We still
>>>>>>     can know PHY type thanks to change in caller, which prints both:
>>>>>>     %d and %s. Thanks Joe!
>>>>>> ---
>>>>>>  drivers/net/wireless/b43/b43.h  |    2 ++
>>>>>>  drivers/net/wireless/b43/main.c |   39 ++++++++++++++++++++++++++++++++++-----
>>>>>>  2 files changed, 36 insertions(+), 5 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/net/wireless/b43/b43.h b/drivers/net/wireless/b43/b43.h
>>>>>> index 7c899fc..b0c7f47 100644
>>>>>> --- a/drivers/net/wireless/b43/b43.h
>>>>>> +++ b/drivers/net/wireless/b43/b43.h
>>>>>> @@ -415,6 +415,8 @@ enum {
>>>>>>  #define B43_PHYTYPE_HT                 0x07
>>>>>>  #define B43_PHYTYPE_LCN                        0x08
>>>>>>  #define B43_PHYTYPE_LCNXN              0x09
>>>>>> +#define B43_PHYTYPE_LCN40              0x0a
>>>>>> +#define B43_PHYTYPE_AC                 0x0b
>>>>>>
>>>>>>  /* PHYRegisters */
>>>>>>  #define B43_PHY_ILT_A_CTRL             0x0072
>>>>>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>>>>>> index b80352b..a8f812b 100644
>>>>>> --- a/drivers/net/wireless/b43/main.c
>>>>>> +++ b/drivers/net/wireless/b43/main.c
>>>>>> @@ -4277,6 +4277,35 @@ out:
>>>>>>         return err;
>>>>>>  }
>>>>>>
>>>>>> +static char *b43_phy_name(struct b43_wldev *dev, u8 phy_type)
>>>>>> +{
>>>>>> +       switch (phy_type) {
>>>>>> +       case B43_PHYTYPE_A:
>>>>>> +               return "A";
>>>>>> +       case B43_PHYTYPE_B:
>>>>>> +               return "B";
>>>>>> +       case B43_PHYTYPE_G:
>>>>>> +               return "G";
>>>>>> +       case B43_PHYTYPE_N:
>>>>>> +               return "N";
>>>>>> +       case B43_PHYTYPE_LP:
>>>>>> +               return "LP";
>>>>>> +       case B43_PHYTYPE_SSLPN:
>>>>>> +               return "SSLPN";
>>>>>> +       case B43_PHYTYPE_HT:
>>>>>> +               return "HT";
>>>>>> +       case B43_PHYTYPE_LCN:
>>>>>> +               return "LCN";
>>>>>> +       case B43_PHYTYPE_LCNXN:
>>>>>> +               return "LCNXN";
>>>>>> +       case B43_PHYTYPE_LCN40:
>>>>>> +               return "LCN40";
>>>>>> +       case B43_PHYTYPE_AC:
>>>>>> +               return "AC";
>>>>>> +       }
>>>>>> +       return "UNKNOWN";
>>>>>
>>>>> How about putting the PHY type ID into the string in the Unknown case?
>>>>> Or will it be printed somewhere else?
>>>>
>>>> Hm, maybe I don't see something obvious. How would you do that? Using
>>>> which function?
>>>>
>>>
>>> No need to, it is done here:
>>> b43info(dev->wl, "Found PHY: Analog %u, Type %d (%s), Revision %u\n",
>>>         analog_type, phy_type, b43_phy_name(dev, phy_type), phy_rev);
>>
>> Still, at least for my curiosity, is there a way to achieve what Gabor
>> suggested? Can we return dynamically-filled string in a function?
>>
>
> int sprintf(char *str, const char *format, ...);
> int snprintf(char *str, size_t size, const char *format, ...);

Yeah, but I can't use sprintf on locally-declared (inside function)
char array. Well, I can, but I can't result such an array.

So the solution is to declare char array in called, and pass that
array (and it's size) to the b43_phy_name.

Well, I really prefer Joe's solution implemented in V3 :)

-- 
Rafa?
