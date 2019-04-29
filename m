Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBF9E1C0
	for <lists+isdn4linux@lfdr.de>; Mon, 29 Apr 2019 14:01:06 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x3TBvcsr025198;
	Mon, 29 Apr 2019 13:57:56 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x3TBvVph025187
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 29 Apr 2019 13:57:32 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: by mail-qt1-f193.google.com with SMTP id b3so11439489qtc.12
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 29 Apr 2019 04:57:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mv/muY5rNtRRH+MvwfpqL7bgByAD3SswrQwk16n8zjY=;
 b=BFiz2xtC1qyRPeH/V+njyzxw3/wqQFfR8Fllu/fvoJ4peU56PyrMXz87kKMmUEoxSx
 aMLdM3210ZO5k4WCOHa5TASKD61kJ0lQKlCh1eIBQksAf0DHlz3Fev9m5wZVwm7HKOG4
 wZbPHuOPppV1C4Ygy/AnpVgiUVt4JoRxnf4qXZQEA/6PPaZkQnMfUacWFlo8KoYsfcuk
 uoH54yilJKQ+GTg70Xc8YQSmZVPxgZh+HZ2+E3cWPndzBMHkKeQmsYkJM23ZShbOtOs5
 huBfNXiMtIDEJrpt6kd2MojAytuaoTviWhv7juo1+Z7vE/ptst5e66GTzF7LmrfOl8vw
 ujSQ==
X-Gm-Message-State: APjAAAX2a5HYmRaB75Jq/iVDCW53U3NhRT51b19bA0pGtuNh3Ij48LkJ
 7tsCu3gFg9IbmnzovYOUMERu0wzl/wS0nc1MKjE=
X-Google-Smtp-Source: APXvYqzS8ZKjshNGvfKGjDEQYkOZnPtW4o5dq64X5wTIsr2yyF2nFgIwL+lE1bd9u+XPlcz2nZii7o/shWFGIPWvmzk=
X-Received: by 2002:a0c:d2fa:: with SMTP id x55mr48817309qvh.161.1556539050677; 
 Mon, 29 Apr 2019 04:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190423151143.464992-1-arnd@arndb.de>
 <20190423151143.464992-12-arnd@arndb.de>
 <20190424092451.exkkwv2jkk5bwjfq@intra2net.com>
 <CAK8P3a0RKEdpk70tH8ac3QW=kjuz47Ghcz_CWLraoGV_Bb8Epw@mail.gmail.com>
 <20190424130625.uuqtujpvf7lyn4rc@intra2net.com>
 <CAK8P3a31NRqNJnBbZF=pUhQRrEoW0pZ37Wp-eABebG3iqXJe-w@mail.gmail.com>
 <20190429095856.jedh4ujwjkslpyp5@intra2net.com>
In-Reply-To: <20190429095856.jedh4ujwjkslpyp5@intra2net.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 29 Apr 2019 13:57:13 +0200
Message-ID: <CAK8P3a2AUXrffu6pfgwcJj5qp2EyzxNnUf8kYq4wd73hL4njTQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] isdn: move capi drivers to staging
To: Thomas Jarosch <thomas.jarosch@intra2net.com>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Mon, 29 Apr 2019 13:58:10 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Mon, 29 Apr 2019 13:57:33 +0200 (CEST)
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL autolearn=ham autolearn_force=no
	version=3.4.2-i4l
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
Cc: Karsten Keil <isdn@linux-pingi.de>,
        gigaset307x-common@lists.sourceforge.net,
        Networking <netdev@vger.kernel.org>, Paul Bolle <pebolle@tiscali.nl>,
        Tilman Schmidt <tilman@imap.cc>, Al Viro <viro@zeniv.linux.org.uk>,
        Holger Schurig <holgerschurig@googlemail.com>,
        isdn4linux@listserv.isdn4linux.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

On Mon, Apr 29, 2019 at 11:59 AM Thomas Jarosch
<thomas.jarosch@intra2net.com> wrote:
> You wrote on Thu, Apr 25, 2019 at 01:24:09PM +0200:
> > I'm still confused by this: You say here that you use the CAPI
> > subsystem from the mainline kernel (i.e. /dev/capi20 rather
> > than mISDNcapid), but this does not appear to interact at all with
> > mISDN, neither the in-kernel variant nor the one you link to.
>
> my working theory was that a userspace capi application
> talks to mISDNcapid via the kernel's CAPI layer as a proxy.
>
> Karsten's original announcement mentioned
> mISDN v2 CAPI support is userspace only:
> https://isdn4linux.listserv.isdn4linux.narkive.com/bRkOUkZG/announcement-misdn-fax-capi-2-0-support
>
>
> I did some preliminary research by removing the /dev/capi20 device node
> and checked if "capiinfo" still works via strace -> it does.
>
> # strace -e open,connect capiinfo
> open("/usr/lib/libcapi20.so.3", O_RDONLY|O_CLOEXEC) = 3
> open("/dev/shm/sem.CAPI20_shared_sem.v01000010", O_RDWR|O_NOFOLLOW) = 3
> open("/dev/shm/CAPI20_shared_memory.v01000010", O_RDWR|O_CREAT|O_NOFOLLOW|O_CLOEXEC, 0666) = 3
> open("/usr/lib/capi/lib_capi_mod_misdn.so.2", O_RDONLY|O_CLOEXEC) = 5
> open("/usr/lib/capi/lib_capi_mod_std.so.2", O_RDONLY|O_CLOEXEC) = 5
> open("/root/.capi20rc", O_RDONLY)       = -1 ENOENT (No such file or directory)
> open("/etc/capi20.conf", O_RDONLY)      = 4
> open("/dev/capi20", O_RDWR)             = -1 ENOENT (No such file or directory)
> open("/dev/isdn/capi20", O_RDWR)        = -1 ENOENT (No such file or directory)
> connect(4, {sa_family=AF_UNIX, sun_path="/var/run/mISDNcapid/sock"}, 110) = 0
> Number of Controllers : 1
> connect(5, {sa_family=AF_UNIX, sun_path="/var/run/mISDNcapid/sock"}, 110) = 0
> Controller 1:
> Manufacturer: mISDN
> CAPI Version: 2.0
> Manufacturer Version: 0.1
> Serial Number: 0000001
> ..
>
> The trick is the lib_capi_mod_misdn.so library.
> It's a plugin for the CAPI tools to directly talk to mISDNcapid.

Ok, that's also what I guessed from taking a brief look at the
library: it just tries all possible backends to find hardware, which
will open /dev/capi20 if it exists, but it still continues without it.

> Intra2net officially supports AVM b1 and c4 cards for fax but we didn't
> encounter these cards for years in customer support and I'm also
> willing to officially cancel support for those.
>
> -> it's good to move the drivers to staging.

Ok, thanks a lot for researching this! Since you are currently moving
to 4.19 which still has CAPI, you also don't have to cancel support
for those quite yet, and we may also have yet another stable release
(5.3 or 5.4?) that you can upgrade to before it gets thrown out of
staging.

       Arnd
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
