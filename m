Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47A117347
	for <lists+isdn4linux@lfdr.de>; Mon,  9 Dec 2019 18:58:47 +0100 (CET)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id xB9HoNR4013114;
	Mon, 9 Dec 2019 18:50:36 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000:0:0:0:1:9])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id xB9HoGxl013102
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Mon, 9 Dec 2019 18:50:18 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 587FC15433951;
 Mon,  9 Dec 2019 09:11:29 -0800 (PST)
Date: Mon, 09 Dec 2019 09:11:26 -0800 (PST)
Message-Id: <20191209.091126.397853146180657876.davem@davemloft.net>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH 1/2] staging: remove isdn capi drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191209153743.GA1284708@kroah.com>
References: <20191209151114.2410762-1-arnd@arndb.de>
 <20191209153743.GA1284708@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Mon, 09 Dec 2019 18:50:44 +0100 (CET)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Mon, 09 Dec 2019 18:50:18 +0100 (CET) for IP:'2620:137:e000::1:9'
 DOMAIN:'shards.monkeyblade.net' HELO:'shards.monkeyblade.net'
 FROM:'davem@davemloft.net' RCPT:''
X-Greylist: Delayed for 00:38:44 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd]);
 Mon, 09 Dec 2019 18:50:18 +0100 (CET)
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 09 Dec 2019 09:11:29 -0800 (PST)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,SPF_HELO_NONE autolearn=no
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
Cc: devel@driverdev.osuosl.org, johan.hedberg@gmail.com, arnd@arndb.de,
        netdev@vger.kernel.org, marcel@holtmann.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        isdn4linux@listserv.isdn4linux.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 9 Dec 2019 16:37:43 +0100

> On Mon, Dec 09, 2019 at 04:11:13PM +0100, Arnd Bergmann wrote:
>> As described in drivers/staging/isdn/TODO, the drivers are all
>> assumed to be unmaintained and unused now, with gigaset being the
>> last one to stop being maintained after Paul Bolle lost access
>> to an ISDN network.
>> 
>> The CAPI subsystem remains for now, as it is still required by
>> bluetooth/cmtp.
>> 
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Nice!  You beat me to it :)
> 
> I'll go queue this up soon.
> 
> David, any objection for me taking patch 2/2 here as well?

No objections.
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
