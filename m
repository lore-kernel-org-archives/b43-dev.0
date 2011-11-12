From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 12 Nov 2011 21:18:19 +0100
Subject: [PATCH] b43-asm: Add 3 new virtual instructions.
In-Reply-To: <4E4ECAF6-F376-4467-8334-A40C971A3B22@ing.unibs.it>
References: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
 <20111112190501.3f24947e@milhouse>
 <6E171C19-E963-447F-B524-9E0A4F324F53@ing.unibs.it>
 <20111112201651.5c2b0191@milhouse>
 <4E4ECAF6-F376-4467-8334-A40C971A3B22@ing.unibs.it>
Message-ID: <CA+XFjirNHqXGhaVwsYbACJuct+sPqS-Jturs9McqTr8kUnaxgQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Nov 12, 2011 at 9:12 PM,  <francesco.gringoli@ing.unibs.it> wrote:
> On Nov 12, 2011, at 8:16 PM, Michael B?sch wrote:
>
>> On Sat, 12 Nov 2011 20:03:36 +0100
>> francesco.gringoli at ing.unibs.it wrote:
>>
>>> On Nov 12, 2011, at 7:05 PM, Michael B?sch wrote:
>>>
>>>> On Sat, 12 Nov 2011 18:31:21 +0100
>>>> francesco.gringoli at ing.unibs.it wrote:
>>>>
>>>>> ? ?orxh ? ?(r1 << 8) & 0x0100, r2 & ~0x0100, r2
>>>>
>>>> This is not really going to fly. If you want this highlevel stuff, you
>>>> should port a C compiler to the architecture.
>>>> This is assembly. It doesn't know about reg<<imm or similar stuff.
>>> Yes, you are right and, in fact, the patched assembler will just accept only what the cpu may execute, I does not pretend to be a C compiler. It's just another way for assembling "or with shift and select" (or jzx), and this way really enhances the readability of the assembly code. Give it a try :-).
>>>
>>> If I'm not wrong, it's like "mov 0x1234, r1"
>>
>> No.
>> It crosses the line where it does (pseudo)operations (like shift, and, or, etc..)
>> on non-const (non-immediate) stuff.
>
>> Just do a preprocessor or something like that, that translates your pseudo-insns
>> to real insns. Alternatively port a small C compiler.
>>
>> I also don't think that this is easier to read for people familiar to the CPU. And
>> you have to be familiar to the CPU when writing code for it.
> I initially started with a pre-processor but I soon realized that those three instructions were the only one whose readability could have been improved by the preprocessor itself.
>
>> I won't merge this. No way.
> Ok, anyway I urge to share with other researchers ?a new version of the standard ucode and for the moment I don't have more time to spend on the "preprocessor". I'm sorry but the new ucode source will require the patched assembler. As soon as I have finished some work on the N-PHY firmware I will come back to the preprocessor.
>
>> The "/* duplicate some complex_imm rules to avoid parentheses" part also is not
>> really merge-able as-is. yacc knows about operator precedence. If you want operator
>> precedence (to get rid of parenthesis), just use this yacc feature to implement this.
> Yes, I did it this way because "[reg|mem] << imm" is not assembly (as you say :-) ) and the assembler strictly checks that such syntax is used only with "orxh".

Well, in x86, we have "mov eax, es:[bx+di]". A lot more readable than,
say, "mov eax, es, bx, di".

>
> Regards,
> -Francesco
>
>>
>> --
>> Greetings, Michael.
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
