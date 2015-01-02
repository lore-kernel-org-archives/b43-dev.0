From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 2 Jan 2015 13:06:31 +0100
Subject: [PATCH] net: wireless: b43legacy: radio.c: Remove unused function
In-Reply-To: <CACna6rznUcqGTK0t1k=kjn0NVLycq865780ozyB+VYu78d_BSg@mail.gmail.com>
References: <1420127170-28421-1-git-send-email-rickard_strandqvist@spectrumdigital.se>
 <CACna6rznUcqGTK0t1k=kjn0NVLycq865780ozyB+VYu78d_BSg@mail.gmail.com>
Message-ID: <CACna6rxbGRdw7XSYvHAJGxJvMVwjVbAL4ynBM3m9rNggh7gCVQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rickard Strandqvist <rickard_strandqvist@spectrumdigital.se>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 2 January 2015 at 13:05, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 1 January 2015 at 16:46, Rickard Strandqvist
> <rickard_strandqvist@spectrumdigital.se> wrote:
>> Remove the function b43legacy_radio_set_tx_iq() that is not used anywhere.
>>
>> This was partially found by using a static code analysis program called cppcheck.
>
> It seems to be for A-PHY based hardware (with 0x2060 radio id) which
> is not handled by b43legacy. Should be safe to drop this code (we
> won't likely need it).
>
> Ack

For future, we prefix patches with just a driver name. So this could
be simply called
b43legacy: radio.c: Remove unused function

-- 
Rafa?
