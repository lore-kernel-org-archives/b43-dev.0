From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 28 Sep 2017 19:00:25 -0500
Subject: Driver supporting ap mode in BCM43142
In-Reply-To: <CAK61LuBQ15HeEzcRsvPG2AumbuWKwVM4bfCRMmNQnRd6zMzpqw@mail.gmail.com>
References: <CAK61LuBQ15HeEzcRsvPG2AumbuWKwVM4bfCRMmNQnRd6zMzpqw@mail.gmail.com>
Message-ID: <d5c7edad-c9af-8229-98bf-0c19d568fe0d@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/28/2017 11:36 AM, jay pokarna wrote:
> Hey,
>            I am currently using BCM43142 chip on my laptop. I am in
> need of a driver that supports ap-mode with this chipset. Is there any
> driver that supports ap-mode with it? If not, when can I expect the
> driver to be released?
> 
> The PCI-ID is 14e4:4365.

That chip is not supported by any open-source driver. Your options would be to 
modify b43 for that chip (not recommended), or get Broadcom to release their 
version of wl that does support AP mode. Yes, they have one, but they only 
release the STA version.

Larry
