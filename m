From: Taehee Yoo <ap420073@gmail.com>
Date: Thu,  8 Oct 2020 15:51:48 +0000
Subject: [PATCH net 096/117] b43legacy: set B43legacy_DEBUGFS_FOPS.owner to
 THIS_MODULE
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
References: <20201008155209.18025-1-ap420073@gmail.com>
Message-ID: <20201008155209.18025-96-ap420073@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: ap420073@gmail.com, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index e7e4293c01f2..7c6e7cfeb822 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -318,6 +318,7 @@ static ssize_t b43legacy_debugfs_write(struct file *file,
 			.read	= b43legacy_debugfs_read,		\
 			.write	= b43legacy_debugfs_write,		\
 			.llseek = generic_file_llseek,			\
+			.owner = THIS_MODULE,				\
 		},						\
 		.file_struct_offset = offsetof(struct b43legacy_dfsentry, \
 					       file_##name),	\
-- 
2.17.1
