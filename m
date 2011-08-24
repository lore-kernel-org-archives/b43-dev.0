From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 24 Aug 2011 23:12:49 +0200
Subject: [RFC][PATCH V2] b43: drop Kconfig option of forcing PIO mode
In-Reply-To: <20110824183128.GJ9770@tuxdriver.com>
References: <1313489647-8979-1-git-send-email-zajec5@gmail.com>
	<20110824183128.GJ9770@tuxdriver.com>
Message-ID: <CACna6rwiB+8NR=VHY_4n_85Khj-vxxH=crU3mUWnSEHU_yZMUQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <larry.finger@lwfinger.net>

W dniu 24 sierpnia 2011 20:31 u?ytkownik John W. Linville
<linville@tuxdriver.com> napisa?:
> On Tue, Aug 16, 2011 at 12:14:07PM +0200, Rafa? Mi?ecki wrote:
>> We have module param called use_pio which is much easier to use.
>>
>> Cc: Larry Finger <larry.finger@lwfinger.net>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> V2: include b43.h change
>>
>> Larry introduced use_pio with:
>> ? ? b43: Allow PIO mode to be selected at module load
>> I believe we can leave this simple module param and drop
>> CONFIG_B43_FORCE_PIO instead.
>
> Seems reasonable to me...any objections?

Thank you for taking care of this John. I hope to get patches straight
in the future (now, when I understand the way you treat RFC/RFT).

-- 
Rafa?
