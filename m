From: Christian Lamparter <chunkeey@googlemail.com>
Date: Sat, 17 Sep 2016 21:43:03 +0200
Subject: [PATCH 3/4] b43: fix debugfs crash
In-Reply-To: <48411543620969bebb37a1a9ea7b8f451cdfdd31.1474140477.git.chunkeey@gmail.com>
References: <48411543620969bebb37a1a9ea7b8f451cdfdd31.1474140477.git.chunkeey@gmail.com>
Message-ID: <60f368dd08cafebc3d39de18996d1df85f525887.1474140477.git.chunkeey@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: gregkh@linuxfoundation.org, Kalle Valo <kvalo@codeaurora.org>
Cc: Christian Lamparter <chunkeey@gmail.com>, linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Nicolai Stange <nicstange@gmail.com>, Ben Greear <greearb@candelatech.com>, Larry Finger <Larry.Finger@lwfinger.net>

This patch fixes a crash that happens because b43's
debugfs code expects file->f_op to be a pointer to
its own b43_debugfs_fops struct. This is no longer
the case since commit 9fd4dcece43a
("debugfs: prevent access to possibly dead file_operations at file open")

Reviewed-by: Nicolai Stange <nicstange@gmail.com>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 drivers/net/wireless/broadcom/b43/debugfs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/debugfs.c b/drivers/net/wireless/broadcom/b43/debugfs.c
index b4bcd94..7704638 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43/debugfs.c
@@ -524,7 +524,8 @@ static ssize_t b43_debugfs_read(struct file *file, char __user *userbuf,
 		goto out_unlock;
 	}
 
-	dfops = container_of(file->f_op, struct b43_debugfs_fops, fops);
+	dfops = container_of(debugfs_real_fops(file),
+			     struct b43_debugfs_fops, fops);
 	if (!dfops->read) {
 		err = -ENOSYS;
 		goto out_unlock;
@@ -585,7 +586,8 @@ static ssize_t b43_debugfs_write(struct file *file,
 		goto out_unlock;
 	}
 
-	dfops = container_of(file->f_op, struct b43_debugfs_fops, fops);
+	dfops = container_of(debugfs_real_fops(file),
+			     struct b43_debugfs_fops, fops);
 	if (!dfops->write) {
 		err = -ENOSYS;
 		goto out_unlock;
-- 
2.9.3
