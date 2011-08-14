From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 19:32:13 +0200
Subject: [PATCH V2 3.2 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <20110814191037.043b0839@milhouse>
References: <1313343581-4395-1-git-send-email-zajec5@gmail.com>
	<1313343581-4395-2-git-send-email-zajec5@gmail.com>
	<20110814191037.043b0839@milhouse>
Message-ID: <CACna6rwN43gM=b=gniqbQBwWa3S233hfgKbKVsVYENc_ZOR0rA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 19:10 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Sun, 14 Aug 2011 19:39:41 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> Some hardware with 64-bit DMA uses lower address word for setting
>> routing (translation) bit. Add workaround for such boards.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> V2: use (u64) to fix compilation on 32-bit systems
>
> Note that there are the upper_32_bits() and lower_32_bits()
> macros in kernel.h to address this problem.

I should have guess there is already sth for that.

Worth noting compiler trick in upper_32_bits.
((n) >> 16) >> 16
I didn't think of that :)

-- 
Rafa?
