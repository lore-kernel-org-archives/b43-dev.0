From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 10 Sep 2012 11:05:33 -0500
Subject: b43-open driver missing
In-Reply-To: <CANDpMDvU9Yk37tdiN=i049UwSi15P68D5ZtQYH2KKeMhB5XUvQ@mail.gmail.com>
References: <B25C1849-6EA9-4AA9-8794-85B99186F25C@gmail.com>
 <CANDpMDvU9Yk37tdiN=i049UwSi15P68D5ZtQYH2KKeMhB5XUvQ@mail.gmail.com>
Message-ID: <504E0FCD.4050105@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/10/2012 09:31 AM, Peter Lemenkov wrote:
> Hello All.
>
> 2012/9/10 Robert Dowell <bagdadbob66@gmail.com>:
>> While installing the ppc-x64 version of Fedora x86_64 on an IMac I got the following message:
>>
>> [27.045279]Error: Firmware file "b43-open/ucode5.fw" not found.
>
> You need to install b43-openfwwf package first (actually I though it
> should be installed by Anaconda by default - now I'm not so sure).
>
>> The only problem I'm having is the fact that when I get those errors the system freezes at that point and I use power it off and reboot.
>
> This sounds like another issue.

Robert:

Driver b43 only tries to load firmware from /lib/firmware/b43-open/ when the 
request for firmware from /lib/firmware/b43/ fails. As the open firmware only 
works for a very limited set of devices, you should concentrate on installing 
the proprietary (normal) firmware. The following instructions will work for 
Fedora as long as you have a network connection:

sudo yum install b43-fwcutter wget
wget http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2
tar xjf broadcom-wl-5.100.138.tar.bz2
sudo b43-fwcutter -w /lib/firmware broadcom-wl-5.100.138/linux/wl_apsta.o

Larry
