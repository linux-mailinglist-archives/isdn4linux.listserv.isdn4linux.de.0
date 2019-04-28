Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7AFB5C8
	for <lists+isdn4linux@lfdr.de>; Sun, 28 Apr 2019 11:30:58 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x3S9SDmh020029;
	Sun, 28 Apr 2019 11:28:33 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x3S9S64I020000
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Sun, 28 Apr 2019 11:28:07 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: by mail-qt1-f196.google.com with SMTP id h16so3177374qtk.6
 for <isdn4linux@listserv.isdn4linux.de>; Sun, 28 Apr 2019 02:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XadbfBQa4OqLjYZ350mCtREaeNtCJeusg7+RZrDViuQ=;
 b=d/upio44b0s08fq53YrSkXT9yt57IywMEDKEoxPhgiQmMkOJ0YOKqQivWLaY3edDEI
 hChzGHFbqRtU92EVlL9l+bkY0GKgP4YBebLjifMGUgeFIKUZamg/GfobfiDtMiXnECMR
 JlS8rC9FUFBVEgxC+DYuyIYGHlefRvgiQzsMR9NTzSlnY03q86Ks9XR/y+4dkZTdZwXd
 uRMT06E3jfTE4bFbTmkKtLk86VkD4SOjfIH87lxd7oFmQdlfR/z67JXJdZh5MyHqo6V/
 dW41JcU7wd2x9aUBwG6FacjtGmVwoa58porVwoyVUCj9Ybo+ajVGb3zNu4Dc75Ne/JXh
 n67A==
X-Gm-Message-State: APjAAAVGNIPcSadXf5zxFqdqeHpsQMW725vbS1NhyNa/M9XskzjCfCP9
 FOtStIZDqEVx7QiNrYyRzQuMWRd6F8Y6ocmrnGM=
X-Google-Smtp-Source: APXvYqxRzfVcpQXZpoEXRlOd1ugWUvBtkAOd8XNyVgkC35g5Ha/D2/RtnPfwzPtdVleq4ultHYPrsnnOnFqvzWtVT4Q=
X-Received: by 2002:a0c:b24e:: with SMTP id k14mr30484529qve.180.1556443685961; 
 Sun, 28 Apr 2019 02:28:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190426195849.4111040-1-arnd@arndb.de>
 <20190426195849.4111040-2-arnd@arndb.de>
 <20190427.220453.1215208476585472691.davem@davemloft.net>
In-Reply-To: <20190427.220453.1215208476585472691.davem@davemloft.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 28 Apr 2019 11:27:49 +0200
Message-ID: <CAK8P3a15YGTW0t0WRaJwXVvRFU09ZYXamAgsp=NRgC7PTUcdtQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] isdn: gigaset: remove i4l support
To: David Miller <davem@davemloft.net>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Sun, 28 Apr 2019 11:28:47 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Sun, 28 Apr 2019 11:28:08 +0200 (CEST)
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
Cc: Thomas Jarosch <thomas.jarosch@intra2net.com>,
        Karsten Keil <isdn@linux-pingi.de>,
        gigaset307x-common@lists.sourceforge.net,
        Networking <netdev@vger.kernel.org>, Paul Bolle <pebolle@tiscali.nl>,
        Tilman Schmidt <tilman@imap.cc>, Al Viro <viro@zeniv.linux.org.uk>,
        Holger Schurig <holgerschurig@googlemail.com>,
        isdn4linux@listserv.isdn4linux.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

On Sun, Apr 28, 2019 at 4:05 AM David Miller <davem@davemloft.net> wrote:
>
> And I keep getting things like:
>
> Applying: isdn: gigaset: remove i4l support
> error: removal patch leaves file contents
> error: drivers/isdn/gigaset/i4l.c: patch does not apply
> Patch failed at 0001 isdn: gigaset: remove i4l support
> hint: Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

This must be a result of me sending the file removals as generated
by 'git format-patch -D -M'. Including the file contents would make them
too large for the mailing lists I assume.

Here is a pull request instead:
-----------
The following changes since commit b1a79360ee862f8ada4798ad2346fa45bb41b527:

  cxgb4: Delete all hash and TCAM filters before resource cleanup
(2019-04-27 22:25:37 -0400)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
tags/isdn-removal

for you to fetch changes up to fa6011c3ad97ed6a7957a4031ae6048981a7a015:

  isdn: move capi drivers to staging (2019-04-28 11:22:17 +0200)

