From: Stuart Longland <redhatter@gentoo.org>
Date: Sun, 05 Jun 2011 10:08:30 +1000
Subject: b43 and late 2008 model Apple MacBook
Message-ID: <4DEAC8FE.5010502@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

I've been battling the wireless card in this late-2008 model MacBook
which dual-boots Mac OS X (which works fine on wireless) and Gentoo
Linux, which has been giving me no end of grief.

When I first compiled the driver, I used the b43-fwcutter and
b43-firmware packages in the Gentoo Portage tree.  The driver however
was expecting a b43/ucode16_mimo.fw file not provided by any of these.
It pointed me to the usual page with instructions for various cards.

I read through the instructions, and tried a few different firmware
versions, with no success.

Searching, I stumbled on this:
http://article.gmane.org/gmane.linux.drivers.bcm54xx.devel/11582

This gets the card at least connecting, but the link barely lasts after
the first packet.

Kernel being run:
> commit 678562e527fd9979f1765ffa1eb34738fc174425
> Author: Greg Kroah-Hartman <gregkh@suse.de>
> Date:   Mon May 9 15:16:23 2011 -0700
> 
>     Linux 2.6.38.6

I replaced the version of b43-fwcutter with one fetched from git:
> commit 1a43ed005f3ffe10b0ca3d6f2975870c8d505b92
> Author: Michael Buesch <mb@bu3sch.de>
> Date:   Wed Mar 23 16:27:55 2011 +0100
> 
>     fwcutter: Bump version
>     
>     Signed-off-by: Michael Buesch <mb@bu3sch.de>

The firmware was downloaded from the link referenced in the post I
stumbled on.  Its defining features:
> 3363e3a6b3d9d73c49dea870c7834eac  /root/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2
> 0732e266f36755ae62fdc940c57bf989f7ee62ea  /root/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2
> 26a8c370f48fc129d0731cfd751c36cae1419b0bc8ca35781126744e60eae009  /root/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2
> -rw-r--r-- 1 root root 1596823 Apr 30 21:58 /root/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2

