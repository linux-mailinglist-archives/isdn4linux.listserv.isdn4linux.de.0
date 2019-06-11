Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F22B3C58A
	for <lists+isdn4linux@lfdr.de>; Tue, 11 Jun 2019 10:05:10 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x5B81CPG005642;
	Tue, 11 Jun 2019 10:01:41 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from waikiki.ops.eusc.inter.net (waikiki.ops.eusc.inter.net
 [IPv6:2001:1560:3:255:0:0:0:155])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x5B80xLV005452
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Tue, 11 Jun 2019 10:01:00 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
X-Trace: 507c73696d6f6e2e65686c656e7c38372e37392e39332e3134307c316861626942
 2d303030416e482d48707c31353630323430303535
Received: from waikiki.ops.eusc.inter.net ([10.155.10.22] helo=localhost)
 by waikiki.ops.eusc.inter.net with esmtpsa (Exim 4.92) 
 id 1habiB-000AnH-Hp; Tue, 11 Jun 2019 10:00:55 +0200
Received: from [10.16.35.209] (unknown [10.16.35.209])
 by lola.ninela.de (Postfix) with ESMTPSA id BCFBC24C28C;
 Tue, 11 Jun 2019 10:00:44 +0200 (CEST)
Subject: Re: [PATCH 0/5] isdn: deprecate non-mISDN drivers
To: Arnd Bergmann <arnd@arndb.de>
References: <20190423151143.464992-1-arnd@arndb.de>
From: Simon Ehlen <simon.ehlen@koeln.de>
Openpgp: preference=signencrypt
Autocrypt: addr=simon.ehlen@koeln.de; prefer-encrypt=mutual; keydata=
 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 0snB
Message-ID: <7a448b43-4dd5-8c84-691f-b563ff71ea26@koeln.de>
Date: Tue, 11 Jun 2019 10:00:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190423151143.464992-1-arnd@arndb.de>
X-SA-Exim-Connect-IP: 87.79.93.140
X-SA-Exim-Mail-From: simon.ehlen@koeln.de
X-SA-Exim-Scanned: No (on waikiki.ops.eusc.inter.net);
 SAEximRunCond expanded to false
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Tue, 11 Jun 2019 10:02:03 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Tue, 11 Jun 2019 10:01:00 +0200 (CEST)
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham autolearn_force=no version=3.4.2-i4l
X-Spam-Checker-Version: SpamAssassin 3.4.2-i4l (2018-09-13) on
	listserv.isdn4linux.de
X-MIME-Autoconverted: from quoted-printable to 8bit by listserv.isdn4linux.de
 id x5B80xLV005452
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
Cc: isdn4linux@listserv.isdn4linux.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

Hi,

Am 23.04.2019 um 17:11 schrieb Arnd Bergmann:
> It turns out that the suggestion from Karsten Keil wa to remove I4L
> in 2018 after the last public ISDN networks are shut down. This has
> happened now (with a very small number of exceptions), so I guess it's
> time to try again.
There are still public ISDN networks available. My provider (NetCologne) is still serving native ISDN.
> If anyone is still using isdn4linux and CAPI with modern kernels, please
> speak up now.
I'm using kernel isdn support in different ways.
1. To connect (b1pci,capidrv) to the PSTN of my provider to use phone (capi, chan_capi), fax (capi4hylafax, hylafax) and answering machine (vbox) services.
2. To build an internal ISDN network using hfc in NT mode.

There are other users as well still making use of isdn support in the linux kernel. [1]
As he pointed out, although public ISDN services are phasing out every AVM Fritz!Box is capable of providing VOIP services over it's internal S0 bus.
In case my provider decides to shut down ISDN I would make use of the S0 bus to keep my services running.

So please refrain from removing ISDN/CAPI support of the linux kernel.
>       Arnd
Kind regards,
Simon

[1] https://lkml.org/lkml/2019/6/9/168


_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
