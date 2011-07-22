From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 22 Jul 2011 12:58:37 +0200
Subject: [ANNOUNCEMENT] BCM43224 and BCM43225 support thanks to Poznan
	University of Technology
In-Reply-To: <CA+icZUXXxQN1wSiwbNwDc5npFpB4AVVzawM=ssgkAvRbhhPp2Q@mail.gmail.com>
References: <CACna6rxbwQUQXOn_11WyXG0zjLq107oJZv7aHoZ3B8sF-4HuHA@mail.gmail.com>
	<CA+icZUXXxQN1wSiwbNwDc5npFpB4AVVzawM=ssgkAvRbhhPp2Q@mail.gmail.com>
Message-ID: <CACna6rw7+KvLv_gcsx_fZhy4aaFBSFVedqnH5337JhFg7BQkrg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sedat.dilek@gmail.com
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

W dniu 22 lipca 2011 12:56 u?ytkownik Sedat Dilek
<sedat.dilek@googlemail.com> napisa?:
> 2011/7/22 Rafa? Mi?ecki <zajec5@gmail.com>:
>> Hi guys,
>>
>> As you hopefully noticed, I've spent a lot of time on Broadcom's cards
>> in the last few months. Adding bcma, modifying b43, fixing some bugs,
>> and so on... Today I've finally proposed enabling BCM43224 and
>> BCM43225 support, with a little of luck, still for 3.1 kernel.
>>
>> I've time for all of that thanks to Poznan University of Technology
>> (the one I study at). After my first success with BCM4321 they
>> proposed me to continue this project as part of my MSc work. Thanks to
>> that I could fully focus on b43 and related projects. Focusing on
>> another MSc work woudn't give me so much time and wouldn't result in
>> so fast development.
>>
>> I would like to say big "Thank You" to the University. It was one of
>> the most enjoyable projects during my studies!
>>
>>
>> Now, get the latest code and give me feedback for your BCM43224 or BCM43225! :)
>>
>> --
>> Rafa?
>> --
>
> First of all, a big thank you for all the work and to your University
> which supported you.
> From where shall people test? Does a GIT repository exist?
> Or you simply forgot to mention in your euphoria (I know it's end of semester)?

All the needed stuff is almost in witeless-testing git tree. The only
two patches you need to apply manually are recently sent:
[PATCH 1/2 3.1] b43: bus: fix memory corruption when setting driver's data
[PATCH 2/2 3.1???] b43: bcma: drop BROKEN

-- 
Rafa?
