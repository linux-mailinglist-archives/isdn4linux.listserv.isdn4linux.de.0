Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id E915AB4BB
	for <lists+isdn4linux@lfdr.de>; Sun, 28 Apr 2019 04:08:32 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x3S25Ghx030654;
	Sun, 28 Apr 2019 04:05:48 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x3S254OX030640
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Sun, 28 Apr 2019 04:05:06 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from localhost (unknown [12.154.31.190])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7678C14D44B2E;
 Sat, 27 Apr 2019 19:04:56 -0700 (PDT)
Date: Sat, 27 Apr 2019 22:04:53 -0400 (EDT)
Message-Id: <20190427.220453.1215208476585472691.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [PATCH v2 1/5] isdn: gigaset: remove i4l support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190426195849.4111040-2-arnd@arndb.de>
References: <20190426195849.4111040-1-arnd@arndb.de>
 <20190426195849.4111040-2-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Sun, 28 Apr 2019 04:06:10 +0200 (CEST)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [82.165.11.104]);
 Sun, 28 Apr 2019 04:05:07 +0200 (CEST) for IP:'23.128.96.9'
 DOMAIN:'shards.monkeyblade.net' HELO:'shards.monkeyblade.net'
 FROM:'davem@davemloft.net' RCPT:''
X-Greylist: Delayed for 95:27:20 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Sun, 28 Apr 2019 04:05:07 +0200 (CEST)
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 27 Apr 2019 19:04:57 -0700 (PDT)
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,RCVD_IN_DNSWL_NONE autolearn=no
	autolearn_force=no version=3.4.2-i4l
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
Cc: thomas.jarosch@intra2net.com, isdn@linux-pingi.de,
        gigaset307x-common@lists.sourceforge.net, netdev@vger.kernel.org,
        pebolle@tiscali.nl, tilman@imap.cc, viro@zeniv.linux.org.uk,
        holgerschurig@googlemail.com, isdn4linux@listserv.isdn4linux.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 26 Apr 2019 21:58:45 +0200

> isdn4linux is getting removed, and the gigaset driver can still
> use the CAPI support, so this can all go away.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Arnd, I have no idea what I'm doing wrong, but the same thing is happening
as with v1 and I can't apply this.

Just take this single patch #1, for example, and go:

git am --signoff diff

And I keep getting things like:

Applying: isdn: gigaset: remove i4l support
error: removal patch leaves file contents
error: drivers/isdn/gigaset/i4l.c: patch does not apply
Patch failed at 0001 isdn: gigaset: remove i4l support
hint: Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

Help!
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
