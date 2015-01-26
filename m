From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 26 Jan 2015 09:12:20 +0100
Subject: [PATCH] b43: AC-PHY: prepare place for developing new PHY support
In-Reply-To: <87egqiggzi.fsf@kamboji.qca.qualcomm.com>
References: <1422205297-24767-1-git-send-email-zajec5@gmail.com>
 <87egqiggzi.fsf@kamboji.qca.qualcomm.com>
Message-ID: <CACna6rx8LQZLPmAp8mgXro_5=ppprKHrRe7L-VFEU=Qdz60Edw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Hauke Mehrtens <hauke@hauke-m.de>

On 26 January 2015 at 08:04, Kalle Valo <kvalo@codeaurora.org> wrote:
> Rafa? Mi?ecki <zajec5@gmail.com> writes:
>
>> There are new (not anymore?) Broadcom 802.11ac wireless cards based on
>> chipsets like BCM4352 and BCM4360. They use a new PHY type (called
>> simply AC) that will require new specific code.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>>
>> Kalle: as this commit & Kconfig say, this is just a beginning of new
>> PHY type support. In the past we used development model this patch
>> follows. Code for new PHY was added patch by patch. Adding everything
>> at once would require a huge patchset & development behing the doors.
>> Also sending small patches allows better review of changes & should
>> result in a better code quality. Let me know if there are any
>> problems.
>
> Sounds good to me. Just keep dependency to BROKEN until it's usable and
> make sure that the code compiles after every patch.

Alright! :)

-- 
Rafa?
