From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 01 Jul 2013 14:14:03 -0500
Subject: B4311 bcm43xx crash, no blacklisting on b43 found
In-Reply-To: <CAFDBk-qD0XxtMC04bOThmhCPWNBy8CTOu0BJ+OAg_wP1OzPRig@mail.gmail.com>
References: <CAFDBk-o6EA67LATyB62jEwptGyg3XAbxETbh6y+NfQOjfK0=tw@mail.gmail.com>
 <CAFDBk-qD0XxtMC04bOThmhCPWNBy8CTOu0BJ+OAg_wP1OzPRig@mail.gmail.com>
Message-ID: <51D1D4FB.4060806@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/01/2013 01:53 PM, Rudy Patard wrote:

Edit the file /usr/sbin/install_bcm43xx_firmware (as root), and remove all lines 
with modprobe in them. There should be 4. After you do that, you should no 
longer get an oops when running that script.

After it finishes, you will need to reboot.

Larry