----------------------------------------------------------------
isdn: deprecate non-mISDN drivers

When isdn4linux came up in the context of another patch series, I
remembered that we had discussed removing it a while ago.

It turns out that the suggestion from Karsten Keil wa to remove I4L
in 2018 after the last public ISDN networks are shut down. This has
happened now (with a very small number of exceptions), so I guess it's
time to try again.

We currently have three ISDN stacks in the kernel: the original
isdn4linux (with the hisax driver), the newer CAPI (with four drivers),
and finally the mISDN stack (supporting roughly the same hardware as
hisax).

As far as I can tell, anyone using ISDN with mainline kernel drivers in
the past few years uses mISDN, and this is typically used for voice-only
PBX installations that don't require a public network.

The older stacks support additional features for data networks, but those
typically make no sense any more if there is no network to connect to.

My proposal for this time is to kill off isdn4linux entirely, as it seems
to have been unusable for quite a while. This code has been abandoned
for many years and it does cause problems for treewide maintenance as
it tends to do everything that we try to stop doing.
Birger Harzenetter mentioned that is is still using i4l in order to
make use of the 'divert' feature that is not part of mISDN, but has
otherwise moved on to mISDN for normal operation, like apparently
everyone else.

CAPI in turn is not quite as obsolete, but two of the drivers (avm
and hysdn) don't seem to be used at all, while another one (gigaset)
will stop being maintained as Paul Bolle is no longer able to
test it after the network gets shut down in September.
All three are now moved into drivers/staging to let others speak
up in case there are remaining users.
This leaves Bluetooth CMTP as the only remaining user of CAPI, but
Marcel Holtmann wishes to keep maintaining it.

For the discussion on version 1, see [2]
Unfortunately, Karsten Keil as the maintainer has not participated in
the discussion.

      Arnd

[1] https://patchwork.kernel.org/patch/8484861/#17900371
[2] https://listserv.isdn4linux.de/pipermail/isdn4linux/2019-April/thread.html

