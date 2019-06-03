Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7433289A
	for <lists+isdn4linux@lfdr.de>; Mon,  3 Jun 2019 08:35:30 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x536WuQn017320;
	Mon, 3 Jun 2019 08:33:10 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000:0:0:0:1:9])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x531Pc65031196
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 3 Jun 2019 03:25:39 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8C148133E98DF;
 Sun,  2 Jun 2019 17:49:39 -0700 (PDT)
Date: Sun, 02 Jun 2019 17:49:33 -0700 (PDT)
Message-Id: <20190602.174933.1545607185118348010.davem@davemloft.net>
To: arnd@arndb.de
Subject: Re: [GIT PULL net-next, resend] isdn: deprecate non-mISDN drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAK8P3a1JvZNQ7oTLkAe8hA5qkU4=_Jwch=dqUgk2Qe1vR1SAsg@mail.gmail.com>
References: <CAK8P3a1JvZNQ7oTLkAe8hA5qkU4=_Jwch=dqUgk2Qe1vR1SAsg@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Mon, 03 Jun 2019 08:33:19 +0200 (CEST)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Mon, 03 Jun 2019 03:25:40 +0200 (CEST) for IP:'2620:137:e000::1:9'
 DOMAIN:'shards.monkeyblade.net' HELO:'shards.monkeyblade.net'
 FROM:'davem@davemloft.net' RCPT:''
X-Greylist: Delayed for 00:35:53 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Mon, 03 Jun 2019 03:25:40 +0200 (CEST)
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 02 Jun 2019 17:49:40 -0700 (PDT)
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE
	autolearn=ham autolearn_force=no version=3.4.2-i4l
X-Spam-Checker-Version: SpamAssassin 3.4.2-i4l (2018-09-13) on
	listserv.isdn4linux.de
X-Mailman-Approved-At: Mon, 03 Jun 2019 08:31:55 +0200
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
Cc: devel@driverdev.osuosl.org, tilman@imap.cc, isdn@linux-pingi.de,
        gigaset307x-common@lists.sourceforge.net, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, isdn4linux@listserv.isdn4linux.de,
        viro@zeniv.linux.org.uk, greg@kroah.com, holgerschurig@googlemail.com,
        pebolle@tiscali.nl, thomas.jarosch@intra2net.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 14:32:52 +0200

> [resending, rebased on top of today's net-next]
> 
> The following changes since commit 7b3ed2a137b077bc0967352088b0adb6049eed20:
> 
>   Merge branch '100GbE' of
> git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue
> (2019-05-30 15:17:05 -0700)
> 
> are available in the Git repository at:
> 
>  https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
> tags/isdn-removal
> 
> for you to fetch changes up to 6d97985072dc270032dc7a08631080bfd6253e82:
> 
>   isdn: move capi drivers to staging (2019-05-31 11:17:41 +0200)

Pulled, thanks Arnd.
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
