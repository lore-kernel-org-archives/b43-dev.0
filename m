From: Arend van Spriel <arend@broadcom.com>
Date: Mon, 19 Jan 2015 16:45:08 +0100
Subject: b43 bcm43228 and linux 3.18.3
In-Reply-To: <CACaajQs1r1tE-GXv7cmAL9w8q2cwn_iiDttp6tLFB7BdSBNDPw@mail.gmail.com>
References: <CACaajQsqPMzwD=EqdD5_XfWAPmkn-52VVNHF1ntFZ6ofEH4D-w@mail.gmail.com>
 <CACaajQs1r1tE-GXv7cmAL9w8q2cwn_iiDttp6tLFB7BdSBNDPw@mail.gmail.com>
Message-ID: <54BD2684.30701@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vasiliy Tolstov <v.tolstov@selfip.ru>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

+ b43-dev at lists.infradead.org

On 01/19/15 13:20, Vasiliy Tolstov wrote:
> Anybody can helps me debug this?
>
> 2015-01-17 20:59 GMT+03:00 Vasiliy Tolstov<v.tolstov@selfip.ru>:
>> Hi all. I have 3.18.3 kernel and bcm43228, firstly all works fine, but
>> after connection with my zyxel router i can't ping it ip (after 1-2
>> min). Connection worked fin, but nothing transmitted =(.
>> I'm try to disable qos, but this not helps, i'm try to enable
>> verbose=3, but in dmesg nothing interesting. Time after time b43
>> driver moved from 5Ghz to 2.4Ghz to 5Ghz and so.

What do you mean by "moved from 5Ghz to 2.4Ghz..". You mean it is 
roaming between the two bands? Anyway, there is a b43 specific mailing 
list which I added.

Regards,
Arend

>> How can i debug this issue? I'm realy love free opensource drivers.
>> Thanks
>>
>> --
>> Vasiliy Tolstov,
>> e-mail: v.tolstov at selfip.ru
>> jabber: vase at selfip.ru
>
>
>