which gave me these firmware files after extraction:
> 0d3bb1963c88ac29a12fe0bd733b83cb  /lib/firmware/b43/a0g0bsinitvals4.fw
> 840242b574a22bcf60a6d05f04b1b602  /lib/firmware/b43/a0g0bsinitvals5.fw
> 6e81767efd4f5c8811e0ab421ea49bad  /lib/firmware/b43/a0g0bsinitvals9.fw
> f889fc1a3d962cf0375c9894f9f84342  /lib/firmware/b43/a0g0initvals4.fw
> 04d8c940dfbeb1431247c25f0a0e112a  /lib/firmware/b43/a0g0initvals5.fw
> 389c29ca37b15d6e404be8b27ccb8605  /lib/firmware/b43/a0g0initvals9.fw
> 53d8f8797f152adf0d67075c10f54944  /lib/firmware/b43/a0g1bsinitvals13.fw
> e7ea64274e3e6ba75f18d9312d3c4ca1  /lib/firmware/b43/a0g1bsinitvals5.fw
> 741ee9cb4054678486c2114324b3ba21  /lib/firmware/b43/a0g1bsinitvals9.fw
> 2520df54c2b52510c5650894c4f9ca4e  /lib/firmware/b43/a0g1initvals13.fw
> 47ea5a33d5ef57aa05e1dfc1a1d88991  /lib/firmware/b43/a0g1initvals5.fw
> ae9fb38d432e7c0dbb0037ae7fb493ca  /lib/firmware/b43/a0g1initvals9.fw
> 83705d006613ad88576f216088361e5a  /lib/firmware/b43/b0g0bsinitvals13.fw
> 76d2f383cac65cce4dba740fa8b3231b  /lib/firmware/b43/b0g0bsinitvals4.fw
> 73a3716b1c3e2577f58dca7e39737796  /lib/firmware/b43/b0g0bsinitvals5.fw
> 624129c2598b5effb6a3bfca4d1a5bfe  /lib/firmware/b43/b0g0bsinitvals9.fw
> 6ae4f4c458a26703357451f998bde2b0  /lib/firmware/b43/b0g0initvals13.fw
> a95795cc785678f8d2f275ffbbfbe9a2  /lib/firmware/b43/b0g0initvals4.fw
> 6673aad51324d78c0cf4678386394ce4  /lib/firmware/b43/b0g0initvals5.fw
> 64c5e83e29777066ebab108da7dfb670  /lib/firmware/b43/b0g0initvals9.fw
> 3d57555bf1268adbdac3e841f6152c94  /lib/firmware/b43/lp0bsinitvals13.fw
> 3d57555bf1268adbdac3e841f6152c94  /lib/firmware/b43/lp0bsinitvals14.fw
> 826db89379ed307e4090df9c6998f1e4  /lib/firmware/b43/lp0bsinitvals15.fw
> c590f48676c8105fc06817d3bea2b1d8  /lib/firmware/b43/lp0bsinitvals16.fw
> a73a6438d67afd64e55bf0eb0759bc35  /lib/firmware/b43/lp0initvals13.fw
> 2db9080dc5f069a9cdbd5effdb87b28e  /lib/firmware/b43/lp0initvals14.fw
> c9376ca3b142d8f4c78e8b51246fd177  /lib/firmware/b43/lp0initvals15.fw
> d9535c72b9352f96dab326d1e8ad91c5  /lib/firmware/b43/lp0initvals16.fw
> 912911e9bfcc070bc5450166c074fae6  /lib/firmware/b43/n0absinitvals11.fw
> c4cfa57fda473ab86fb0dfc4a250d462  /lib/firmware/b43/n0bsinitvals11.fw
> 24e2c8a46964a034bf468daf68a4fd28  /lib/firmware/b43/n0bsinitvals16.fw
> 17366e345616a9270db3c3616039ed2f  /lib/firmware/b43/n0initvals11.fw
> 81061be7a97b0b767e5592d864b7cfe9  /lib/firmware/b43/n0initvals16.fw
> 056cf484a99c2191fb3bb913b9b5300a  /lib/firmware/b43/pcm4.fw
> 52c23becb937e692088baf750a40c15f  /lib/firmware/b43/pcm5.fw
> 05c0af306c9a4a43c9999327825d54bd  /lib/firmware/b43/sslpn0bsinitvals16.fw
> b24f45a5bcf430121c4223c5ecbc658f  /lib/firmware/b43/sslpn0initvals16.fw
> 05c0af306c9a4a43c9999327825d54bd  /lib/firmware/b43/sslpn1bsinitvals20.fw
> e89cf052bd75fa3a2452429e8c645e29  /lib/firmware/b43/sslpn1initvals20.fw
> 05c0af306c9a4a43c9999327825d54bd  /lib/firmware/b43/sslpn2bsinitvals17.fw
> 05c0af306c9a4a43c9999327825d54bd  /lib/firmware/b43/sslpn2bsinitvals19.fw
> 83d462950750909c08123cd7a7494c74  /lib/firmware/b43/sslpn2initvals17.fw
> d59f9a30594737edf6502c644457857a  /lib/firmware/b43/sslpn2initvals19.fw
> 101db9372f61bffebdd57660f44111cb  /lib/firmware/b43/ucode11.fw
> 4950824632ef88fb9d52269053ccfe05  /lib/firmware/b43/ucode13.fw
> a7cbf3f35fe9bf84fa002208b9b05ad2  /lib/firmware/b43/ucode14.fw
> d007cc63aae6fe0f316f0e268f5fd6b3  /lib/firmware/b43/ucode15.fw
> dfd6dafa26d5111c86fb0f7d2ea9b2f7  /lib/firmware/b43/ucode16_lp.fw
> f1bb56e1ea8abe0b906c39dc3dd15ec9  /lib/firmware/b43/ucode16_mimo.fw
> 12744229b3fada7bc8a5df606e263823  /lib/firmware/b43/ucode16_sslpn.fw
> 6e88c8deb866bde8d3d0bbecea6a93d6  /lib/firmware/b43/ucode16_sslpn_nobt.fw
> ad5fb03fcb634112d54fedfdae23329d  /lib/firmware/b43/ucode17.fw
> 39b2e461daf5135cc2350e4aef9ab7e2  /lib/firmware/b43/ucode19.fw
> eded90fb45001994a7b780c12dddef23  /lib/firmware/b43/ucode20.fw
> e17039f810367dd11334db1424afd26e  /lib/firmware/b43/ucode4.fw
> 8d62cc0af19e43e237d996ff6d1b33a8  /lib/firmware/b43/ucode5.fw
> 5c188fd4ce4b33be9bd184fe3cbfa3f3  /lib/firmware/b43/ucode9.fw
> 98d6321d17291854cedb02d04a6bce086a18561e  /lib/firmware/b43/a0g0bsinitvals4.fw
> 4e871e262c5511817a8685ad5fe8e3b50a3b230d  /lib/firmware/b43/a0g0bsinitvals5.fw
> 0f0534de971c9d9eac39990d171b10e2eacd678c  /lib/firmware/b43/a0g0bsinitvals9.fw
> 664eac82bbf55ba8c803a2559966ed45f694edf7  /lib/firmware/b43/a0g0initvals4.fw
> cf8860eb043205db494e909b4d02e3b55f993474  /lib/firmware/b43/a0g0initvals5.fw
> 5a7d6bddc3ca4723167680cf3f2f92009126ee78  /lib/firmware/b43/a0g0initvals9.fw
> 519c59e1c49ae1d3ebbb2b11df16bab364c95054  /lib/firmware/b43/a0g1bsinitvals13.fw
> 2ce3801dd34258abbefd2a3963dba8aa5fa59d76  /lib/firmware/b43/a0g1bsinitvals5.fw
> ac0e20ea6d5768de16f4ba7123a7e5a709015348  /lib/firmware/b43/a0g1bsinitvals9.fw
> 3c6f42ea0b730d0ec0288c3f3225ef9eb5a18fb2  /lib/firmware/b43/a0g1initvals13.fw
> c254beae15ac8b6dd53ea8a94ff729f50cdc55ed  /lib/firmware/b43/a0g1initvals5.fw
> 365755718dd2f57af681a4f4a3260aff4782670f  /lib/firmware/b43/a0g1initvals9.fw
> f3faa7ec034bd29469e579d30c62ab64593d543e  /lib/firmware/b43/b0g0bsinitvals13.fw
> 66d68e8e53668ac0ac304e5bca570aca26b2bafb  /lib/firmware/b43/b0g0bsinitvals4.fw
> 59aebdb979864f64781dd388f7ee86a0ff292110  /lib/firmware/b43/b0g0bsinitvals5.fw
> 65ab9fb34983dff511c16ad5a4d3f1a0a6ed301b  /lib/firmware/b43/b0g0bsinitvals9.fw
> 06f8bb8910fa4c9fcaccb8a7f669bd02fdfecefb  /lib/firmware/b43/b0g0initvals13.fw
> 17d99086da4ffa2d35d13e36251bc0cc16622c79  /lib/firmware/b43/b0g0initvals4.fw
> 35743e3afae3826d280083007aeed88d43880055  /lib/firmware/b43/b0g0initvals5.fw
> 0917baf5db41630f8fb38e0e959cf22965b0f4f0  /lib/firmware/b43/b0g0initvals9.fw
> 8a5f499d80096db7d3aeaad042c8c37c7455f90b  /lib/firmware/b43/lp0bsinitvals13.fw
> 8a5f499d80096db7d3aeaad042c8c37c7455f90b  /lib/firmware/b43/lp0bsinitvals14.fw
> 950ada8affcf3869f0982ba595cafd901600ad89  /lib/firmware/b43/lp0bsinitvals15.fw
> 647895777956f8d67eba5eb5e50f9acf57844687  /lib/firmware/b43/lp0bsinitvals16.fw
> 6a8c1a772fbf0858009b2dfe133dc5d35acd41ca  /lib/firmware/b43/lp0initvals13.fw
> 44ce001cab71ffa53dd05d0f2206dc0a331ed87b  /lib/firmware/b43/lp0initvals14.fw
> 678d8bf69c9b15c176b8daae7226f7ea0010266f  /lib/firmware/b43/lp0initvals15.fw
> 7c4ea5e71bb0df08076ec54914f0916b0f4fcab1  /lib/firmware/b43/lp0initvals16.fw
> 26a26b2b5fe808dc175f08bd4ba69b9e94ab2556  /lib/firmware/b43/n0absinitvals11.fw
> 09141f6ae1705d17d38f307d593a41d9463c5e67  /lib/firmware/b43/n0bsinitvals11.fw
> 90480d61476b8b2b5bd93d207398281e0c4aca3b  /lib/firmware/b43/n0bsinitvals16.fw
> 79284d1b0f9d2dfd7a9bfdf8868ec5769bddab09  /lib/firmware/b43/n0initvals11.fw
> 581c0b3aff636ecce451e5b493a726a2f8b619e1  /lib/firmware/b43/n0initvals16.fw
> 2cc0cf9ec946d415c14ee2a9d044360b34d8a0b6  /lib/firmware/b43/pcm4.fw
> 5b39161a38e34b9280bb5f6e4e30073bc361bdad  /lib/firmware/b43/pcm5.fw
> e1c605f11bfddd7b8e155053d3dea53678de0eab  /lib/firmware/b43/sslpn0bsinitvals16.fw
> f789f0437eba00b762f8659d42d6e79ed608d044  /lib/firmware/b43/sslpn0initvals16.fw
> e1c605f11bfddd7b8e155053d3dea53678de0eab  /lib/firmware/b43/sslpn1bsinitvals20.fw
> ff76ecc5dfd77467d8677d57ead7861a004434f9  /lib/firmware/b43/sslpn1initvals20.fw
> e1c605f11bfddd7b8e155053d3dea53678de0eab  /lib/firmware/b43/sslpn2bsinitvals17.fw
> e1c605f11bfddd7b8e155053d3dea53678de0eab  /lib/firmware/b43/sslpn2bsinitvals19.fw
> 4d9c0608625fbcc06918d0b6d84d6f5d1a8d430c  /lib/firmware/b43/sslpn2initvals17.fw
> 1b6e279d7ee71ac9afa17d9b6f130331c9b96795  /lib/firmware/b43/sslpn2initvals19.fw
> 2c598a67d23b809acc24e7c98dbc4cfb8d11e02b  /lib/firmware/b43/ucode11.fw
> f4d74becf568534b6fd366c2c348465ed82f4b43  /lib/firmware/b43/ucode13.fw
> 651190e013ab403434985fca7a5beb4355248467  /lib/firmware/b43/ucode14.fw
> 449dc4ee4273fbbcef22c5153d8c98527798cbd2  /lib/firmware/b43/ucode15.fw
> 5f173c4c4a99a3373d472cabd8df33639e17be7e  /lib/firmware/b43/ucode16_lp.fw
> 36eb2ac083357c5cdca1b324c6a5dc06347db0af  /lib/firmware/b43/ucode16_mimo.fw
> 62c7f779b85987c0e460ec835bbe2b06e71524e9  /lib/firmware/b43/ucode16_sslpn.fw
> 305e828464a72bf2a62f190a24e657f87484fb47  /lib/firmware/b43/ucode16_sslpn_nobt.fw
> 2137d54765202d19438d2d1545d7a6483a8fa262  /lib/firmware/b43/ucode17.fw
> ec132144504a32a09349aaef52d464f25b1b7e01  /lib/firmware/b43/ucode19.fw
> 318dc6189bf77925f3f2f6cfb0259970be949480  /lib/firmware/b43/ucode20.fw
> dc52c9ef253fd18a965960009d936288d27fff2c  /lib/firmware/b43/ucode4.fw
> c935b3946d62f1c4d704b5ac878e91693e8773f4  /lib/firmware/b43/ucode5.fw
> 6b972fb25a24620b25ac709bd2c2e8987e98c395  /lib/firmware/b43/ucode9.fw
> be9c937389453721232d4866e49005af0f1024879f37c9d8e417274e408fd8b1  /lib/firmware/b43/a0g0bsinitvals4.fw
> 69a0a2a816a495a169edb2af8f3da4700de146e5d13d4c7a569f56b2464baa92  /lib/firmware/b43/a0g0bsinitvals5.fw
> 8f0e41b9bdb5fbafb00a61580215d47be14cf64df70a35298ebf804963de65fe  /lib/firmware/b43/a0g0bsinitvals9.fw
> 81ff1f66ec8ddd989c1f7b29e8d3e5d25639ef3e0d3ae96ca327bf78ddb8b8a2  /lib/firmware/b43/a0g0initvals4.fw
> 4fefdfd8e2b93071a072a57f424b81651ebd164ac68e2eb6bcaf902bfe12f891  /lib/firmware/b43/a0g0initvals5.fw
> 0a4c1da3291e6f84e397be73135cc283767e58273625b93f7837fc4b20e42f89  /lib/firmware/b43/a0g0initvals9.fw
> d2ab80ea77a9a98f3d98b15eafec5fe556f254d39dfc1e13567026378e1bdb46  /lib/firmware/b43/a0g1bsinitvals13.fw
> 116dbf5a23e2b7ea0bc1c666e512e57bc38c06fef44e671401f1e46617986869  /lib/firmware/b43/a0g1bsinitvals5.fw
> cb387a2b24d4d50fb4d43491ac418a075acb77e0357290ee0b7c0d4499dc1329  /lib/firmware/b43/a0g1bsinitvals9.fw
> 8e3bd2df2bf6b37b9bd5174fea948de6c077e95b887739f71ae6a20c4f4075b8  /lib/firmware/b43/a0g1initvals13.fw
> fae267fa631035e9f6a6b9cff5d553373802def310abfc150114d7d6722de686  /lib/firmware/b43/a0g1initvals5.fw
> 8bb8ca074b9a7f6b72e2eb89ddf035b390310df2db01f8bc8abec38d4679b80e  /lib/firmware/b43/a0g1initvals9.fw
> 43a5292e93c164e7bbb8f3aea19fbd5278da9e0194f76fff6a47c17aefa95320  /lib/firmware/b43/b0g0bsinitvals13.fw
> 8971ad1fb89131e6c0ba18dab0edc63e200d3e044160014d9eb45c1b992bece8  /lib/firmware/b43/b0g0bsinitvals4.fw
> f887fc5df3c46159493e03752833110049421c535c2234db0962318043e93d31  /lib/firmware/b43/b0g0bsinitvals5.fw
> 12cc2c9dd1c83c41f6895ef772d32049e816a890b2dc26f6b12b3b972f83ec22  /lib/firmware/b43/b0g0bsinitvals9.fw
> 79959d4797f72e18e5ca431586c2010002387c82486e85052412e770c8dfd100  /lib/firmware/b43/b0g0initvals13.fw
> e21d172bc3c2e57356e7b6a6671d37320455a6c621d40bd75a4f5d732bb7ef41  /lib/firmware/b43/b0g0initvals4.fw
> 136a8f5ed5c5b101460d4a71027cebc23b34a9a3fb9fd248e5965be2b3cc5a36  /lib/firmware/b43/b0g0initvals5.fw
> d96ea773620cf2716cf2a40d1d52da7e32d668b0ddcdaf0c4745ebb0aa14864c  /lib/firmware/b43/b0g0initvals9.fw
> c72966ef17319df4f010126a67b3d9c6142c2e22af31cee784a99c3a9a988e35  /lib/firmware/b43/lp0bsinitvals13.fw
> c72966ef17319df4f010126a67b3d9c6142c2e22af31cee784a99c3a9a988e35  /lib/firmware/b43/lp0bsinitvals14.fw
> e403a4c860b8e3c3b256063640e5314d2574c543ee48bedd70df8744a082b245  /lib/firmware/b43/lp0bsinitvals15.fw
> b0696e06549520ec7700ec103a58688822eebc60f8f5ebb391c18fb98fd7d864  /lib/firmware/b43/lp0bsinitvals16.fw
> de18551847eadd06d35729a581b2ec30f6d83569ee9fa23cb423dd40a7fff414  /lib/firmware/b43/lp0initvals13.fw
> d12c0bd2600d3e1624a6e90185638b46bda04d69ccd0aa916cd7071bd237a759  /lib/firmware/b43/lp0initvals14.fw
> 254386ffd9736d19a5fba17d7d07a1f24455d4b357220d6e5858c0fb96a9debf  /lib/firmware/b43/lp0initvals15.fw
> 0d7bb498bf6059094a608837e4055d4fb5c1a3c8be58a6f642f1a881f5a51757  /lib/firmware/b43/lp0initvals16.fw
> fa58f8c3832dd022286f7fa762b7fb5901781dd32b459d6f74033e17173c8d99  /lib/firmware/b43/n0absinitvals11.fw
> 4f1b9f32a89a5d456620382b9c03a49f406437b443bcca294544ed2e94884642  /lib/firmware/b43/n0bsinitvals11.fw
> cd65418f42848ae21f6ff2bceec52874b86ec8d480e5ca7ec18335c6fe520ab6  /lib/firmware/b43/n0bsinitvals16.fw
> 389045fc5037e7482a73f7535a59b3305c6b89400393fd8289dcea1e03aacb7d  /lib/firmware/b43/n0initvals11.fw
> a373bae786076191190746773a7fba6fdeebfc05c9523191d3e8afdf36c6f9ba  /lib/firmware/b43/n0initvals16.fw
> ff4258296b17a5dcf8e65e37d0b4af972717fce98576b6213a4d61205126afb6  /lib/firmware/b43/pcm4.fw
> 7eec99341ad49d4745752f4cedf33bfc8554820332c4443f1fbad62ad1da88f9  /lib/firmware/b43/pcm5.fw
> cb3882af11faeebdd78e22238fa0913b9515e468eaa12806f694524f8b6bc8ad  /lib/firmware/b43/sslpn0bsinitvals16.fw
> cbb78baa4f9131748ff138230764dfc2524662f81b3374e722155ebee82bf2bf  /lib/firmware/b43/sslpn0initvals16.fw
> cb3882af11faeebdd78e22238fa0913b9515e468eaa12806f694524f8b6bc8ad  /lib/firmware/b43/sslpn1bsinitvals20.fw
> 2c858963105c3bc03f523aebcb21a1339e7165a55d4d11c4f89802a66ed00886  /lib/firmware/b43/sslpn1initvals20.fw
> cb3882af11faeebdd78e22238fa0913b9515e468eaa12806f694524f8b6bc8ad  /lib/firmware/b43/sslpn2bsinitvals17.fw
> cb3882af11faeebdd78e22238fa0913b9515e468eaa12806f694524f8b6bc8ad  /lib/firmware/b43/sslpn2bsinitvals19.fw
> f3ab5b853a400d66b03bf191198fd74a0291d0d63d9ff0e6840c98b460ce1a11  /lib/firmware/b43/sslpn2initvals17.fw
> c10fc42dff86df7ff416731b459e82da1b6aaa82175937b654ced68403134dc1  /lib/firmware/b43/sslpn2initvals19.fw
> b6733d23438b6166cef514c0de0710f03bea16db642552367d6a815336f599dc  /lib/firmware/b43/ucode11.fw
> cb479fa2f3bddfb54cb17eec48baa8ca7e58440a869484e72c100c9748c8222c  /lib/firmware/b43/ucode13.fw
> 088e8c8af0f91fc8821f43eae42797eec38c04e2620c21869c8a02f980284930  /lib/firmware/b43/ucode14.fw
> f28bb4728e530549767a7bdc54ae5e780151c7ea43b62b27c0c418ea1ff47039  /lib/firmware/b43/ucode15.fw
> 6523bab506c0a4b255e5bc3c8ca6f176e0d4f0e6f2cdd0ebf1b62ac7d303f229  /lib/firmware/b43/ucode16_lp.fw
> 22b26dad41f72175f939914e2e472f328d30dfc8a4ffde71cf98a73c75681b45  /lib/firmware/b43/ucode16_mimo.fw
> 240eb91bf47f940f92475e91961639a4cf8ea748ddb123549c4c5b3428d03e31  /lib/firmware/b43/ucode16_sslpn.fw
> f65af179907708684ad54ce91491b9c1d47fa050cf8a63ece6396f10fc4d9228  /lib/firmware/b43/ucode16_sslpn_nobt.fw
> 224f04bd1990baf8d25cc7591940785290a5500d703275f2bf1878d3625e72fc  /lib/firmware/b43/ucode17.fw
> b6a1aa18d0b2b2e2692679949d84d8b94b493fb99dcd9d18261e74ca7ead7bbb  /lib/firmware/b43/ucode19.fw
> 2a80426e509d26a5fd1313a94d2b2e164a487d21b202e57ae1756aa21100252e  /lib/firmware/b43/ucode20.fw
> eadafcb5b411cecb2de6382bfbb8548034aa9b9d834278c4bd9fd4b6092cc3c0  /lib/firmware/b43/ucode4.fw
> e850629e2a98d565671cdfeb1d3587297a1a6bd43cea03b187142b506b08ee06  /lib/firmware/b43/ucode5.fw
> 606080e003a72d970b8cee4242974fa10950dc415075fafd4ce8380e90a2efb1  /lib/firmware/b43/ucode9.fw
> total 640
> -rw-r--r-- 1 root root    38 May 21 01:59 a0g0bsinitvals4.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 a0g0bsinitvals5.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 a0g0bsinitvals9.fw
> -rw-r--r-- 1 root root  2658 May 21 01:59 a0g0initvals4.fw
> -rw-r--r-- 1 root root  1836 May 21 01:59 a0g0initvals5.fw
> -rw-r--r-- 1 root root  1998 May 21 01:59 a0g0initvals9.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 a0g1bsinitvals13.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 a0g1bsinitvals5.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 a0g1bsinitvals9.fw
> -rw-r--r-- 1 root root  2108 May 21 01:59 a0g1initvals13.fw
> -rw-r--r-- 1 root root  1836 May 21 01:59 a0g1initvals5.fw
> -rw-r--r-- 1 root root  1998 May 21 01:59 a0g1initvals9.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 b0g0bsinitvals13.fw
> -rw-r--r-- 1 root root    38 May 21 01:59 b0g0bsinitvals4.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 b0g0bsinitvals5.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 b0g0bsinitvals9.fw
> -rw-r--r-- 1 root root  2108 May 21 01:59 b0g0initvals13.fw
> -rw-r--r-- 1 root root  2658 May 21 01:59 b0g0initvals4.fw
> -rw-r--r-- 1 root root  1836 May 21 01:59 b0g0initvals5.fw
> -rw-r--r-- 1 root root  1998 May 21 01:59 b0g0initvals9.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 lp0bsinitvals13.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 lp0bsinitvals14.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 lp0bsinitvals15.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 lp0bsinitvals16.fw
> -rw-r--r-- 1 root root  3646 May 21 01:59 lp0initvals13.fw
> -rw-r--r-- 1 root root  2038 May 21 01:59 lp0initvals14.fw
> -rw-r--r-- 1 root root  2420 May 21 01:59 lp0initvals15.fw
> -rw-r--r-- 1 root root  2446 May 21 01:59 lp0initvals16.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 n0absinitvals11.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 n0bsinitvals11.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 n0bsinitvals16.fw
> -rw-r--r-- 1 root root  2104 May 21 01:59 n0initvals11.fw
> -rw-r--r-- 1 root root  2446 May 21 01:59 n0initvals16.fw
> -rw-r--r-- 1 root root  1320 May 21 01:59 pcm4.fw
> -rw-r--r-- 1 root root  1320 May 21 01:59 pcm5.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 sslpn0bsinitvals16.fw
> -rw-r--r-- 1 root root  2446 May 21 01:59 sslpn0initvals16.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 sslpn1bsinitvals20.fw
> -rw-r--r-- 1 root root  2434 May 21 01:59 sslpn1initvals20.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 sslpn2bsinitvals17.fw
> -rw-r--r-- 1 root root   178 May 21 01:59 sslpn2bsinitvals19.fw
> -rw-r--r-- 1 root root  2314 May 21 01:59 sslpn2initvals17.fw
> -rw-r--r-- 1 root root  2302 May 21 01:59 sslpn2initvals19.fw
> -rw-r--r-- 1 root root 29872 May 21 01:59 ucode11.fw
> -rw-r--r-- 1 root root 29008 May 21 01:59 ucode13.fw
> -rw-r--r-- 1 root root 25768 May 21 01:59 ucode14.fw
> -rw-r--r-- 1 root root 35056 May 21 01:59 ucode15.fw
> -rw-r--r-- 1 root root 40344 May 21 01:59 ucode16_lp.fw
> -rw-r--r-- 1 root root 39544 May 21 01:59 ucode16_mimo.fw
> -rw-r--r-- 1 root root 35134 May 21 01:59 ucode16_sslpn.fw
> -rw-r--r-- 1 root root 29723 May 21 01:59 ucode16_sslpn_nobt.fw
> -rw-r--r-- 1 root root 39024 May 21 01:59 ucode17.fw
> -rw-r--r-- 1 root root 39328 May 21 01:59 ucode19.fw
> -rw-r--r-- 1 root root 40088 May 21 01:59 ucode20.fw
> -rw-r--r-- 1 root root 20104 May 21 01:59 ucode4.fw
> -rw-r--r-- 1 root root 22296 May 21 01:59 ucode5.fw
> -rw-r--r-- 1 root root 25200 May 21 01:59 ucode9.fw

