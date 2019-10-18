Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A99DC752
	for <lists+isdn4linux@lfdr.de>; Fri, 18 Oct 2019 16:29:10 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x9IEIgY3020733;
	Fri, 18 Oct 2019 16:19:02 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x9IEIaEs020720
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Fri, 18 Oct 2019 16:18:37 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: by mail-qt1-f196.google.com with SMTP id u22so9238822qtq.13
 for <isdn4linux@listserv.isdn4linux.de>; Fri, 18 Oct 2019 07:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OLiSW1jPhrfJpL7J2ChNokt+HsZ5l6CdeBUkdRu8tgI=;
 b=GH6qHl1mkBmVBDmtD1NuH7agTWrnasQ6S6RqExdF+2vD1/veUT6be0SPm15lvYBMe0
 2UfjzC6Wt7mAF0iARqDuZUjyiH77LBGISxVKRoN753B7MmX6qoOaD+sdrSHopCDyYFg+
 jlNJhuT41c4il1RFqNahC+ql5nr56s0XZ4MqQ/BmlNWN9uUmM64i9mhOPzgVkhzhOXNg
 xgPaDpLV4ZRYb1KBahZsX+gR8nNgT2BrSGi759lEUrB6J3bMPMs0ia0Zs77hj5FyDfPY
 KHK8qfBNtLJCqxn1BubHyQtjPYFHSL/bo0eFqOhPkKQB4YKl7+H8i/GOQFlXYwtBKANP
 gQyg==
X-Gm-Message-State: APjAAAWrTw8z552EA9OBpZ0dB4/oosOlL4SxAI99jgG69CwOu08zqwkK
 VVVF5LJ8ma9fk0BPoYG+W77SsDDw00jKcz21QiM=
X-Google-Smtp-Source: APXvYqwUNC10IHjYhGYMZPP/MmDp7/JcJCuP9HHh1sJXpI/WPpXPbrgxj4jvMWTEkThythJ+jUYtkhVJ/IhuzQHABWY=
X-Received: by 2002:ac8:38e3:: with SMTP id g32mr10144867qtc.304.1571408315568; 
 Fri, 18 Oct 2019 07:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191009190853.245077-1-arnd@arndb.de>
 <20191009191044.308087-16-arnd@arndb.de>
 <20ef0181f615a6dfe8698afb52597164d74f8637.camel@codethink.co.uk>
In-Reply-To: <20ef0181f615a6dfe8698afb52597164d74f8637.camel@codethink.co.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Oct 2019 16:18:19 +0200
Message-ID: <CAK8P3a3xOo6ccFbSmZNZs+9Z42oREx+gAObxDiwTQPujndEBBw@mail.gmail.com>
Subject: Re: [Y2038] [PATCH v6 16/43] compat_ioctl: move isdn/capi ioctl
 translation into driver
To: Ben Hutchings <ben.hutchings@codethink.co.uk>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Fri, 18 Oct 2019 16:19:18 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Fri, 18 Oct 2019 16:18:37 +0200 (CEST)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=no
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
Cc: Karsten Keil <isdn@linux-pingi.de>,
        y2038 Mailman List <y2038@lists.linaro.org>,
        Networking <netdev@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        isdn4linux@listserv.isdn4linux.de, Al Viro <viro@zeniv.linux.org.uk>,
        Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

On Thu, Oct 17, 2019 at 8:25 PM Ben Hutchings
<ben.hutchings@codethink.co.uk> wrote:
>
> On Wed, 2019-10-09 at 21:10 +0200, Arnd Bergmann wrote:
> [...]
> > --- a/drivers/isdn/capi/capi.c
> > +++ b/drivers/isdn/capi/capi.c
> > @@ -950,6 +950,34 @@ capi_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
> >       return ret;
> >  }
> >
> > +#ifdef CONFIG_COMPAT
> > +static long
> > +capi_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
> > +{
> > +     int ret;
> > +
> > +     if (cmd == CAPI_MANUFACTURER_CMD) {
> > +             struct {
> > +                     unsigned long cmd;
>
> Should be u32?

Good catch, changed to compat_ulong_t now.

Thanks,

      Arnd
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
