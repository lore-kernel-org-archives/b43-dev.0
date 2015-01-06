From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 6 Jan 2015 19:19:52 +0100
Subject: [PATCH] b43legacy: Remove unused function
In-Reply-To: <1420567175-17323-1-git-send-email-rickard_strandqvist@spectrumdigital.se>
References: <1420567175-17323-1-git-send-email-rickard_strandqvist@spectrumdigital.se>
Message-ID: <CACna6ryS_+eYi3ODXMngCxwoe8JLuWQyaCNNmhJFHM+g7H_Xzw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rickard Strandqvist <rickard_strandqvist@spectrumdigital.se>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 6 January 2015 at 18:59, Rickard Strandqvist
<rickard_strandqvist@spectrumdigital.se> wrote:
> Remove the function b43legacy_radio_set_tx_iq() that is not used anywhere.
>
> This was partially found by using a static code analysis program called cppcheck.
>
> Signed-off-by: Rickard Strandqvist <rickard_strandqvist@spectrumdigital.se>

Acked-by: Rafa? Mi?ecki <zajec5@gmail.com>
