From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 17 Aug 2011 15:43:37 -0600
Subject: [PATCH] Add uevent to bcma bus, to autoload drivers.
In-Reply-To: <CACna6ryErHY+OyAnvc9+MYArb5mXpSdadOPADsQOBz796UqSUw@mail.gmail.com>
References: <4E3420E9.6080603@lwfinger.net>
	<CACna6ryErHY+OyAnvc9+MYArb5mXpSdadOPADsQOBz796UqSUw@mail.gmail.com>
Message-ID: <1313617419.3990.134.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Signed-off-by: David Woodhouse <David.Woodhouse@intel.com>
--
On Wed, 2011-08-17 at 20:27 +0200, Rafa? Mi?ecki wrote:
> > A minor annoyance is that the driver does not autoload on boot and had to be
> > manually modprobed. AFAIK, I don't have any blacklisting or other
> > configuration parameters that would cause this. Furthermore, I don't see
> > anything in the driver code that would cause this. Does autoload work on
> > your system?
>
> I've everything blacklisted (ssb, bcma, b43, wl, brcmsmac), so I
> didn't even notice that. However I got some reports (2 of them) that
> b43 doesn't auto load. I've to take a look at it, however I've no idea
> yet on what may be causing it.

The lack of uevent causes it. While looking, I note that suspend/resume
methods are also lacking from bcma.

diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
index 7072216..8c09c3e 100644
--- a/drivers/bcma/main.c
+++ b/drivers/bcma/main.c
@@ -15,6 +15,7 @@ MODULE_LICENSE("GPL");
 static int bcma_bus_match(struct device *dev, struct device_driver *drv);
 static int bcma_device_probe(struct device *dev);
 static int bcma_device_remove(struct device *dev);
+static int bcma_device_uevent(struct device *dev, struct kobj_uevent_env *env);
 
 static ssize_t manuf_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
@@ -49,6 +50,7 @@ static struct bus_type bcma_bus_type = {
 	.match		= bcma_bus_match,
 	.probe		= bcma_device_probe,
 	.remove		= bcma_device_remove,
+	.uevent		= bcma_device_uevent,
 	.dev_attrs	= bcma_device_attrs,
 };
 
@@ -295,6 +297,16 @@ static int bcma_device_remove(struct device *dev)
 	return 0;
 }
 
+static int bcma_device_uevent(struct device *dev, struct kobj_uevent_env *env)
+{
+	struct bcma_device *core = container_of(dev, struct bcma_device, dev);
+
+	return add_uevent_var(env,
+			      "MODALIAS=bcma:m%04Xid%04Xrev%02Xcl%02X",
+			      core->id.manuf, core->id.id,
+			      core->id.rev, core->id.class);
+}
+
 static int __init bcma_modinit(void)
 {
 	int err;

-- 
dwmw2
