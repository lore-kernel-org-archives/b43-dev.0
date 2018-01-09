From: Arend van Spriel <arend.vanspriel@broadcom.com>
Date: Tue, 9 Jan 2018 12:11:58 +0100
Subject: [PATCH v2] b43: Replace mdelay with usleep_range in
 b43_radio_2057_init_post
In-Reply-To: <555069e4-dd2c-b17a-d44f-9258558cb98d@gmail.com>
References: <1515462006-6144-1-git-send-email-baijiaju1990@gmail.com>
 <20180109083541.GA13460@kroah.com>
 <4201e8cd-81ba-ab7d-2a0d-af957c5dfed6@gmail.com>
 <5A54864A.8020006@broadcom.com>
 <555069e4-dd2c-b17a-d44f-9258558cb98d@gmail.com>
Message-ID: <5A54A37E.3050605@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, Larry.Finger@lwfinger.net
Cc: kvalo@codeaurora.org, kstewart@linuxfoundation.org, johannes.berg@intel.com, tiwai@suse.de, colin.king@canonical.com, andrew.zaborowski@intel.com, linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, b43-dev@lists.infradead.org

On 1/9/2018 10:47 AM, Jia-Ju Bai wrote:
>
>
> On 2018/1/9 17:07, Arend van Spriel wrote:
>> On 1/9/2018 9:39 AM, Jia-Ju Bai wrote:
>>>
>>>
>>> On 2018/1/9 16:35, Greg KH wrote:
>>>> On Tue, Jan 09, 2018 at 09:40:06AM +0800, Jia-Ju Bai wrote:
>>>>> b43_radio_2057_init_post is not called in an interrupt handler
>>>>> nor holding a spinlock.
>>>>> The function mdelay in it can be replaced with usleep_range,
>>>>> to reduce busy wait.
>>>>>
>>>>> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
>>>>> ---
>>>>> v2:
>>>>> * Replace mdelay with usleep_range, instead of msleep in v1.
>>>>>    Thank Larry for good advice.
>>>>> ---
>>>>>   drivers/net/wireless/broadcom/b43/phy_n.c |    2 +-
>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c
>>>>> b/drivers/net/wireless/broadcom/b43/phy_n.c
>>>>> index a5557d7..f2a2f41 100644
>>>>> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
>>>>> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
>>>>> @@ -1031,7 +1031,7 @@ static void b43_radio_2057_init_post(struct
>>>>> b43_wldev *dev)
>>>>>       b43_radio_set(dev, R2057_RFPLL_MISC_CAL_RESETN, 0x78);
>>>>>       b43_radio_set(dev, R2057_XTAL_CONFIG2, 0x80);
>>>>> -    mdelay(2);
>>>>> +    usleep_range(2000, 3000);
>>>> Where did 3000 come from?  Are you sure about that?
>>>
>>> I am not very sure, and I use it according to Larry's message:
>>
>> Hi Jia-Ju Bai,
>>
>> The duration here is for settling the registers so hardware can pick
>> it up. Right after this they are written again. Now this is during
>> initialization of the radio so not time critical, but probably
>> anything in the range of 2000..3000 would also have been fine.
>
> Hi Arend,
>
> Thanks for your detailed explanation :)
> So I think usleep_range(2000, 3000) is okay.

Sure.

Regards,
Arend