----------------------------------------------------------------
Arnd Bergmann (5):
      isdn: gigaset: remove i4l support
      isdn: remove hisax driver
      isdn: remove isdn4linux
      isdn: hdlc: move into mISDN
      isdn: move capi drivers to staging

 Documentation/isdn/HiSax.cert                      |   96 -
 Documentation/isdn/INTERFACE                       |  759 ----
 Documentation/isdn/INTERFACE.fax                   |  163 -
 Documentation/isdn/README                          |  599 ----
 Documentation/isdn/README.FAQ                      |   26 -
 Documentation/isdn/README.HiSax                    |  659 ----
 Documentation/isdn/README.audio                    |  138 -
 Documentation/isdn/README.concap                   |  259 --
 Documentation/isdn/README.diversion                |  127 -
 Documentation/isdn/README.fax                      |   45 -
 Documentation/isdn/README.gigaset                  |   36 +-
 Documentation/isdn/README.hfc-pci                  |   41 -
 Documentation/isdn/README.syncppp                  |   58 -
 Documentation/isdn/README.x25                      |  184 -
 Documentation/isdn/syncPPP.FAQ                     |  224 --
 Documentation/process/changes.rst                  |   16 +-
 MAINTAINERS                                        |   22 +-
 drivers/isdn/Kconfig                               |   51 -
 drivers/isdn/Makefile                              |    6 -
 drivers/isdn/capi/Kconfig                          |   29 +-
 drivers/isdn/capi/Makefile                         |    2 +
 drivers/isdn/capi/capidrv.c                        | 2525 -------------
 drivers/isdn/capi/capidrv.h                        |  140 -
 drivers/isdn/divert/Makefile                       |    9 -
 drivers/isdn/divert/divert_init.c                  |   82 -
 drivers/isdn/divert/divert_procfs.c                |  336 --
 drivers/isdn/divert/isdn_divert.c                  |  846 -----
 drivers/isdn/divert/isdn_divert.h                  |  132 -
 drivers/isdn/gigaset/i4l.c                         |  695 ----
 drivers/isdn/hardware/Kconfig                      |    7 -
 drivers/isdn/hardware/Makefile                     |    1 -
 drivers/isdn/hardware/mISDN/Kconfig                |    7 +-
 drivers/isdn/hardware/mISDN/Makefile               |    2 +
 drivers/isdn/{i4l => hardware/mISDN}/isdnhdlc.c    |    2 +-
 .../isdn/hardware/mISDN/isdnhdlc.h                 |    0
 drivers/isdn/hardware/mISDN/netjet.c               |    2 +-
 drivers/isdn/hisax/Kconfig                         |  422 ---
 drivers/isdn/hisax/Makefile                        |   60 -
 drivers/isdn/hisax/amd7930_fn.c                    |  794 -----
 drivers/isdn/hisax/amd7930_fn.h                    |   37 -
 drivers/isdn/hisax/arcofi.c                        |  131 -
 drivers/isdn/hisax/arcofi.h                        |   27 -
 drivers/isdn/hisax/asuscom.c                       |  423 ---
 drivers/isdn/hisax/avm_a1.c                        |  307 --
 drivers/isdn/hisax/avm_a1p.c                       |  267 --
 drivers/isdn/hisax/avm_pci.c                       |  904 -----
 drivers/isdn/hisax/avma1_cs.c                      |  162 -
 drivers/isdn/hisax/bkm_a4t.c                       |  358 --
 drivers/isdn/hisax/bkm_a8.c                        |  433 ---
 drivers/isdn/hisax/bkm_ax.h                        |  119 -
 drivers/isdn/hisax/callc.c                         | 1792 ----------
 drivers/isdn/hisax/config.c                        | 1993 -----------
 drivers/isdn/hisax/diva.c                          | 1282 -------
 drivers/isdn/hisax/elsa.c                          | 1245 -------
 drivers/isdn/hisax/elsa_cs.c                       |  218 --
 drivers/isdn/hisax/elsa_ser.c                      |  659 ----
 drivers/isdn/hisax/enternow_pci.c                  |  420 ---
 drivers/isdn/hisax/fsm.c                           |  161 -
 drivers/isdn/hisax/fsm.h                           |   61 -
 drivers/isdn/hisax/gazel.c                         |  691 ----
 drivers/isdn/hisax/hfc4s8s_l1.c                    | 1584 ---------
 drivers/isdn/hisax/hfc4s8s_l1.h                    |   89 -
 drivers/isdn/hisax/hfc_2bds0.c                     | 1078 ------
 drivers/isdn/hisax/hfc_2bds0.h                     |  128 -
 drivers/isdn/hisax/hfc_2bs0.c                      |  591 ---
 drivers/isdn/hisax/hfc_2bs0.h                      |   60 -
 drivers/isdn/hisax/hfc_pci.c                       | 1755 ---------
 drivers/isdn/hisax/hfc_pci.h                       |  235 --
 drivers/isdn/hisax/hfc_sx.c                        | 1517 --------
 drivers/isdn/hisax/hfc_sx.h                        |  196 -
 drivers/isdn/hisax/hfc_usb.c                       | 1608 ---------
 drivers/isdn/hisax/hfc_usb.h                       |  208 --
 drivers/isdn/hisax/hfcscard.c                      |  261 --
 drivers/isdn/hisax/hisax.h                         | 1352 -------
 drivers/isdn/hisax/hisax_cfg.h                     |   66 -
 drivers/isdn/hisax/hisax_debug.h                   |   80 -
 drivers/isdn/hisax/hisax_fcpcipnp.c                | 1024 ------
 drivers/isdn/hisax/hisax_fcpcipnp.h                |   58 -
 drivers/isdn/hisax/hisax_if.h                      |   66 -
 drivers/isdn/hisax/hisax_isac.c                    |  895 -----
 drivers/isdn/hisax/hisax_isac.h                    |   46 -
 drivers/isdn/hisax/hscx.c                          |  277 --
 drivers/isdn/hisax/hscx.h                          |   41 -
 drivers/isdn/hisax/hscx_irq.c                      |  294 --
 drivers/isdn/hisax/icc.c                           |  680 ----
 drivers/isdn/hisax/icc.h                           |   72 -
 drivers/isdn/hisax/ipac.h                          |   29 -
 drivers/isdn/hisax/ipacx.c                         |  913 -----
 drivers/isdn/hisax/ipacx.h                         |  162 -
 drivers/isdn/hisax/isac.c                          |  681 ----
 drivers/isdn/hisax/isac.h                          |   70 -
 drivers/isdn/hisax/isar.c                          | 1910 ----------
 drivers/isdn/hisax/isar.h                          |  222 --
 drivers/isdn/hisax/isdnl1.c                        |  930 -----
 drivers/isdn/hisax/isdnl1.h                        |   32 -
 drivers/isdn/hisax/isdnl2.c                        | 1839 ----------
 drivers/isdn/hisax/isdnl2.h                        |   25 -
 drivers/isdn/hisax/isdnl3.c                        |  594 ----
 drivers/isdn/hisax/isdnl3.h                        |   42 -
 drivers/isdn/hisax/isurf.c                         |  305 --
 drivers/isdn/hisax/ix1_micro.c                     |  316 --
 drivers/isdn/hisax/jade.c                          |  305 --
 drivers/isdn/hisax/jade.h                          |  134 -
 drivers/isdn/hisax/jade_irq.c                      |  238 --
 drivers/isdn/hisax/l3_1tr6.c                       |  932 -----
 drivers/isdn/hisax/l3_1tr6.h                       |  164 -
 drivers/isdn/hisax/l3dss1.c                        | 3227 -----------------
 drivers/isdn/hisax/l3dss1.h                        |  124 -
 drivers/isdn/hisax/l3ni1.c                         | 3182 -----------------
 drivers/isdn/hisax/l3ni1.h                         |  136 -
 drivers/isdn/hisax/lmgr.c                          |   50 -
 drivers/isdn/hisax/mic.c                           |  235 --
 drivers/isdn/hisax/netjet.c                        |  985 -----
 drivers/isdn/hisax/netjet.h                        |   69 -
 drivers/isdn/hisax/niccy.c                         |  380 --
 drivers/isdn/hisax/nj_s.c                          |  294 --
 drivers/isdn/hisax/nj_u.c                          |  258 --
 drivers/isdn/hisax/q931.c                          | 1513 --------
 drivers/isdn/hisax/s0box.c                         |  260 --
 drivers/isdn/hisax/saphir.c                        |  296 --
 drivers/isdn/hisax/sedlbauer.c                     |  873 -----
 drivers/isdn/hisax/sedlbauer_cs.c                  |  209 --
 drivers/isdn/hisax/sportster.c                     |  267 --
 drivers/isdn/hisax/st5481.h                        |  529 ---
 drivers/isdn/hisax/st5481_b.c                      |  380 --
 drivers/isdn/hisax/st5481_d.c                      |  780 ----
 drivers/isdn/hisax/st5481_init.c                   |  221 --
 drivers/isdn/hisax/st5481_usb.c                    |  659 ----
 drivers/isdn/hisax/tei.c                           |  465 ---
 drivers/isdn/hisax/teleint.c                       |  334 --
 drivers/isdn/hisax/teles0.c                        |  364 --
 drivers/isdn/hisax/teles3.c                        |  498 ---
 drivers/isdn/hisax/teles_cs.c                      |  200 --
 drivers/isdn/hisax/telespci.c                      |  349 --
 drivers/isdn/hisax/w6692.c                         | 1085 ------
 drivers/isdn/hisax/w6692.h                         |  184 -
 drivers/isdn/i4l/Kconfig                           |  128 -
 drivers/isdn/i4l/Makefile                          |   20 -
 drivers/isdn/i4l/isdn_audio.c                      |  711 ----
 drivers/isdn/i4l/isdn_audio.h                      |   44 -
 drivers/isdn/i4l/isdn_bsdcomp.c                    |  930 -----
 drivers/isdn/i4l/isdn_common.c                     | 2368 ------------
 drivers/isdn/i4l/isdn_common.h                     |   47 -
 drivers/isdn/i4l/isdn_concap.c                     |   99 -
 drivers/isdn/i4l/isdn_concap.h                     |   11 -
 drivers/isdn/i4l/isdn_net.c                        | 3198 -----------------
 drivers/isdn/i4l/isdn_net.h                        |  151 -
 drivers/isdn/i4l/isdn_ppp.c                        | 3046 ----------------
 drivers/isdn/i4l/isdn_ppp.h                        |   41 -
 drivers/isdn/i4l/isdn_tty.c                        | 3756 --------------------
 drivers/isdn/i4l/isdn_tty.h                        |  120 -
 drivers/isdn/i4l/isdn_ttyfax.c                     | 1123 ------
 drivers/isdn/i4l/isdn_ttyfax.h                     |   17 -
 drivers/isdn/i4l/isdn_v110.c                       |  625 ----
 drivers/isdn/i4l/isdn_v110.h                       |   29 -
 drivers/isdn/i4l/isdn_x25iface.c                   |  332 --
 drivers/isdn/i4l/isdn_x25iface.h                   |   30 -
 drivers/isdn/isdnloop/Makefile                     |    5 -
 drivers/isdn/isdnloop/isdnloop.c                   | 1528 --------
 drivers/isdn/isdnloop/isdnloop.h                   |  112 -
 drivers/staging/Kconfig                            |    2 +
 drivers/staging/Makefile                           |    1 +
 drivers/staging/isdn/Kconfig                       |   11 +
 drivers/staging/isdn/Makefile                      |    8 +
 drivers/staging/isdn/TODO                          |   22 +
 .../{isdn/hardware => staging/isdn}/avm/Kconfig    |    0
 .../{isdn/hardware => staging/isdn}/avm/Makefile   |    0
 .../{isdn/hardware => staging/isdn}/avm/avm_cs.c   |    0
 .../{isdn/hardware => staging/isdn}/avm/avmcard.h  |    0
 drivers/{isdn/hardware => staging/isdn}/avm/b1.c   |    0
 .../{isdn/hardware => staging/isdn}/avm/b1dma.c    |    0
 .../{isdn/hardware => staging/isdn}/avm/b1isa.c    |    0
 .../{isdn/hardware => staging/isdn}/avm/b1pci.c    |    0
 .../{isdn/hardware => staging/isdn}/avm/b1pcmcia.c |    0
 drivers/{isdn/hardware => staging/isdn}/avm/c4.c   |    0
 .../{isdn/hardware => staging/isdn}/avm/t1isa.c    |    0
 .../{isdn/hardware => staging/isdn}/avm/t1pci.c    |    0
 drivers/{ => staging}/isdn/gigaset/Kconfig         |    9 -
 drivers/{ => staging}/isdn/gigaset/Makefile        |   10 +-
 drivers/{ => staging}/isdn/gigaset/asyncdata.c     |    0
 drivers/{ => staging}/isdn/gigaset/bas-gigaset.c   |    0
 drivers/{ => staging}/isdn/gigaset/capi.c          |    0
 drivers/{ => staging}/isdn/gigaset/common.c        |    0
 drivers/{ => staging}/isdn/gigaset/dummyll.c       |    0
 drivers/{ => staging}/isdn/gigaset/ev-layer.c      |    0
 drivers/{ => staging}/isdn/gigaset/gigaset.h       |    0
 drivers/{ => staging}/isdn/gigaset/interface.c     |    0
 drivers/{ => staging}/isdn/gigaset/isocdata.c      |    0
 drivers/{ => staging}/isdn/gigaset/proc.c          |    0
 drivers/{ => staging}/isdn/gigaset/ser-gigaset.c   |    0
 drivers/{ => staging}/isdn/gigaset/usb-gigaset.c   |    0
 drivers/{ => staging}/isdn/hysdn/Kconfig           |    0
 drivers/{ => staging}/isdn/hysdn/Makefile          |    0
 drivers/{ => staging}/isdn/hysdn/boardergo.c       |    0
 drivers/{ => staging}/isdn/hysdn/boardergo.h       |    0
 drivers/{ => staging}/isdn/hysdn/hycapi.c          |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_boot.c      |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_defs.h      |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_init.c      |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_net.c       |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_pof.h       |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_procconf.c  |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_proclog.c   |    0
 drivers/{ => staging}/isdn/hysdn/hysdn_sched.c     |    0
 drivers/{ => staging}/isdn/hysdn/ince1pc.h         |    0
 include/linux/concap.h                             |  112 -
 include/linux/isdn.h                               |  473 ---
 include/linux/isdn_divertif.h                      |   35 -
 include/linux/isdn_ppp.h                           |  194 -
 include/linux/isdnif.h                             |  505 ---
 include/linux/wanrouter.h                          |   11 -
 include/uapi/linux/isdn.h                          |  144 -
 include/uapi/linux/isdn_divertif.h                 |   31 -
 include/uapi/linux/isdn_ppp.h                      |   68 -
 include/uapi/linux/isdnif.h                        |   57 -
 include/uapi/linux/wanrouter.h                     |   18 -
 216 files changed, 106 insertions(+), 83878 deletions(-)
 delete mode 100644 Documentation/isdn/HiSax.cert
 delete mode 100644 Documentation/isdn/INTERFACE
 delete mode 100644 Documentation/isdn/INTERFACE.fax
 delete mode 100644 Documentation/isdn/README
 delete mode 100644 Documentation/isdn/README.FAQ
 delete mode 100644 Documentation/isdn/README.HiSax
 delete mode 100644 Documentation/isdn/README.audio
 delete mode 100644 Documentation/isdn/README.concap
 delete mode 100644 Documentation/isdn/README.diversion
 delete mode 100644 Documentation/isdn/README.fax
 delete mode 100644 Documentation/isdn/README.hfc-pci
 delete mode 100644 Documentation/isdn/README.syncppp
 delete mode 100644 Documentation/isdn/README.x25
 delete mode 100644 Documentation/isdn/syncPPP.FAQ
 delete mode 100644 drivers/isdn/capi/capidrv.c
 delete mode 100644 drivers/isdn/capi/capidrv.h
 delete mode 100644 drivers/isdn/divert/Makefile
 delete mode 100644 drivers/isdn/divert/divert_init.c
 delete mode 100644 drivers/isdn/divert/divert_procfs.c
 delete mode 100644 drivers/isdn/divert/isdn_divert.c
 delete mode 100644 drivers/isdn/divert/isdn_divert.h
 delete mode 100644 drivers/isdn/gigaset/i4l.c
 delete mode 100644 drivers/isdn/hardware/Kconfig
 rename drivers/isdn/{i4l => hardware/mISDN}/isdnhdlc.c (99%)
 rename include/linux/isdn/hdlc.h =>
