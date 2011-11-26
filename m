From: Darren <dmbtech@gmail.com>
Date: Sat, 26 Nov 2011 12:44:21 -0500
Subject: BCM4331 Losing connectivity with ip_rt_bug
Message-ID: <4ED12575.2040405@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,
I am using the latest wireless-compat b43(which should have all 4331 
patches), and after leaving my system up for some time I am receiving 
connectivity issues(sometimes it works fine, sometimes things timeout). 
When looking in dmesg, it is flooded with ip_rt_bugs.

Nov 26 12:39:46 silver kernel: [12774.422200] ip_rt_bug: 10.0.0.4 -> 
255.255.255.255, ?
Nov 26 12:39:46 silver kernel: [12774.422216] ------------[ cut here 
]------------
Nov 26 12:39:46 silver kernel: [12774.422234] WARNING: at 
net/ipv4/route.c:1717 ip_rt_bug+0x5f/0x70()
Nov 26 12:39:46 silver kernel: [12774.422241] Hardware name: MacBookPro8,2
Nov 26 12:39:46 silver kernel: [12774.422246] Modules linked in: b43 
mac80211 cfg80211 bcma ssb pcmcia pcmcia_core arc4 snd_hrtimer 
binfmt_misc ip6table_filter ip6_tables ipt_MASQUERADE iptable_nat nf_nat 
nf_conntrack_ipv4 nf_defrag_ipv4 xt_state nf_conntrack ipt_REJECT 
xt_CHECKSUM iptable_mangle xt_tcpudp iptable_filter ip_tables x_tables 
bridge stp kvm_intel kvm parport_pc ppdev snd_hda_codec_hdmi 
snd_hda_codec_cirrus snd_hda_intel snd_hda_codec snd_hwdep snd_pcm 
aesni_intel cryptd aes_x86_64 uvcvideo videodev v4l2_compat_ioctl32 
snd_seq_midi aes_generic video snd_rawmidi snd_seq_midi_event snd_seq 
btusb applesmc lp snd_timer snd_seq_device input_polldev snd bluetooth 
joydev soundcore snd_page_alloc fglrx(P) bcm5974 parport hid_apple 
usbhid hid firewire_ohci firewire_core crc_itu_t sdhci_pci tg3 sdhci 
[last unloaded: pcmcia_core]
Nov 26 12:39:46 silver kernel: [12774.422428] Pid: 11653, comm: dropbox 
Tainted: P        W   3.1.0-rc1-custom #5
Nov 26 12:39:46 silver kernel: [12774.422435] Call Trace:
Nov 26 12:39:46 silver kernel: [12774.422451]  [<ffffffff81063b2f>] 
warn_slowpath_common+0x7f/0xc0
Nov 26 12:39:46 silver kernel: [12774.422460]  [<ffffffff81063b8a>] 
warn_slowpath_null+0x1a/0x20
Nov 26 12:39:46 silver kernel: [12774.422469]  [<ffffffff8150ea9f>] 
ip_rt_bug+0x5f/0x70
Nov 26 12:39:46 silver kernel: [12774.422479]  [<ffffffff815192a9>] 
ip_local_out+0x29/0x30
Nov 26 12:39:46 silver kernel: [12774.422486]  [<ffffffff8151a59b>] 
ip_send_skb+0x1b/0x50
Nov 26 12:39:46 silver kernel: [12774.422495]  [<ffffffff8153c59a>] 
udp_send_skb+0x11a/0x3b0
Nov 26 12:39:46 silver kernel: [12774.422503]  [<ffffffff8153e2f7>] 
udp_sendmsg+0x377/0x930
Nov 26 12:39:46 silver kernel: [12774.422513]  [<ffffffff81517640>] ? 
ip_setup_cork+0x170/0x170
Nov 26 12:39:46 silver kernel: [12774.422523]  [<ffffffff815480f4>] 
inet_sendmsg+0x64/0xb0
Nov 26 12:39:46 silver kernel: [12774.422534]  [<ffffffff814c955f>] 
sock_sendmsg+0xef/0x120
Nov 26 12:39:46 silver kernel: [12774.422543]  [<ffffffff814c815e>] ? 
might_fault+0xe/0x10
Nov 26 12:39:46 silver kernel: [12774.422553]  [<ffffffff811797e8>] ? 
core_sys_select+0x328/0x350
Nov 26 12:39:46 silver kernel: [12774.422563]  [<ffffffff814cb2d1>] ? 
move_addr_to_kernel+0x71/0x80
Nov 26 12:39:46 silver kernel: [12774.422573]  [<ffffffff814cbdcd>] 
sys_sendto+0x13d/0x190
Nov 26 12:39:46 silver kernel: [12774.422581]  [<ffffffff81179862>] ? 
sys_select+0x52/0x100
Nov 26 12:39:46 silver kernel: [12774.422593]  [<ffffffff815e2942>] 
system_call_fastpath+0x16/0x1b
Nov 26 12:39:46 silver kernel: [12774.422599] ---[ end trace 
57afb3a22337fc7e ]---