The result was this (from dmesg).  During boot:
> [    0.287956] ACPI: ACPI bus type pnp unregistered
> [    0.299377] b43-pci-bridge 0000:03:00.0: power state changed by ACPI to D0
> [    0.299628] b43-pci-bridge 0000:03:00.0: power state changed by ACPI to D0
> [    0.300088] ACPI: PCI Interrupt Link [Z00F] enabled at IRQ 23
> [    0.300344] b43-pci-bridge 0000:03:00.0: PCI INT A -> Link[Z00F] -> GSI 23 (level, low) -> IRQ 23
> [    0.300781] b43-pci-bridge 0000:03:00.0: setting latency timer to 64
> [    0.309203] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x17, vendor 0x4243)
> [    0.309212] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10, vendor 0x4243)
> [    0.309220] ssb: Core 2 found: PCI-E (cc 0x820, rev 0x0B, vendor 0x4243)
> [    0.309228] ssb: Core 3 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
> [    0.309235] ssb: Core 4 found: USB 2.0 Device (cc 0x81A, rev 0x05, vendor 0x4243)
> [    0.309243] ssb: Core 5 found: UNKNOWN (cc 0x8FF, rev 0x00, vendor 0x4243)
> [    0.309251] ssb: Core 6 found: Internal Memory (cc 0x80E, rev 0x03, vendor 0x4243)
> [    0.333446] ssb: Sonics Silicon Backplane found on PCI device 0000:03:00.0

