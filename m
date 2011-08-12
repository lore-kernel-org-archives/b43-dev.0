From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 12 Aug 2011 10:36:37 -0500
Subject: [PATCH V2 4/4] b43: HT-PHY: init: init BPHY and upload 0x1a table
In-Reply-To: <CACna6ryX=N+vZ4-+CRkcZatB81U-5Acm_NfH9eNMrWZwpAvfVw@mail.gmail.com>
References: <1313155654-8988-4-git-send-email-zajec5@gmail.com>	<4E4543D5.9070006@lwfinger.net>
	<CACna6ryX=N+vZ4-+CRkcZatB81U-5Acm_NfH9eNMrWZwpAvfVw@mail.gmail.com>
Message-ID: <4E454885.1060107@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 08/12/2011 10:22 AM, Rafa? Mi?ecki wrote:
> W dniu 12 sierpnia 2011 17:16 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net>  napisa?:
>> On 08/12/2011 08:27 AM, Rafa? Mi?ecki wrote:
>>>
>>> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
>>> ---
>>> BPHY is something partially known from N-PHY.
>>>
>>> This 0x1a table with 0xc0 offset is a little tricky. We already upload
>>> something like that earlier, but this is needed to stop radio going crazy
>>> and transmissint crap.
>>
>> I don't care that the commit message contains "crap", but others might. I
>> do, however, want you to change from the nonexistent "transmissint" to
>> "transmission" or "transmitting", whichever you mean.
>>
>> Other than that, ACK. Note, I have no HT device, thus I have done no
>> testing.
>
> Err, that's comment, not commit message. Won't be visible in "git log".
>
> Should I still change it?

Sorry I missed the ---. In the comment, it is OK.

Larry
