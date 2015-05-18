From: Michael Lacks <mlacks@live.com>
Date: Tue, 19 May 2015 05:54:11 +1000
Subject: 2015 Macbook Pro Wireless Issue
In-Reply-To: <CAG=oC7R_Bqb3aJoC=ybkpAJCSNzQ7WZXaM59Zv+=DFBY2Z-ERA@mail.gmail.com>
References: <CACmePyE8fK9eD7JTzS5oUk-Q573MeY_of2uGQc=TaqDF4LmkuA@mail.gmail.com>
 <CAG=oC7R_Bqb3aJoC=ybkpAJCSNzQ7WZXaM59Zv+=DFBY2Z-ERA@mail.gmail.com>
Message-ID: <CACmePyF=1VdecySzEsEFh2FbVcyYbKFnJO9tbCpOFyE5ogA4rQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

No joy. Here is the output I receive:

[michaellacks at localhost ~]$ sudo yum install akmod-wl
Loaded plugins: langpacks
rpmfusion-free-updates                                      | 2.7 kB  00:00
rpmfusion-nonfree-updates                                   | 2.7 kB  00:00
updates/21/x86_64/metalink                                  | 3.4 kB  00:00
Package akmod-wl-6.30.223.248-7.1.fc21.x86_64 already installed and
latest version
Nothing to do

Additionally, I keep receiving messages on the desktop alerting me
that a problem in the kernel has occurred. It isn't very specific, so
I'm not sure if it is related.

On 5/19/15, mark.baas123 at gmail.com <mark.baas123@gmail.com> wrote:
> Try yum install akmod-wl
>
> On Mon, May 18, 2015 at 4:06 AM, Michael Lacks <mlacks@live.com> wrote:
>> Hello, I am running Fedora 21 on a new Macbook Pro (not the newest one
>> with one USB port, but the version right before, without the force
>> touch pad and without a disc drive. I bought it brand new in late
>> February.
>>
>> I'm having issues with the wireless driver.
>>
>> Broadcom Corporation BCM4360 802.11ac Wireless Network Adapter
>> [14e4:43a0] (rev 03)
>>
>> I have run yum update, installed the most recent Free and Nonfree
>> Repositories from RPM fusion, and installed broadcom-wl to no joy.
>> I've considered learning to build the driver; I have never gone that
>> deep into writing code but I wouldn't mind the challenge if it was
>> necessary. Request assistance if possible.
>>
>> Have a great day,
>> Mike
>>
>> _______________________________________________
>> b43-dev mailing list
>> b43-dev at lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>
