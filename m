From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 24 Apr 2010 05:09:43 +0200
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
In-Reply-To: <4BD25D60.5000007@lwfinger.net>
References: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com> 
	<i2p69e28c911004231521m3c23db2excf59db2c52f0184d@mail.gmail.com> 
	<w2rb7f967271004231625pf533c5f9l82a5bd19f31c7355@mail.gmail.com> 
	<y2ob7f967271004231630qf700e479p5659fc5fc39a1e83@mail.gmail.com> 
	<o2z69e28c911004231703qa7012741p369f64b1723458e2@mail.gmail.com> 
	<4BD25D60.5000007@lwfinger.net>
Message-ID: <i2p69e28c911004232009i84a28bc1na652709264b1b005@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/4/24 Larry Finger <Larry.Finger@lwfinger.net>:
> On 04/23/2010 07:03 PM, G?bor Stefanik wrote:
>>
>> Looks like I got lpphy_op_software_rfkill wrong then.
>>
>> Larry, is the spec up to date on this matter?
>>
>
> The rfkill switch behaves just as expected on my machine. When I switch
> it off, I get the expected message in the log. When turned on, again the
> expected message, and it connects as expected.
>
> The OPs machine generates the on/off messages in b43. I do not think b43
> is responsible for not connecting.
>
> I have seen nothing in the specs about the rfkill mechanism. I'm not
> even certain that Broadcom implements it.

AFAIK it isn't called "rfkill" in the specs, but "enable/disable radio".

>
> Larry
>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
