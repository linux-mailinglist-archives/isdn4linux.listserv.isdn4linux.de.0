Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id C8734D1A6E
	for <lists+isdn4linux@lfdr.de>; Wed,  9 Oct 2019 23:02:31 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x99KwfZI013256;
	Wed, 9 Oct 2019 22:59:01 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x99Kwa1T013242
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Wed, 9 Oct 2019 22:58:37 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mzyi6-1hupE6357e-00wzdx; Wed, 09 Oct 2019 21:11:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH v6 16/43] compat_ioctl: move isdn/capi ioctl translation into
 driver
Date: Wed,  9 Oct 2019 21:10:16 +0200
Message-Id: <20191009191044.308087-16-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191009190853.245077-1-arnd@arndb.de>
References: <20191009190853.245077-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3PgdTLn3Isb1E8QdaS6ssQ4smTcDkiVZALshacjmZB+AtPbu7Xq
 +7o5fh40aOG53PwqC68L1xQv4R2rrEcItv3d09B+15mWfs5dq4Tnu4b8BuUmfRm6UOVmtZd
 zpvGOs+siVVcUrX1Q5s/nr5A9T4WhMwaKm/3W3e/li5neiNanzGsyRWZwZ9MgEx1znyplrR
 z2rwUeFAJ5Ft6735YtEjg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:T1iQpEMoNIE=:Ec5jZoe1h4ziRs9BQ6o0Un
 seQpXmXz1mt/Rlq35SGaHQgz/EDvd9tzi7sbt/nhyz9l7tZsxEzsi8vSk2DFtGaRildOFEKLK
 rcvsBFcZarZOdcRlxNLC6/G3mMqwwHoPnQ7HdvLdz31U4tkn5a9ppjCH0MyLZjxmc/gfyYEly
 IC4Cw4pmbd4VemaCwkC/7ZNabd/DXg2pY5TECEWQQqsG/rHuC5XyZsM1DzYmMVj3n7azugSHg
 gvIWAtZHlrOOinbG2B0unzNcF/ct7c3oIGXxnY8ajaGrhkDLVUwqSoUALIYBNdYK9zG3NtCyq
 5C4PWmheU6osboe/KInh/jnQ30EyFsmE4MX9QUyua8QcgBLcuFfmzDrPrs1A44wqsdlk+avxX
 lSiis/B5r+rCeIhGiZ/XQQzWqxFaElWZ4uYCAefjWxuvbsq6mlH1Hq3wspwbQhXyTrSUY8gEv
 fqn4ejoFpuVpEjIMyxJnBmqU0LgK2eV1q8v18MnYiykWOUpvEwGgx8c4g7ZtBZe7zz+KpNv4C
 gxENi2qWen9t1LZTe8R49RoCnZSgiC2f+DE6AHChH6fFEsaKrrW5+MPc0CHWjqgwNx1wHEMSk
 NTylWY3BxnuzDzfz29QCa5FgUNXAqWpdrVq1MCxboeVgIpGhSRO07opkmEFHJ3RsUan0/t9w9
 SUGtufWU+cpRi8t45KfkbcC6pNYu5PuaC6wDSKaQHIehAfp25K2DNeNVCyQMnPGlQH5/2Y6kO
 cF4tPIDZa65NXLOiZQKyQYjUL0Xo+ysrblOpj6EOryhxk+zB2R0pUSTqi3bAI/v9qlhOWwUUl
 qrpypCtTAeqnWlLUSwOmiPzrbUgCUx9DwOIQvzYixUPvTjn2gYG5YrLQSvJtbNH5TtUkcHRWU
 7crfeP1UpQtjFbPC2DDA==
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Wed, 09 Oct 2019 22:59:15 +0200 (CEST)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [82.165.11.104]);
 Wed, 09 Oct 2019 22:58:37 +0200 (CEST) for IP:'212.227.126.135'
 DOMAIN:'mout.kundenserver.de' HELO:'mout.kundenserver.de'
 FROM:'arnd@arndb.de' RCPT:''
X-Greylist: Delayed for 01:05:14 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Wed, 09 Oct 2019 22:58:37 +0200 (CEST)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE
	autolearn=no autolearn_force=no version=3.4.2-i4l
X-Spam-Checker-Version: SpamAssassin 3.4.2-i4l (2018-09-13) on
	listserv.isdn4linux.de
X-BeenThere: isdn4linux@listserv.isdn4linux.de
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: isdn4linux userlist <isdn4linux.listserv.isdn4linux.de>
List-Unsubscribe: <https://www.isdn4linux.de/mailman/options/isdn4linux>,
 <mailto:isdn4linux-request@listserv.isdn4linux.de?subject=unsubscribe>
List-Archive: <http://www.isdn4linux.de/pipermail/isdn4linux/>
List-Post: <mailto:isdn4linux@listserv.isdn4linux.de>
List-Help: <mailto:isdn4linux-request@listserv.isdn4linux.de?subject=help>
List-Subscribe: <https://www.isdn4linux.de/mailman/listinfo/isdn4linux>,
 <mailto:isdn4linux-request@listserv.isdn4linux.de?subject=subscribe>
