Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A70B5AF
	for <lists+isdn4linux@lfdr.de>; Sun, 28 Apr 2019 10:21:18 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x3S8IiDn008903;
	Sun, 28 Apr 2019 10:19:06 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from lx3.fl.yeti.dk (yeti.dk [85.183.149.50])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x3S8IbpH008880
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Sun, 28 Apr 2019 10:18:39 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from rpc.fl.yeti.dk (rpc.fl.yeti.dk [192.168.7.11])
 by lx3.fl.yeti.dk (8.15.2/8.14.9) with SMTP id x3S8IZFn015564
 for <isdn4linux@listserv.isdn4linux.de>; Sun, 28 Apr 2019 10:18:36 +0200
Received: (from WIMPy) by rpc.fl.yeti.dk ; Sun, 28 Apr 2019 10:19:02 CEST
X-Gateway: WM>RFC [0.14a] @rpc.fl.yeti.dk
Message-Id: <ab.fERS6Qx@rpc.fl.yeti.dk>
Date: Sun, 28 Apr 2019 10:18:12 CEST
From: WIMPy@yeti.dk (Birger Harzenetter)
To: isdn4linux@listserv.isdn4linux.de
Subject: Re: [PATCH 0/5] isdn: deprecate non-mISDN drivers
X-Quality: This site is 100% Micro$oft free
X-Mailer: WimpMail
In-Reply-To: <CAK8P3a05Hy7zQxhJWiybDiNpYcy7fk=T7sWg73VmAFhk4Vo-oA@mail.gmail.com>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Sun, 28 Apr 2019 10:19:24 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Sun, 28 Apr 2019 10:18:39 +0200 (CEST)
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,UNPARSEABLE_RELAY autolearn=no
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

> Ok, so if you are using both mISDN and i4l, then I assume you have
> "hisax" compatible passive hardware using i4l, not any of the CAPI supported
> drivers (avmb1, hysdn, gigaset, cmtp), right?

Correct.
It's all about HFC based cards/dongles.

> I definitely hate breaking existing setups, but if the only remaining
> use case for i4l/hisax is the call divert feature, that doesn't

The only use case you know of so far.
I'm not sure if some old fashioned mailing list gives a sensible
representation of what's going on out there.
If I had not read back in the time that this is the place to post patches, I
wouldn't be here, either.

> feel like enough of a reason to keep a two megabytes of source code
> around for it.

You could shrink it by removing the protocol decoder, just like I did.
I never felt that the kernel space was the right place for that part.

> Karsten has previously noted that he did not think diversion was an
> important feature to have in mISDN, but I guess it would not be that
> hard to implement if there is a strong use case after all.

As I understand, at least part of that work has been done.
Unfortunately I didn't succeed in contacting him about it.

> I can also offer help with creating an external module version of
> drivers/isdn/{i4l,hisax} that retains the git history and makes it possible
> to compile outside of mainline Linux. Since many users already use
> an out-of-tree mISDN, I hope that would reduce the impact of
> removing it.

That would be really bad for maintenance. Just like having that extra git for
mISDN.
It means that, what's essentially a single patch, has to be split across two
or then even three different reopsitories. That even introduces some ugly
dependencies.
We just had a session about the hurdles of participating in FOSS projects at
our Barcamp yesterday. That would be exactely such a thing. (or even multiple
ones)
But I surely need to get back to square on that as well and get the formal
things right.

> need to change: most of the patches to drivers/isdn/ appear to
> be based on bugs that are found by code inspection rather than
> the necessity to change it.

Doesn't sound too bad to me.
But as I moted a few weeks back there is a rather annoying bug in mISDN
apart from that dreaded usage counter thing.
So even if I4L may not be suited well for modern voice plattforms it's
surely the most stable, we had so far.

> I have read the sources and fixed several bugs myself. The isdn4linux code
> base was in need of a rewrite 15 years ago when linux-2.6 was released
> that never happened (other than mISDN replacing it for the most part).

For most users maybe. Technically for a small part.
AFAIK LCR is the only application natively using mISDN.

I remember an Asterisk channel was mentioned once. I'm not sure if that was
by Karsten as well. But that was never released, either.
That's why some Asterisk users even still rely on the "old and deprecated"
mISDN version, not the current one.
So as far as (the socket based) mISDN replacing it's predecessors goes, we
might be waiting forever :-(

> The fork of mISDN not making it back into mainline is a problem,
> but it's completely orthogonal to the question of how to deal with
> the other two ISDN stacks, unless you suggest removing the in-kernel
> version of the mISDN stack as well. I wasn't trying to suggest that here.

Neither do I, But I do feel that keeping things together would be essetial
to being able to maintain things.
The situation is unfortunately already pretty messy and I feel like it might
become even worse. with pieces being scattered around even more places.

I also find the discussion somewhat arduous. It'd rather spend the time to get
the technical issues fixed.

> > > How much longer do you expect to need it?
> >
> > At least as long as the ISDN is running and being used.
> > And I expect that to be quite some more years.
>
> Ok, I take that as a vote in favor of removing it now rather than
> delaying the inevitable. If we remove i4l in 5.7 rather than

Interesting interpretation.

> 5.2, then you are still stuck with the same problem but we have
> extra work maintaining it for another year.

Maybe you could explain to us what the exact problem is?
What sort of work needs to be done to keep things working?

> > But you won't get support for current hardware then.
>
> Usually PC style hardware is fairly good about staying compatible
> with old operating systems, as long as you don't rely on new
> hardware features.

The hardware I'm currently evaluating does show some stange behaviour that
according to my research is because the Apollo Lake architecture requires a
later kernel. Which is what I would have been working on now if it wasn't
for some other things going pear shaped.

> The other thing you don't get with modern mainboards is PCI slots
> (especially more than one), so you may need to start stocking up on
> those. That would also solve the problem of staying on a kernel with
> i4l support. See

Not really an issue. You can even still get boards with ISA slots if you need
them. Or stand alone PCI-e to PCI bridges.
But you can also get HFC based PCI-e cards. So either way that was a rather
unfitting comment. There is no need for old mainboards.

  Greetings,
    WIMPy
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
