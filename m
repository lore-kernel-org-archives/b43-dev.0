From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 15 Oct 2010 13:01:36 +0200
Subject: [PATCH 2/3] b43: N-PHY: define registers names for 2056 radio
In-Reply-To: <AANLkTi=YPcjudD5u0oLOmCj_PQqSKWCdPab45uLCiD76@mail.gmail.com>
References: <1287090064-14607-1-git-send-email-zajec5@gmail.com>
	<1287090064-14607-2-git-send-email-zajec5@gmail.com>
	<AANLkTi=YPcjudD5u0oLOmCj_PQqSKWCdPab45uLCiD76@mail.gmail.com>
Message-ID: <AANLkTinaeO-6M9DbvW2ZHJHyrBhRK+Gdu+4++0jFLqQA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Luis R. Rodriguez" <mcgrof@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>

W dniu 14 pa?dziernika 2010 23:23 u?ytkownik Luis R. Rodriguez
<mcgrof@gmail.com> napisa?:
> 2010/10/14 Rafa? Mi?ecki <zajec5@gmail.com>:
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> Cc: Henry Ptasinski <henryp@broadcom.com>
>> Cc: Brett Rudley <brudley@broadcom.com>
>> Cc: Nohee Ko <noheek@broadcom.com>
>> ---
>> ?drivers/net/wireless/b43/radio_2056.h | ?522 +++++++++++++++++++++++++++++++++
>> ?1 files changed, 522 insertions(+), 0 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/radio_2056.h b/drivers/net/wireless/b43/radio_2056.h
>> index 60341d7..462c9fd 100644
>> --- a/drivers/net/wireless/b43/radio_2056.h
>> +++ b/drivers/net/wireless/b43/radio_2056.h
>> @@ -4,6 +4,9 @@
>>
>> ? Copyright (c) 2010 Rafa? Mi?ecki <zajec5@gmail.com>
>>
>> + ?Some parts of the code in this file are derived from the brcm80211
>> + ?driver ?Copyright (c) 2010 Broadcom Corporation
>> +
>
> You forgot to include their full license here.

As discussed in another topic, I didn't add any copyrightable data
here. "Just numbers". I added info about source of defines as some
kind of over-kindness ;)

-- 
Rafa?
