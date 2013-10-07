From: Benjamin Daines <benjamindaines@gmail.com>
Date: Mon, 07 Oct 2013 17:05:42 -0400
Subject: Frequent disconnects from large encrypted networks
Message-ID: <2873798.s56EKy9Eo4@ben-macbookpro>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

b43 will frequently drop connection due to encryption errors and time outs 
when on a network with many access points and high network traffic. 

Encryption used: WPA2 Enterprise PEAP MSCHAPv2

dmesg:
[58300.171784] wlan0: send auth to 8e:08:01:0a:de:1c (try 3/3)
[58300.375631] wlan0: authentication with 8e:08:01:0a:de:1c timed out
[58300.567937] wlan0: authenticate with 8e:08:01:0b:1c:65
[58300.607541] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58300.811125] wlan0: send auth to 8e:08:01:0b:1c:65 (try 2/3)
[58301.014987] wlan0: send auth to 8e:08:01:0b:1c:65 (try 3/3)
[58301.022924] wlan0: authenticated
[58301.026881] wlan0: associate with 8e:08:01:0b:1c:65 (try 1/3)
[58301.032215] wlan0: RX AssocResp from 8e:08:01:0b:1c:65 (capab=0x831 
status=0 aid=28)
[58301.032427] wlan0: associated
[58301.032507] cfg80211: Calling CRDA for country: US
[58301.036170] cfg80211: Regulatory domain changed to country: US
[58301.036174] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58301.036176] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58301.036178] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58301.036179] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58301.036181] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58301.036182] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58301.036184] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58301.427995] wlan0: deauthenticated from 8e:08:01:0b:1c:65 (Reason: 2)
[58301.434942] cfg80211: Calling CRDA to update world regulatory domain
[58301.438616] cfg80211: World regulatory domain updated:
[58301.438620] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58301.438623] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58301.438625] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58301.438628] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58301.438630] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58301.438632] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58302.749790] wlan0: authenticate with 8e:08:01:0b:1c:65
[58302.769673] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58302.777189] wlan0: authenticated
[58302.781189] wlan0: associate with 8e:08:01:0b:1c:65 (try 1/3)
[58302.795106] wlan0: RX AssocResp from 8e:08:01:0b:1c:65 (capab=0x831 
status=0 aid=28)
[58302.795317] wlan0: associated
[58302.795392] cfg80211: Calling CRDA for country: US
[58302.799509] cfg80211: Regulatory domain changed to country: US
[58302.799513] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58302.799515] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58302.799517] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58302.799518] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58302.799520] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58302.799522] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58302.799523] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58306.821355] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0b:1c:65 after 500ms, disconnecting.
[58306.829668] cfg80211: Calling CRDA to update world regulatory domain
[58306.833245] cfg80211: World regulatory domain updated:
[58306.833252] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58306.833254] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58306.833256] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58306.833258] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58306.833259] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58306.833261] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.013709] wlan0: authenticate with 8e:08:01:0b:1c:65
[58307.033496] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58307.037734] wlan0: authenticated
[58307.041047] wlan0: associate with 8e:08:01:0b:1c:65 (try 1/3)
[58307.051980] wlan0: RX AssocResp from 8e:08:01:0b:1c:65 (capab=0x831 
status=0 aid=16)
[58307.052156] wlan0: associated
[58307.052233] cfg80211: Calling CRDA for country: US
[58307.056128] cfg80211: Regulatory domain changed to country: US
[58307.056132] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58307.056134] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58307.056136] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58307.056138] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.056139] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.056141] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.056142] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58307.488402] wlan0: deauthenticated from 8e:08:01:0b:1c:65 (Reason: 2)
[58307.493068] cfg80211: Calling CRDA to update world regulatory domain
[58307.496644] cfg80211: World regulatory domain updated:
[58307.496654] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58307.496656] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.496657] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58307.496659] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58307.496660] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58307.496661] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58308.831866] wlan0: authenticate with 8e:08:01:0b:1c:65
[58308.851670] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58309.055183] wlan0: send auth to 8e:08:01:0b:1c:65 (try 2/3)
[58309.060705] wlan0: authenticated
[58309.063108] wlan0: associate with 8e:08:01:0b:1c:65 (try 1/3)
[58309.065871] wlan0: RX AssocResp from 8e:08:01:0b:1c:65 (capab=0x831 
status=0 aid=16)
[58309.066077] wlan0: associated
[58309.066137] cfg80211: Calling CRDA for country: US
[58309.069878] cfg80211: Regulatory domain changed to country: US
[58309.069882] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58309.069884] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58309.069885] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58309.069887] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58309.069888] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58309.069889] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58309.069890] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58309.381850] wlan0: deauthenticated from 8e:08:01:0b:1c:65 (Reason: 2)
[58309.387174] cfg80211: Calling CRDA to update world regulatory domain
[58309.391187] cfg80211: World regulatory domain updated:
[58309.391191] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58309.391193] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58309.391196] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58309.391197] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58309.391199] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58309.391200] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58310.686122] wlan0: authenticate with 8e:08:01:0a:de:1c
[58310.725754] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58310.732521] wlan0: authenticated
[58310.733485] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58310.735847] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=26)
[58310.736062] wlan0: associated
[58310.736120] cfg80211: Calling CRDA for country: US
[58310.739678] cfg80211: Regulatory domain changed to country: US
[58310.739681] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58310.739684] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58310.739686] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58310.739687] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58310.739689] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58310.739690] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58310.739692] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58310.998089] wlan0: deauthenticated from 8e:08:01:0a:de:1c (Reason: 2)
[58311.005580] cfg80211: Calling CRDA to update world regulatory domain
[58311.009440] cfg80211: World regulatory domain updated:
[58311.009445] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58311.009447] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58311.009449] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58311.009451] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58311.009452] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58311.009454] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58312.284627] wlan0: authenticate with 8e:08:01:0b:1c:65
[58312.324253] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58312.527776] wlan0: send auth to 8e:08:01:0b:1c:65 (try 2/3)
[58312.539919] wlan0: authenticated
[58312.543729] wlan0: associate with 8e:08:01:0b:1c:65 (try 1/3)
[58312.546415] wlan0: RX AssocResp from 8e:08:01:0b:1c:65 (capab=0x831 
status=0 aid=52)
[58312.546818] wlan0: associated
[58312.546876] cfg80211: Calling CRDA for country: US
[58312.551198] cfg80211: Regulatory domain changed to country: US
[58312.551202] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58312.551205] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58312.551206] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58312.551208] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58312.551210] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58312.551211] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58312.551213] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58315.932237] wlan0: disassociating from 8e:08:01:0b:1c:65 by local choice 
(reason=3)
[58315.932757] wlan0: deauthenticating from 8e:08:01:0b:1c:65 by local choice 
(reason=3)
[58315.933142] cfg80211: Calling CRDA to update world regulatory domain
[58315.936970] cfg80211: World regulatory domain updated:
[58315.936974] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58315.936976] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58315.936978] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58315.936979] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58315.936981] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58315.936982] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.239717] wlan0: authenticate with 8e:08:01:0a:de:1c
[58317.279364] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58317.309927] wlan0: authenticated
[58317.311069] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58317.514924] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58317.568346] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=26)
[58317.568567] wlan0: associated
[58317.568627] cfg80211: Calling CRDA for country: US
[58317.572162] cfg80211: Regulatory domain changed to country: US
[58317.572165] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58317.572168] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58317.572170] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58317.572171] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.572173] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.572174] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.572176] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58317.809391] wlan0: deauthenticated from 8e:08:01:0a:de:1c (Reason: 2)
[58317.814992] cfg80211: Calling CRDA to update world regulatory domain
[58317.819240] cfg80211: World regulatory domain updated:
[58317.819244] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58317.819246] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.819248] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58317.819249] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58317.819251] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58317.819253] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58319.102008] wlan0: authenticate with 8e:08:01:0a:de:1c
[58319.121723] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58319.139983] wlan0: authenticated
[58319.141298] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58319.345218] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58319.348510] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=26)
[58319.348725] wlan0: associated
[58319.348796] cfg80211: Calling CRDA for country: US
[58319.352434] cfg80211: Regulatory domain changed to country: US
[58319.352437] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58319.352439] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58319.352441] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58319.352443] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58319.352444] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58319.352446] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58319.352448] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58327.800925] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[58327.809255] cfg80211: Calling CRDA to update world regulatory domain
[58327.812834] cfg80211: World regulatory domain updated:
[58327.812838] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58327.812840] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58327.812842] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58327.812844] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58327.812845] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58327.812847] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58378.788004] wlan0: authenticate with 8e:08:01:0b:1c:65
[58378.827661] wlan0: send auth to 8e:08:01:0b:1c:65 (try 1/3)
[58379.031266] wlan0: send auth to 8e:08:01:0b:1c:65 (try 2/3)
[58379.235088] wlan0: send auth to 8e:08:01:0b:1c:65 (try 3/3)
[58379.438863] wlan0: authentication with 8e:08:01:0b:1c:65 timed out
[58379.631202] wlan0: authenticate with 8e:08:01:0a:de:1c
[58379.670841] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58379.693024] wlan0: authenticated
[58379.694600] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58379.898347] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58380.102164] wlan0: associate with 8e:08:01:0a:de:1c (try 3/3)
[58380.305932] wlan0: association with 8e:08:01:0a:de:1c timed out
[58418.469339] wlan0: authenticate with 8e:08:01:0a:de:1c
[58418.489299] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58418.490715] wlan0: authenticated
[58418.492922] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58418.494785] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=26)
[58418.494991] wlan0: associated
[58418.495050] cfg80211: Calling CRDA for country: US
[58418.498650] cfg80211: Regulatory domain changed to country: US
[58418.498653] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58418.498655] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58418.498657] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58418.498659] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58418.498660] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58418.498662] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58418.498663] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58419.555218] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:0a:de:1c
[58419.555392] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff
[58450.952437] wlan0: deauthenticating from 8e:08:01:0a:de:1c by local choice 
(reason=3)
[58450.952561] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
0, mac: 8e:08:01:0a:de:1c
[58450.952853] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
1, mac: ff:ff:ff:ff:ff:ff
[58450.954205] cfg80211: Calling CRDA to update world regulatory domain
[58450.957190] cfg80211: World regulatory domain updated:
[58450.957195] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58450.957196] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58450.957198] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58450.957208] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58450.957209] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58450.957211] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58453.075881] wlan0: authenticate with 8e:08:01:0a:de:1c
[58453.095721] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58453.098645] wlan0: authenticated
[58453.099305] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58453.106369] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58453.106546] wlan0: associated
[58453.106610] cfg80211: Calling CRDA for country: US
[58453.110147] cfg80211: Regulatory domain changed to country: US
[58453.110150] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58453.110152] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58453.110154] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58453.110156] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58453.110157] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58453.110159] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58453.110160] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58456.699911] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[58456.708179] cfg80211: Calling CRDA to update world regulatory domain
[58456.711824] cfg80211: World regulatory domain updated:
[58456.711827] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58456.711829] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58456.711831] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58456.711832] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58456.711834] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58456.711836] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58457.987081] wlan0: authenticate with 8e:08:01:0a:de:1c
[58458.006885] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58458.036344] wlan0: authenticated
[58458.038563] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58458.070166] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58458.070391] wlan0: associated
[58458.070467] cfg80211: Calling CRDA for country: US
[58458.074110] cfg80211: Regulatory domain changed to country: US
[58458.074113] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58458.074115] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58458.074117] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58458.074119] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58458.074120] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58458.074122] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58458.074124] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58459.135018] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:0a:de:1c
[58459.135176] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff
[58463.082409] wlan0: deauthenticated from 8e:08:01:0a:de:1c (Reason: 15)
[58463.089738] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
0, mac: 8e:08:01:0a:de:1c
[58463.109719] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
1, mac: ff:ff:ff:ff:ff:ff
[58463.109858] cfg80211: Calling CRDA to update world regulatory domain
[58463.113712] cfg80211: World regulatory domain updated:
[58463.113715] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58463.113717] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58463.113719] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58463.113721] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58463.113723] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58463.113724] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58464.392946] wlan0: authenticate with 8e:08:01:0a:de:1c
[58464.412734] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58464.428919] wlan0: authenticated
[58464.432362] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58464.447095] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58464.447305] wlan0: associated
[58464.447372] cfg80211: Calling CRDA for country: US
[58464.451083] cfg80211: Regulatory domain changed to country: US
[58464.451087] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58464.451089] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58464.451091] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58464.451092] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58464.451094] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58464.451096] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58464.451097] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58465.517578] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:0a:de:1c
[58465.517733] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff
[58465.903610] wlan0: deauthenticated from 8e:08:01:0a:de:1c (Reason: 1)
[58465.911054] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
0, mac: 8e:08:01:0a:de:1c
[58465.931023] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
1, mac: ff:ff:ff:ff:ff:ff
[58465.931137] cfg80211: Calling CRDA to update world regulatory domain
[58465.934871] cfg80211: World regulatory domain updated:
[58465.934874] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58465.934876] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58465.934878] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58465.934880] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58465.934881] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58465.934883] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58467.214364] wlan0: authenticate with 8e:08:01:0a:de:1c
[58467.233961] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58467.236844] wlan0: authenticated
[58467.237591] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58467.240066] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58467.240244] wlan0: associated
[58467.240296] cfg80211: Calling CRDA for country: US
[58467.243977] cfg80211: Regulatory domain changed to country: US
[58467.243980] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58467.243983] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58467.243985] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58467.243986] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58467.243988] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58467.243989] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58467.243991] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58467.284339] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:0a:de:1c
[58467.284479] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff
[58486.914603] wlan0: deauthenticating from 8e:08:01:0a:de:1c by local choice 
(reason=3)
[58486.914682] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
0, mac: 8e:08:01:0a:de:1c
[58486.922816] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
1, mac: ff:ff:ff:ff:ff:ff
[58486.923923] cfg80211: Calling CRDA to update world regulatory domain
[58486.978563] b43-phy0 debug: Removing Interface type 2
[58486.978815] b43-phy0 debug: Wireless interface stopped
[58487.018633] cfg80211: World regulatory domain updated:
[58487.018640] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58487.018643] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58487.018645] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58487.018648] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58487.018650] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58487.018652] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58487.749773] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[58487.821659] b43-phy0 debug: Chip initialized
[58487.821845] b43-phy0 debug: 64-bit DMA initialized
[58487.821860] b43-phy0 debug: QoS disabled
[58487.822847] b43-phy0 debug: Wireless interface started
[58487.841672] b43-phy0 debug: Adding Interface type 2
[58487.841937] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[58490.251709] wlan0: authenticate with 8e:08:01:0a:de:1c
[58490.271582] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58490.274705] wlan0: authenticated
[58490.275211] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58490.277053] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58490.277236] wlan0: associated
[58490.277256] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[58490.277320] cfg80211: Calling CRDA for country: US
[58490.280908] cfg80211: Regulatory domain changed to country: US
[58490.280911] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58490.280913] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58490.280915] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58490.280917] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58490.280918] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58490.280920] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58490.280922] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58495.353402] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:0a:de:1c
[58495.353533] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff
[58948.194821] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[58948.202892] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
0, mac: 8e:08:01:0a:de:1c
[58948.226860] b43-phy0 debug: Disabling hardware based encryption for keyidx: 
1, mac: ff:ff:ff:ff:ff:ff
[58948.226980] cfg80211: Calling CRDA to update world regulatory domain
[58948.230554] cfg80211: World regulatory domain updated:
[58948.230557] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58948.230559] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58948.230561] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58948.230562] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58948.230564] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58948.230566] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58948.395195] wlan0: authenticate with 8e:08:01:0a:de:1c
[58948.414877] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58948.618348] wlan0: send auth to 8e:08:01:0a:de:1c (try 2/3)
[58948.652874] wlan0: authenticated
[58948.654300] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58948.858186] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58949.061966] wlan0: associate with 8e:08:01:0a:de:1c (try 3/3)
[58949.063997] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=19)
[58949.064352] wlan0: associated
[58949.064428] cfg80211: Calling CRDA for country: US
[58949.068043] cfg80211: Regulatory domain changed to country: US
[58949.068046] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58949.068048] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58949.068050] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58949.068052] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58949.068053] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58949.068055] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58949.068057] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58964.101088] wlan0: deauthenticating from 8e:08:01:0a:de:1c by local choice 
(reason=3)
[58964.108328] cfg80211: Calling CRDA to update world regulatory domain
[58964.112054] cfg80211: World regulatory domain updated:
[58964.112057] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58964.112059] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58964.112061] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58964.112063] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58964.112064] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58964.112066] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58966.309572] wlan0: authenticate with 8e:08:01:0a:de:1c
[58966.329509] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58966.532990] wlan0: send auth to 8e:08:01:0a:de:1c (try 2/3)
[58966.551540] wlan0: authenticated
[58966.552964] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58966.556005] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=2)
[58966.556215] wlan0: associated
[58966.556284] cfg80211: Calling CRDA for country: US
[58966.559880] cfg80211: Regulatory domain changed to country: US
[58966.559883] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58966.559885] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58966.559887] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58966.559889] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58966.559890] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58966.559892] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58966.559893] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58982.149840] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[58982.166005] cfg80211: Calling CRDA to update world regulatory domain
[58982.169642] cfg80211: World regulatory domain updated:
[58982.169645] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58982.169648] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58982.169649] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58982.169651] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58982.169653] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58982.169654] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58983.452852] wlan0: authenticate with 8e:08:01:0a:de:1c
[58983.472871] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58983.676357] wlan0: send auth to 8e:08:01:0a:de:1c (try 2/3)
[58983.721880] wlan0: authenticated
[58983.724334] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58983.928079] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58983.933089] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=2)
[58983.933300] wlan0: associated
[58983.933366] cfg80211: Calling CRDA for country: US
[58983.936957] cfg80211: Regulatory domain changed to country: US
[58983.936960] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58983.936962] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58983.936964] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58983.936966] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58983.936967] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58983.936969] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58983.936970] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58989.143043] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[58989.151453] cfg80211: Calling CRDA to update world regulatory domain
[58989.155159] cfg80211: World regulatory domain updated:
[58989.155162] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58989.155164] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58989.155166] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58989.155168] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58989.155170] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58989.155171] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.454188] wlan0: authenticate with 8e:08:01:0a:de:1c
[58990.474093] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58990.498847] wlan0: authenticated
[58990.501734] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58990.518585] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=2)
[58990.518761] wlan0: associated
[58990.518837] cfg80211: Calling CRDA for country: US
[58990.522435] cfg80211: Regulatory domain changed to country: US
[58990.522438] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58990.522440] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58990.522442] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58990.522444] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.522445] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.522447] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.522448] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[58990.866995] wlan0: deauthenticating from 8e:08:01:0a:de:1c by local choice 
(reason=3)
[58990.868128] cfg80211: Calling CRDA to update world regulatory domain
[58990.872236] cfg80211: World regulatory domain updated:
[58990.872239] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58990.872241] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.872243] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58990.872244] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[58990.872245] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58990.872247] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58992.160482] wlan0: authenticate with 8e:08:01:0a:de:1c
[58992.180456] wlan0: send auth to 8e:08:01:0a:de:1c (try 1/3)
[58992.383894] wlan0: send auth to 8e:08:01:0a:de:1c (try 2/3)
[58992.587707] wlan0: send auth to 8e:08:01:0a:de:1c (try 3/3)
[58992.589716] wlan0: authenticated
[58992.591703] wlan0: associate with 8e:08:01:0a:de:1c (try 1/3)
[58992.795506] wlan0: associate with 8e:08:01:0a:de:1c (try 2/3)
[58992.799342] wlan0: RX AssocResp from 8e:08:01:0a:de:1c (capab=0x831 
status=0 aid=2)
[58992.799577] wlan0: associated
[58992.799634] cfg80211: Calling CRDA for country: US
[58992.803303] cfg80211: Regulatory domain changed to country: US
[58992.803306] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[58992.803308] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[58992.803310] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[58992.803312] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58992.803313] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58992.803315] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[58992.803316] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[59013.119788] ieee80211 phy0: wlan0: No probe response from AP 
8e:08:01:0a:de:1c after 500ms, disconnecting.
[59013.128137] cfg80211: Calling CRDA to update world regulatory domain
[59013.131796] cfg80211: World regulatory domain updated:
[59013.131799] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59013.131801] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59013.131803] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59013.131805] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59013.131806] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59013.131808] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59014.423094] wlan0: authenticate with 8e:08:01:08:be:4f
[59014.462685] wlan0: send auth to 8e:08:01:08:be:4f (try 1/3)
[59014.467601] wlan0: authenticated
[59014.470460] wlan0: associate with 8e:08:01:08:be:4f (try 1/3)
[59014.472619] wlan0: RX AssocResp from 8e:08:01:08:be:4f (capab=0x831 
status=0 aid=1)
[59014.472840] wlan0: associated
[59014.472914] cfg80211: Calling CRDA for country: US
[59014.476640] cfg80211: Regulatory domain changed to country: US
[59014.476643] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59014.476645] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[59014.476647] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[59014.476648] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59014.476650] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59014.476652] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59014.476653] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[59015.843047] wlan0: deauthenticating from 8e:08:01:08:be:4f by local choice 
(reason=3)
[59015.844201] cfg80211: Calling CRDA to update world regulatory domain
[59015.847960] cfg80211: World regulatory domain updated:
[59015.847964] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59015.847967] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59015.847969] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59015.847970] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59015.847972] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59015.847973] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59017.559942] wlan0: authenticate with 8e:08:01:08:be:4f
[59017.579803] wlan0: send auth to 8e:08:01:08:be:4f (try 1/3)
[59017.582902] wlan0: authenticated
[59017.583395] wlan0: associate with 8e:08:01:08:be:4f (try 1/3)
[59017.590589] wlan0: RX AssocResp from 8e:08:01:08:be:4f (capab=0x831 
status=0 aid=1)
[59017.590801] wlan0: associated
[59017.590858] cfg80211: Calling CRDA for country: US
[59017.594335] cfg80211: Regulatory domain changed to country: US
[59017.594338] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59017.594340] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[59017.594342] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[59017.594344] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59017.594345] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59017.594347] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59017.594348] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[59040.821368] wlan0: deauthenticating from 8e:08:01:08:be:4f by local choice 
(reason=3)
[59040.822498] cfg80211: Calling CRDA to update world regulatory domain
[59040.825749] cfg80211: World regulatory domain updated:
[59040.825752] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59040.825754] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59040.825755] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59040.825757] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[59040.825758] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59040.825759] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59043.035355] wlan0: authenticate with 8e:08:01:08:be:4f
[59043.055021] wlan0: send auth to 8e:08:01:08:be:4f (try 1/3)
[59043.057840] wlan0: authenticated
[59043.058689] wlan0: associate with 8e:08:01:08:be:4f (try 1/3)
[59043.060544] wlan0: RX AssocResp from 8e:08:01:08:be:4f (capab=0x831 
status=0 aid=1)
[59043.060749] wlan0: associated
[59043.060805] cfg80211: Calling CRDA for country: US
[59043.064511] cfg80211: Regulatory domain changed to country: US
[59043.064515] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[59043.064517] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[59043.064519] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[59043.064521] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59043.064522] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59043.064524] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[59043.064525] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[59044.127118] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: 8e:08:01:08:be:4f
[59044.127274] b43-phy0 debug: Using hardware based encryption for keyidx: 1, 
mac: ff:ff:ff:ff:ff:ff


uname -a:
Linux ben-MacBookPro 3.11.4-031104-generic #201310051136 SMP Sat Oct 5 
15:38:11 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux


lspci:
03:00.0 0280: 14e4:4331 (rev 02)
        Subsystem: 106b:00d6
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0, Cache Line Size: 256 bytes
        Interrupt: pin A routed to IRQ 17
        Region 0: Memory@b0600000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>