> [    3.171159] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
> [    3.187567] b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 4
> [    3.187591] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 3
> [    3.197163] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
> [    3.197871] Registered led device: b43-phy0::tx
> [    3.197891] Registered led device: b43-phy0::rx
> [    3.197912] Registered led device: b43-phy0::radio
> [    3.197931] Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]

Connecting to our network (WPA2-Enterprise; wicd used as interface),
then dropping out repeatedly.  It seems to work, sometimes will get an
IP address (DHCP and IPv6 automatic addressing), but won't successfully
connect to another host, it drops out very soon after.

> [   12.346290] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [   12.393211] b43-phy0 debug: Chip initialized
> [   12.393345] b43-phy0 debug: 64-bit DMA initialized
> [   12.393416] b43-phy0 debug: QoS enabled
> [   12.401862] b43-phy0 debug: Wireless interface started
> [   12.401869] b43-phy0 debug: Adding Interface type 2
> [   12.402457] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [   17.095776] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [   17.095977] forcedeth 0000:00:0a.0: eth0: no link during initialization
> [   17.096730] ADDRCONF(NETDEV_UP): eth0: link is not ready
> [   20.750145] b43-phy0 debug: Removing Interface type 2
> [   20.750442] b43-phy0 debug: Wireless interface stopped
> [   20.750521] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   20.750576] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   20.752051] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   20.754059] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   20.756041] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 2/256, Failed frames 0/22 = 0.0%, Average tries 1.00
> [   20.758037] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   20.931308] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [   20.978303] b43-phy0 debug: Chip initialized
> [   20.978449] b43-phy0 debug: 64-bit DMA initialized
> [   20.978522] b43-phy0 debug: QoS enabled
> [   20.987025] b43-phy0 debug: Wireless interface started
> [   20.987033] b43-phy0 debug: Adding Interface type 2
> [   20.987658] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [   21.096792] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [   21.096995] forcedeth 0000:00:0a.0: eth0: no link during initialization
> [   21.097748] ADDRCONF(NETDEV_UP): eth0: link is not ready
> [   21.110117] b43-phy0 debug: Removing Interface type 2
> [   21.110421] b43-phy0 debug: Wireless interface stopped
> [   21.110499] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.110555] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.112051] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.114055] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.116046] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.118046] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [   21.296277] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [   21.343294] b43-phy0 debug: Chip initialized
> [   21.343444] b43-phy0 debug: 64-bit DMA initialized
> [   21.343518] b43-phy0 debug: QoS enabled
> [   21.351984] b43-phy0 debug: Wireless interface started
> [   21.351991] b43-phy0 debug: Adding Interface type 2
> [   21.352618] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [   25.095500] wlan0: authenticate with 00:60:64:28:74:1c (try 1)
> [   25.096974] wlan0: authenticated
> [   25.096997] wlan0: associate with 00:60:64:28:74:1c (try 1)
> [   25.099847] wlan0: RX AssocResp from 00:60:64:28:74:1c (capab=0x411 status=0 aid=2)
> [   25.099851] wlan0: associated
> [   25.100814] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> [   28.949901] b43-phy0 ERROR: PHY transmission error
> [   33.389900] b43-phy0 ERROR: PHY transmission error
> [  858.909421] EXT4-fs (sda4): re-mounted. Opts: commit=0
> [  859.269017] EXT4-fs (sda5): re-mounted. Opts: commit=0
> [  882.602295] b43-phy0 ERROR: PHY transmission error
> [  922.797469] b43-phy0 ERROR: PHY transmission error
> [  925.167831] wlan0: deauthenticated from 00:60:64:28:74:1c (Reason: 3)
> [  925.182069] cfg80211: Calling CRDA for country: AU
> [  926.649580] wlan0: authenticate with 00:60:64:28:74:1c (try 1)
> [  926.651135] wlan0: authenticated
> [  926.651547] wlan0: associate with 00:60:64:28:74:1c (try 1)
> [  926.654039] wlan0: RX AssocResp from 00:60:64:28:74:1c (capab=0x411 status=0 aid=2)
> [  926.654043] wlan0: associated
> [  927.142512] wlan0: deauthenticating from 00:60:64:28:74:1c by local choice (reason=3)
> [  927.145385] cfg80211: Calling CRDA to update world regulatory domain
> [  927.153131] b43-phy0 debug: Removing Interface type 2
> [  927.153431] b43-phy0 debug: Wireless interface stopped
> [  927.153510] b43-phy0 debug: DMA-64 rx_ring: Used slots 12/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.153565] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.155039] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 4/256, Failed frames 4/105 = 3.8%, Average tries 0.97
> [  927.157047] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.159039] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 6/256, Failed frames 2/933 = 0.2%, Average tries 1.01
> [  927.161055] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.335282] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [  927.382319] b43-phy0 debug: Chip initialized
> [  927.382469] b43-phy0 debug: 64-bit DMA initialized
> [  927.382543] b43-phy0 debug: QoS enabled
> [  927.391256] b43-phy0 debug: Wireless interface started
> [  927.391271] b43-phy0 debug: Adding Interface type 2
> [  927.404871] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  927.418118] b43-phy0 debug: Removing Interface type 2
> [  927.418399] b43-phy0 debug: Wireless interface stopped
> [  927.418473] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.418525] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.420054] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.422051] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.424060] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.426043] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  927.444855] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [  927.445005] forcedeth 0000:00:0a.0: eth0: no link during initialization
> [  927.445821] ADDRCONF(NETDEV_UP): eth0: link is not ready
> [  932.189295] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [  932.236229] b43-phy0 debug: Chip initialized
> [  932.236377] b43-phy0 debug: 64-bit DMA initialized
> [  932.236449] b43-phy0 debug: QoS enabled
> [  932.245037] b43-phy0 debug: Wireless interface started
> [  932.245045] b43-phy0 debug: Adding Interface type 2
> [  932.258872] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  933.746145] b43-phy0 debug: Removing Interface type 2
> [  933.746429] b43-phy0 debug: Wireless interface stopped
> [  933.746510] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  933.746565] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  933.748041] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  933.750046] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  933.752039] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 2/256, Failed frames 0/11 = 0.0%, Average tries 1.00
> [  933.754062] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  933.927284] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [  933.974308] b43-phy0 debug: Chip initialized
> [  933.974456] b43-phy0 debug: 64-bit DMA initialized
> [  933.974529] b43-phy0 debug: QoS enabled
> [  933.983013] b43-phy0 debug: Wireless interface started
> [  933.983021] b43-phy0 debug: Adding Interface type 2
> [  933.996755] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  934.027824] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [  934.028006] forcedeth 0000:00:0a.0: eth0: no link during initialization
> [  934.028774] ADDRCONF(NETDEV_UP): eth0: link is not ready
> [  934.040143] b43-phy0 debug: Removing Interface type 2
> [  934.040448] b43-phy0 debug: Wireless interface stopped
> [  934.040529] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.040584] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.042048] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.044059] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.046044] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.048060] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [  934.227274] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [  934.274318] b43-phy0 debug: Chip initialized
> [  934.274465] b43-phy0 debug: 64-bit DMA initialized
> [  934.274538] b43-phy0 debug: QoS enabled
> [  934.283028] b43-phy0 debug: Wireless interface started
> [  934.283036] b43-phy0 debug: Adding Interface type 2
> [  934.296757] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  936.712638] wlan0: authenticate with 00:60:64:28:74:1c (try 1)
> [  936.717014] wlan0: authenticated
> [  936.717202] wlan0: associate with 00:60:64:28:74:1c (try 1)
> [  936.719616] wlan0: RX AssocResp from 00:60:64:28:74:1c (capab=0x411 status=0 aid=2)
> [  936.719620] wlan0: associated
> [  936.720576] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> [  937.786335] b43-phy0 ERROR: PHY transmission error
> [  940.854177] b43-phy0 ERROR: PHY transmission error
> [  945.963839] b43-phy0 ERROR: PHY transmission error
> [ 1023.431318] forcedeth 0000:00:0a.0: eth0: link up
> [ 1023.431652] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> [ 1033.412084] b43-phy0 ERROR: PHY transmission error
> [ 1047.463149] b43-phy0 ERROR: PHY transmission error
> [ 1048.172141] wlan0: deauthenticated from 00:60:64:28:74:1c (Reason: 3)
> [ 1048.185709] cfg80211: Calling CRDA to update world regulatory domain
> [ 1049.649604] wlan0: authenticate with 00:60:64:28:74:1c (try 1)
> [ 1049.651095] wlan0: authenticated
> [ 1049.651524] wlan0: associate with 00:60:64:28:74:1c (try 1)
> [ 1049.653996] wlan0: RX AssocResp from 00:60:64:28:74:1c (capab=0x411 status=0 aid=2)
> [ 1049.654000] wlan0: associated
> [ 1050.136373] wlan0: deauthenticating from 00:60:64:28:74:1c by local choice (reason=3)
> [ 1050.139355] cfg80211: Calling CRDA for country: AU
> [ 1050.149121] b43-phy0 debug: Removing Interface type 2
> [ 1050.149423] b43-phy0 debug: Wireless interface stopped
> [ 1050.149504] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.149558] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.151037] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 4/256, Failed frames 5/103 = 4.8%, Average tries 1.00
> [ 1050.153036] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.155032] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 2/256, Failed frames 0/133 = 0.0%, Average tries 1.07
> [ 1050.157043] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.331306] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [ 1050.379312] b43-phy0 debug: Chip initialized
> [ 1050.379462] b43-phy0 debug: 64-bit DMA initialized
> [ 1050.379535] b43-phy0 debug: QoS enabled
> [ 1050.387998] b43-phy0 debug: Wireless interface started
> [ 1050.388020] b43-phy0 debug: Adding Interface type 2
> [ 1050.401873] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [ 1050.416037] b43-phy0 debug: Removing Interface type 2
> [ 1050.416309] b43-phy0 debug: Wireless interface stopped
> [ 1050.416507] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.416559] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.419118] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.421125] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.423366] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.425118] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1050.446880] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [ 1055.199282] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [ 1055.246273] b43-phy0 debug: Chip initialized
> [ 1055.246419] b43-phy0 debug: 64-bit DMA initialized
> [ 1055.246491] b43-phy0 debug: QoS enabled
> [ 1055.254929] b43-phy0 debug: Wireless interface started
> [ 1055.254937] b43-phy0 debug: Adding Interface type 2
> [ 1055.266871] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [ 1055.285042] b43-phy0 debug: Removing Interface type 2
> [ 1055.285306] b43-phy0 debug: Wireless interface stopped
> [ 1055.285488] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/64, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.285547] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.287056] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.289053] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.291048] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.293043] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
> [ 1055.467305] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [ 1055.514316] b43-phy0 debug: Chip initialized
> [ 1055.514464] b43-phy0 debug: 64-bit DMA initialized
> [ 1055.514538] b43-phy0 debug: QoS enabled
> [ 1055.523022] b43-phy0 debug: Wireless interface started
> [ 1055.523030] b43-phy0 debug: Adding Interface type 2
> [ 1055.536871] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [ 1055.565809] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
> [ 1055.590634] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X

I'll try updating to kernel 3.0-rc1 (git head) and see if that makes a
difference.  I can also try setting up a test network (unencrypted) if
people think it might help.  If there is any other advice you can offer,
that'd be greatly appreciated.

(Other than ditching Broadcom for playing these silly proprietary
games... why oh why can't they just join in with the b43 driver instead?
 Surely the cat is out of the bag now...)

Ethernet works, but there are times wireless is the only option, so I'd
like it to work.  I'd also like to help fix it so others can enjoy
working wireless.
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
