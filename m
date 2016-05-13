From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 13 May 2016 11:00:14 -0500
Subject: Need some reverse engineering effort.
In-Reply-To: <CACW9AP49qOSXQ8tNpdoJvk-0u0nprdq2QsVE7JqrM8VKSuMqeg@mail.gmail.com>
References: <CACW9AP49qOSXQ8tNpdoJvk-0u0nprdq2QsVE7JqrM8VKSuMqeg@mail.gmail.com>
Message-ID: <5735FA0E.1070004@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/13/2016 08:30 AM, Nirav Patel wrote:
> Tired of resending email due to HTML text error. Anyway now back to the subject:
>
> I have found some linux binaries for the wl (apsta) driver which can
> be easily reverse engineered.
> http://svn.dd-wrt.com/browser/src#linux/universal/linux-4.4/brcm/arm
> This contains the arm binaries. Look for other binaries here
> http://svn.dd-wrt.com/browser/src#linux/universal
> in this way: Browse the desired linux version (mips binaries are only
> in linux 2.x which are probably outdated) > brcm > architecture
> (probably arm or mipsel) > wl
> Since the binaries are almost separate for each file they can be
> easily reverse engineered.
> It seems that Hex-rays IDA (sadly so costly) would easily decompile as
> well as disassemble them.
>
> @Larry Can you please reverse engineer these binaries and upload the
> specs to the website?
> It would be of great help for b43 development. Thanks in advance.

If those binaries are so easily reverse engineered, I suggest you do them 
yourself. I used to do that, but I now have other responsibilities that occupy 
my time.

Larry
