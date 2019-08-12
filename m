Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id E997F89552
	for <lists+isdn4linux@lfdr.de>; Mon, 12 Aug 2019 04:06:13 +0200 (CEST)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id x7C224V0021794;
	Mon, 12 Aug 2019 04:02:22 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Authentication-Results: listserv.isdn4linux.de;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ya.ru header.i=@ya.ru header.b="Ns57BAss"
Received: from forward105p.mail.yandex.net (forward105p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:108])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id x7C21v5n021762
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 12 Aug 2019 04:01:57 +0200
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at listserv.isdn4linux.de
Received: from mxback19o.mail.yandex.net (mxback19o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::70])
 by forward105p.mail.yandex.net (Yandex) with ESMTP id E36954D404A4
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 12 Aug 2019 05:01:56 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback19o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id PSgtxUIhxq-1uq0Cxg3;
 Mon, 12 Aug 2019 05:01:56 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ya.ru; s=mail;
 t=1565575316; bh=BQKr3OvDuguSXhzF8fqJ3EOtPQzAv2elJDb71ZgRiCY=;
 h=Message-Id:Date:Subject:To:From;
 b=Ns57BAsscw02nJbiFEs0iAdEQmmbQTfCBprN/gQaQZsXjpNB3nuiy4G3VL+YpPMqp
 kchlvhBHrSKVZEfout0GQYXCm3e3jnFpnyMDzre4zmFmE9CJ2Vt10OFnatoV2psWFE
 NhG9yqqrpjwYbNKtFHumURcSuRr+nIDYwTQiBhww=
Authentication-Results: mxback19o.mail.yandex.net; dkim=pass header.i=@ya.ru
Received: by myt3-daa25987f51b.qloud-c.yandex.net with HTTP;
 Mon, 12 Aug 2019 05:01:56 +0300
From: "lts2000@ya.ru" <lts2000@ya.ru>
Envelope-From: lts2000@yandex.ru
To: isdn4linux@listserv.isdn4linux.de
Subject: Errors when compilling LCR --with-sip --with-gsm-bs --with-gsm-ms
 --with-asterisk
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 12 Aug 2019 05:01:56 +0300
Message-Id: <2862091565575316@myt3-daa25987f51b.qloud-c.yandex.net>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Mon, 12 Aug 2019 04:02:42 +0200 (CEST)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Mon, 12 Aug 2019 04:01:58 +0200 (CEST)
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE autolearn=ham autolearn_force=no version=3.4.2-i4l
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

Hello! 

I'm trying to compile openbsc, libosmocore, libosmo-abis, libosmo-netif and LCR following this howto:

https://osmocom.org/projects/cellular-infrastructure/wiki/SDR_OsmoTRX_network_from_scratch

When i'm trying to ./config --with-asterisk option and then trying to 'make', make aborting with "recipe for target 'chan_lcr.po' failed" error.
When i'm trying to ./config without "--with-asterisk" option and then trying to 'make', make aborting with another error:


depbase=`echo sip.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
        g++ -DHAVE_CONFIG_H -I.    -DWITH_GSMFR  -DWITH_GSMAMR -DWITH_GSM_BS -DWITH_GSM_MS  -DWITH_SIP -I/usr/include/sofia-sip-1.12    -Wall -DCONFIG_DATA="\"/usr/local/etc/lcr\"" -DSHARE_DATA="\"/usr/local/share/lcr\"" -DLOG_DIR="\"/usr/local/var/log/lcr\"" -DEXTENSION_DATA="\"/usr/local/var/lib/lcr/extensions\""   -g -O2 -MT sip.o -MD -MP -MF $depbase.Tpo -c -o sip.o sip.cpp &&\
sip.cpp:22:2: warning: #warning ******************************************************** [-Wcpp]
sip.cpp:23:2: warning: #warning Please apply the sofia-sip-gcc-4.8.patch ! [-Wcpp]
sip.cpp:24:2: warning: #warning If this issue is already fixed, just remove this check. [-Wcpp]
sip.cpp:25:2: warning: #warning ******************************************************** [-Wcpp]
sip.cpp:26:2: error: #error
make[2]: *** [sip.o] Error 1
make[1]: *** [all-recursive] Error 1
make: *** [all] Error 2

Tried to compile it on Ubuntu 12.04.5 LTS, Debian 8, Ubuntu 16, Ubuntu 18, all distros are x64, gcc 4.6 to gcc 4.9, asterisk 11 to 13.

I've spent hours trying to make it work and now asking for some assistance. Thank you!
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