Cc: Karsten Keil <isdn@linux-pingi.de>, Arnd Bergmann <arnd@arndb.de>,
        y2038@lists.linaro.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, isdn4linux@listserv.isdn4linux.de,
        linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

Neither the old isdn4linux interface nor the newer mISDN stack
ever had working 32-bit compat mode as far as I can tell.

However, the CAPI stack has some ioctl commands that are
correctly listed in fs/compat_ioctl.c.

We can trivially move all of those into the corresponding
file that implement the native handlers by adding a compat_ioctl
redirect to that.

I did notice that treating CAPI_MANUFACTURER_CMD() as compatible
is broken, so I'm also adding a handler for that, realizing that
in all likelyhood, nobody is ever going to call it.

Cc: Karsten Keil <isdn@linux-pingi.de>
Cc: netdev@vger.kernel.org
Cc: isdn4linux@listserv.isdn4linux.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/isdn/capi/capi.c | 31 +++++++++++++++++++++++++++++++
 fs/compat_ioctl.c        | 17 -----------------
 2 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/isdn/capi/capi.c b/drivers/isdn/capi/capi.c
index c92b405b7646..efce7532513c 100644
--- a/drivers/isdn/capi/capi.c
+++ b/drivers/isdn/capi/capi.c
@@ -950,6 +950,34 @@ capi_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	return ret;
 }
 
+#ifdef CONFIG_COMPAT
+static long
+capi_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
+{
+	int ret;
+
+	if (cmd == CAPI_MANUFACTURER_CMD) {
+		struct {
+			unsigned long cmd;
+			compat_uptr_t data;
+		} mcmd32;
+
+		if (!capable(CAP_SYS_ADMIN))
+			return -EPERM;
+		if (copy_from_user(&mcmd32, compat_ptr(arg), sizeof(mcmd32)))
+			return -EFAULT;
+
+		mutex_lock(&capi_mutex);
+		ret = capi20_manufacturer(mcmd32.cmd, compat_ptr(mcmd32.data));
+		mutex_unlock(&capi_mutex);
+
+		return ret;
+	}
+
+	return capi_unlocked_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
+}
+#endif
+
 static int capi_open(struct inode *inode, struct file *file)
 {
 	struct capidev *cdev;
@@ -996,6 +1024,9 @@ static const struct file_operations capi_fops =
 	.write		= capi_write,
 	.poll		= capi_poll,
 	.unlocked_ioctl	= capi_unlocked_ioctl,
+#ifdef CONFIG_COMPAT
+	.compat_ioctl	= capi_compat_ioctl,
+#endif
 	.open		= capi_open,
 	.release	= capi_release,
 };
diff --git a/fs/compat_ioctl.c b/fs/compat_ioctl.c
index a4e8fb7da968..f3b4179d6dff 100644
--- a/fs/compat_ioctl.c
+++ b/fs/compat_ioctl.c
@@ -44,9 +44,6 @@
 #include <net/bluetooth/hci_sock.h>
 #include <net/bluetooth/rfcomm.h>
 
-#include <linux/capi.h>
-#include <linux/gigaset_dev.h>
-
 #ifdef CONFIG_BLOCK
 #include <linux/cdrom.h>
 #include <linux/fd.h>
@@ -681,20 +678,6 @@ COMPATIBLE_IOCTL(RFCOMMRELEASEDEV)
 COMPATIBLE_IOCTL(RFCOMMGETDEVLIST)
 COMPATIBLE_IOCTL(RFCOMMGETDEVINFO)
 COMPATIBLE_IOCTL(RFCOMMSTEALDLC)
-/* CAPI */
-COMPATIBLE_IOCTL(CAPI_REGISTER)
-COMPATIBLE_IOCTL(CAPI_GET_MANUFACTURER)
-COMPATIBLE_IOCTL(CAPI_GET_VERSION)
-COMPATIBLE_IOCTL(CAPI_GET_SERIAL)
-COMPATIBLE_IOCTL(CAPI_GET_PROFILE)
-COMPATIBLE_IOCTL(CAPI_MANUFACTURER_CMD)
-COMPATIBLE_IOCTL(CAPI_GET_ERRCODE)
-COMPATIBLE_IOCTL(CAPI_INSTALLED)
-COMPATIBLE_IOCTL(CAPI_GET_FLAGS)
-COMPATIBLE_IOCTL(CAPI_SET_FLAGS)
-COMPATIBLE_IOCTL(CAPI_CLR_FLAGS)
-COMPATIBLE_IOCTL(CAPI_NCCI_OPENCOUNT)
-COMPATIBLE_IOCTL(CAPI_NCCI_GETUNIT)
 /* Misc. */
 COMPATIBLE_IOCTL(PCIIOC_CONTROLLER)
 COMPATIBLE_IOCTL(PCIIOC_MMAP_IS_IO)
-- 
2.20.0

_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
