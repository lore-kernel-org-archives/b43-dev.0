From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 15:16:40 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <20110912131921.3d32b719@milhouse>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<CA+XFjioSx76LvY0WUCrYYUgnzUj-vdDMfdA_vqxjCwVew6HiPQ@mail.gmail.com>
	<20110912112514.344cf429@milhouse>
	<44D50757-55C3-4838-A348-98673FCDBF90@ing.unibs.it>
	<20110912123559.655e4dbd@milhouse>
	<B0B2605A-E101-40D5-AD61-9EA490A2F502@ing.unibs.it>
	<20110912131921.3d32b719@milhouse>
Message-ID: <7AFFEE88-CE12-4466-A3D3-5368138AA757@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 1:19 PM, Michael B?sch wrote:

> On Mon, 12 Sep 2011 12:58:52 +0200
> francesco.gringoli at ing.unibs.it wrote:
> 
>> On Sep 12, 2011, at 12:35 PM, Michael B?sch wrote:
>> 
>>> On Mon, 12 Sep 2011 12:09:01 +0200
>>> francesco.gringoli at ing.unibs.it wrote:
>>> 
>>>> but trying on a = 0x8000 and b = 0x7fff helped me understanding. a - b = 0x8000 + 2'(0x7fff) = 0x0001 > 0. While 0x8000 < 0x7fff.
>>> 
>>> I don't get it.
>>> Can you write simple pseudocode for your instruction?
>> Will try for jdn.
>> 
>>> For example, for jls, we have this pseudocode:
>>> 
>>> if (xxx < yyy)
>>>   pc := jjj
>>> (where xxx and yyy are two's complement)
>>> 
>> 
>> ** jump if difference is negative
>> 
>> 0d6 xxx yyy jjj
>> 
>> if ( xxx - yyy < 0 )
>> 	pc := jjj
>> 
>> C-pseudocode for jdn
>> 
>> 	short c = xxx - yyy;
>> 	if ( c < 0 )
>> 		goto jjj;
> 
> Ok. So the existing signed-compare jumps look at the carry of the subtraction
> operation, but the new jdX instructions look at bit 0x8000 of the subtraction
> result. (if set -> negative, otherwise positive). jdX ignores the carry.
Exactly. For instance for jdn we have

0d6 xxx yyy jjj
	tmp := xxx - yyy;
	if( tmp & 0x8000 )
		pc := jjj

	or alternatively

	tmp := xxx - yyy;
	if( tmp < 0 )
		pc := jjj

Tested both in the firmware and they are the same.

Do you agree with those names?

Thanks,
-Francesco