drivers/isdn/hardware/mISDN/isdnhdlc.h (100%)
 delete mode 100644 drivers/isdn/hisax/Kconfig
 delete mode 100644 drivers/isdn/hisax/Makefile
 delete mode 100644 drivers/isdn/hisax/amd7930_fn.c
 delete mode 100644 drivers/isdn/hisax/amd7930_fn.h
 delete mode 100644 drivers/isdn/hisax/arcofi.c
 delete mode 100644 drivers/isdn/hisax/arcofi.h
 delete mode 100644 drivers/isdn/hisax/asuscom.c
 delete mode 100644 drivers/isdn/hisax/avm_a1.c
 delete mode 100644 drivers/isdn/hisax/avm_a1p.c
 delete mode 100644 drivers/isdn/hisax/avm_pci.c
 delete mode 100644 drivers/isdn/hisax/avma1_cs.c
 delete mode 100644 drivers/isdn/hisax/bkm_a4t.c
 delete mode 100644 drivers/isdn/hisax/bkm_a8.c
 delete mode 100644 drivers/isdn/hisax/bkm_ax.h
 delete mode 100644 drivers/isdn/hisax/callc.c
 delete mode 100644 drivers/isdn/hisax/config.c
 delete mode 100644 drivers/isdn/hisax/diva.c
 delete mode 100644 drivers/isdn/hisax/elsa.c
 delete mode 100644 drivers/isdn/hisax/elsa_cs.c
 delete mode 100644 drivers/isdn/hisax/elsa_ser.c
 delete mode 100644 drivers/isdn/hisax/enternow_pci.c
 delete mode 100644 drivers/isdn/hisax/fsm.c
 delete mode 100644 drivers/isdn/hisax/fsm.h
 delete mode 100644 drivers/isdn/hisax/gazel.c
 delete mode 100644 drivers/isdn/hisax/hfc4s8s_l1.c
 delete mode 100644 drivers/isdn/hisax/hfc4s8s_l1.h
 delete mode 100644 drivers/isdn/hisax/hfc_2bds0.c
 delete mode 100644 drivers/isdn/hisax/hfc_2bds0.h
 delete mode 100644 drivers/isdn/hisax/hfc_2bs0.c
 delete mode 100644 drivers/isdn/hisax/hfc_2bs0.h
 delete mode 100644 drivers/isdn/hisax/hfc_pci.c
 delete mode 100644 drivers/isdn/hisax/hfc_pci.h
 delete mode 100644 drivers/isdn/hisax/hfc_sx.c
 delete mode 100644 drivers/isdn/hisax/hfc_sx.h
 delete mode 100644 drivers/isdn/hisax/hfc_usb.c
 delete mode 100644 drivers/isdn/hisax/hfc_usb.h
 delete mode 100644 drivers/isdn/hisax/hfcscard.c
 delete mode 100644 drivers/isdn/hisax/hisax.h
 delete mode 100644 drivers/isdn/hisax/hisax_cfg.h
 delete mode 100644 drivers/isdn/hisax/hisax_debug.h
 delete mode 100644 drivers/isdn/hisax/hisax_fcpcipnp.c
 delete mode 100644 drivers/isdn/hisax/hisax_fcpcipnp.h
 delete mode 100644 drivers/isdn/hisax/hisax_if.h
 delete mode 100644 drivers/isdn/hisax/hisax_isac.c
 delete mode 100644 drivers/isdn/hisax/hisax_isac.h
 delete mode 100644 drivers/isdn/hisax/hscx.c
 delete mode 100644 drivers/isdn/hisax/hscx.h
 delete mode 100644 drivers/isdn/hisax/hscx_irq.c
 delete mode 100644 drivers/isdn/hisax/icc.c
 delete mode 100644 drivers/isdn/hisax/icc.h
 delete mode 100644 drivers/isdn/hisax/ipac.h
 delete mode 100644 drivers/isdn/hisax/ipacx.c
 delete mode 100644 drivers/isdn/hisax/ipacx.h
 delete mode 100644 drivers/isdn/hisax/isac.c
 delete mode 100644 drivers/isdn/hisax/isac.h
 delete mode 100644 drivers/isdn/hisax/isar.c
 delete mode 100644 drivers/isdn/hisax/isar.h
 delete mode 100644 drivers/isdn/hisax/isdnl1.c
 delete mode 100644 drivers/isdn/hisax/isdnl1.h
 delete mode 100644 drivers/isdn/hisax/isdnl2.c
 delete mode 100644 drivers/isdn/hisax/isdnl2.h
 delete mode 100644 drivers/isdn/hisax/isdnl3.c
 delete mode 100644 drivers/isdn/hisax/isdnl3.h
 delete mode 100644 drivers/isdn/hisax/isurf.c
 delete mode 100644 drivers/isdn/hisax/ix1_micro.c
 delete mode 100644 drivers/isdn/hisax/jade.c
 delete mode 100644 drivers/isdn/hisax/jade.h
 delete mode 100644 drivers/isdn/hisax/jade_irq.c
 delete mode 100644 drivers/isdn/hisax/l3_1tr6.c
 delete mode 100644 drivers/isdn/hisax/l3_1tr6.h
 delete mode 100644 drivers/isdn/hisax/l3dss1.c
 delete mode 100644 drivers/isdn/hisax/l3dss1.h
 delete mode 100644 drivers/isdn/hisax/l3ni1.c
 delete mode 100644 drivers/isdn/hisax/l3ni1.h
 delete mode 100644 drivers/isdn/hisax/lmgr.c
 delete mode 100644 drivers/isdn/hisax/mic.c
 delete mode 100644 drivers/isdn/hisax/netjet.c
 delete mode 100644 drivers/isdn/hisax/netjet.h
 delete mode 100644 drivers/isdn/hisax/niccy.c
 delete mode 100644 drivers/isdn/hisax/nj_s.c
 delete mode 100644 drivers/isdn/hisax/nj_u.c
 delete mode 100644 drivers/isdn/hisax/q931.c
 delete mode 100644 drivers/isdn/hisax/s0box.c
 delete mode 100644 drivers/isdn/hisax/saphir.c
 delete mode 100644 drivers/isdn/hisax/sedlbauer.c
 delete mode 100644 drivers/isdn/hisax/sedlbauer_cs.c
 delete mode 100644 drivers/isdn/hisax/sportster.c
 delete mode 100644 drivers/isdn/hisax/st5481.h
 delete mode 100644 drivers/isdn/hisax/st5481_b.c
 delete mode 100644 drivers/isdn/hisax/st5481_d.c
 delete mode 100644 drivers/isdn/hisax/st5481_init.c
 delete mode 100644 drivers/isdn/hisax/st5481_usb.c
 delete mode 100644 drivers/isdn/hisax/tei.c
 delete mode 100644 drivers/isdn/hisax/teleint.c
 delete mode 100644 drivers/isdn/hisax/teles0.c
 delete mode 100644 drivers/isdn/hisax/teles3.c
 delete mode 100644 drivers/isdn/hisax/teles_cs.c
 delete mode 100644 drivers/isdn/hisax/telespci.c
 delete mode 100644 drivers/isdn/hisax/w6692.c
 delete mode 100644 drivers/isdn/hisax/w6692.h
 delete mode 100644 drivers/isdn/i4l/Kconfig
 delete mode 100644 drivers/isdn/i4l/Makefile
 delete mode 100644 drivers/isdn/i4l/isdn_audio.c
 delete mode 100644 drivers/isdn/i4l/isdn_audio.h
 delete mode 100644 drivers/isdn/i4l/isdn_bsdcomp.c
 delete mode 100644 drivers/isdn/i4l/isdn_common.c
 delete mode 100644 drivers/isdn/i4l/isdn_common.h
 delete mode 100644 drivers/isdn/i4l/isdn_concap.c
 delete mode 100644 drivers/isdn/i4l/isdn_concap.h
 delete mode 100644 drivers/isdn/i4l/isdn_net.c
 delete mode 100644 drivers/isdn/i4l/isdn_net.h
 delete mode 100644 drivers/isdn/i4l/isdn_ppp.c
 delete mode 100644 drivers/isdn/i4l/isdn_ppp.h
 delete mode 100644 drivers/isdn/i4l/isdn_tty.c
 delete mode 100644 drivers/isdn/i4l/isdn_tty.h
 delete mode 100644 drivers/isdn/i4l/isdn_ttyfax.c
 delete mode 100644 drivers/isdn/i4l/isdn_ttyfax.h
 delete mode 100644 drivers/isdn/i4l/isdn_v110.c
 delete mode 100644 drivers/isdn/i4l/isdn_v110.h
 delete mode 100644 drivers/isdn/i4l/isdn_x25iface.c
 delete mode 100644 drivers/isdn/i4l/isdn_x25iface.h
 delete mode 100644 drivers/isdn/isdnloop/Makefile
 delete mode 100644 drivers/isdn/isdnloop/isdnloop.c
 delete mode 100644 drivers/isdn/isdnloop/isdnloop.h
 create mode 100644 drivers/staging/isdn/Kconfig
 create mode 100644 drivers/staging/isdn/Makefile
 create mode 100644 drivers/staging/isdn/TODO
 rename drivers/{isdn/hardware => staging/isdn}/avm/Kconfig (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/Makefile (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/avm_cs.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/avmcard.h (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/b1.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/b1dma.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/b1isa.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/b1pci.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/b1pcmcia.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/c4.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/t1isa.c (100%)
 rename drivers/{isdn/hardware => staging/isdn}/avm/t1pci.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/Kconfig (91%)
 rename drivers/{ => staging}/isdn/gigaset/Makefile (74%)
 rename drivers/{ => staging}/isdn/gigaset/asyncdata.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/bas-gigaset.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/capi.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/common.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/dummyll.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/ev-layer.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/gigaset.h (100%)
 rename drivers/{ => staging}/isdn/gigaset/interface.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/isocdata.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/proc.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/ser-gigaset.c (100%)
 rename drivers/{ => staging}/isdn/gigaset/usb-gigaset.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/Kconfig (100%)
 rename drivers/{ => staging}/isdn/hysdn/Makefile (100%)
 rename drivers/{ => staging}/isdn/hysdn/boardergo.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/boardergo.h (100%)
 rename drivers/{ => staging}/isdn/hysdn/hycapi.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_boot.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_defs.h (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_init.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_net.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_pof.h (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_procconf.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_proclog.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/hysdn_sched.c (100%)
 rename drivers/{ => staging}/isdn/hysdn/ince1pc.h (100%)
 delete mode 100644 include/linux/concap.h
 delete mode 100644 include/linux/isdn.h
 delete mode 100644 include/linux/isdn_divertif.h
 delete mode 100644 include/linux/isdn_ppp.h
 delete mode 100644 include/linux/isdnif.h
 delete mode 100644 include/linux/wanrouter.h
 delete mode 100644 include/uapi/linux/isdn.h
 delete mode 100644 include/uapi/linux/isdn_divertif.h
 delete mode 100644 include/uapi/linux/isdn_ppp.h
 delete mode 100644 include/uapi/linux/isdnif.h
 delete mode 100644 include/uapi/linux/wanrouter.h
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
