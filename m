From: crquan <crquan@gmail.com>
Date: Sun, 9 Mar 2014 22:36:45 -0700
Subject: b43 slow performance of high packet loss, linux-3.13 running on
 macbook10,1, is there anyway to reduce packet loss / improve performance ?
In-Reply-To: <CACna6rwpLNNT2njE24q36P0T+T9nD6nZ0TLZQ8MTHmAAcX+2vg@mail.gmail.com>
References: <CAH5vBdKfpEgeK0Kv_abnzWDUm+qca7V_atcqgV0tgMy4DyzPDw@mail.gmail.com>
 <CACna6rwpLNNT2njE24q36P0T+T9nD6nZ0TLZQ8MTHmAAcX+2vg@mail.gmail.com>
Message-ID: <CAH5vBdKFotdLm3jfmuvyN_NZrOupn5RevkKot5mdhc2Yzbck=Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, Feb 24, 2014 at 12:46 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 2014-02-24 9:23 GMT+01:00 crquan <crquan@gmail.com>:
>> In that table, it has my device 14e4:4331 supported b/g only, I tried
>> to setup my wifi router to be b/g only but seems didn't help, is there
>> anything else (or iw commands) I can try ?
>>
>> 14e4:4331   yes (3.2-rc3+)   BCM4331     b/g    HT (r1)           wl
>
> Unfortunately, no. b43 has only basic support for BCM4331. I've
> managed to connect BCM4331 (with it's ugly modified mini PCIe
> connector) to my PC, but I still didn't manage to find antenna
> connectors (W.FL2).

While, do you know anyway we can improve this?
I have some experience at kernel drivers level, but not with wireless devices,
could you tell if I can help on improving this?

I tested the same macbook bcm4331 in different WLANs, felt in company
wifi network
(that's provided with cisco enterprise wlan controllers I think) the
wifi connection is not bad,

at home with wifi modem provided by at&t, each wifi session cannot work stably
over 5 minutes, since some point the long time ping doesn't get
response anymore,
even worse is NetworkManager doesn't detect the failure doesn't auto reconnect,
I have to choose from menu to connect same hotspot again to continue wifi,

at some coffee bars each wifi session neither work stably over a
couple of minutes,

Do you think is it possible bcm4331 has compatibility issue with some
wifi routers?
I'm going to buy a different wifi router to try, do you have any idea
which wifi router or brand better to try?


Thanks,
