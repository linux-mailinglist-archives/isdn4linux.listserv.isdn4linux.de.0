Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 18110119AAF
	for <lists+isdn4linux@lfdr.de>; Tue, 10 Dec 2019 23:09:47 +0100 (CET)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id xBAM5FFZ017370;
	Tue, 10 Dec 2019 23:05:33 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id xBAM5BkV017358
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Tue, 10 Dec 2019 23:05:11 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from mail-qv1-f53.google.com ([209.85.219.53]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MORMu-1iMiqF04Q2-00Pupt for <isdn4linux@listserv.isdn4linux.de>; Tue, 10
 Dec 2019 21:59:05 +0100
Received: by mail-qv1-f53.google.com with SMTP id t7so4788937qve.4
 for <isdn4linux@listserv.isdn4linux.de>; Tue, 10 Dec 2019 12:59:04 -0800 (PST)
X-Gm-Message-State: APjAAAWqLB5B5n8JguTJoitpXGyAwhrRl6VYDEa7269gvVo0E01hl+Ek
 j2Mz32gqQo66CsEqjxqXZaqMA3TKB3lR/Ef0fDk=
X-Google-Smtp-Source: APXvYqxpaP4eHtfb0T1AafOuFFfZMxdK72/d9eCePNosbyemaiai5Ww7g6ZIkMFUlJlmnLpkyxwi/16JxNs8ZYi0oFM=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr29359318qvp.210.1576011543816; 
 Tue, 10 Dec 2019 12:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20191209151114.2410762-1-arnd@arndb.de>
 <20191210091905.GA3547805@kroah.com>
In-Reply-To: <20191210091905.GA3547805@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Dec 2019 21:58:47 +0100
X-Gmail-Original-Message-ID: <CAK8P3a21ubUOvKKFYPbC7tqg0wPjBi7iR7ZZP0xTbvvt6=PiEw@mail.gmail.com>
Message-ID: <CAK8P3a21ubUOvKKFYPbC7tqg0wPjBi7iR7ZZP0xTbvvt6=PiEw@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: remove isdn capi drivers
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Provags-ID: V03:K1:Huo7j9pwQeVcMBIIyWZq1FUSSwnF5ZOOubZRGKfKcBteIHcaWWh
 olocQSXzVlQWDrAe6zNEzAylAUM0sSOF9e5tn5q+woSHcic7smS9APyYxBi8plnSpKZ4trb
 cTKZ4LGqRqybMfBd40dSbr4RcQxqf99I6+ynz9+2tVQmYdUgHZKdi5J8QeXTy8G4kIo732p
 LMaZIXzN+EvZSXU9NUWsA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:2ju9Fj1lR5Q=:po6uZ8mK/PWndF1w736Ysx
 +rk9BqlmBJh2XHn/I8CYWXMuQC66zcMB9u98BuPhMgf9rmAeqDJ1BX52xxlcYoB5TZTJpdauw
 htqbDa8e7iX73SkdEDNxiMSx4+PhlWNgqlZ4rmpInUSWIZQw4F05ylCdNfg5bQBH1UhbMSfPB
 5R79KRebmtcmQe9723rWirxr3BuoAtmib38gpbtPkGQsZZ31xE3DwP8lNYaW1ffXKBkTy3ar9
 ivWp0YtuG2xAfDZ9e/yA1pn0W7fEem62o5RQDWaFq2IudihOr9bVOYNUHZstBJmO/yjk/MCtr
 4U6vxpSYKjmQBmgLd6DIU4qh44kI2zhK0FU9zI5EXgyiHbYN8VwbSZTkl/e4b7P7Q9GuMhWod
 NeI5f1VHgaKeFvFbUkAtYlT5sMCzOfAb7VesIBbOsF4AUStkoK8U5cwxRePWpEOUuwDRFJ7Sl
 HiIYC4ToableuKDc+evzhvVl4vkSpE+ziM9joR6CaR8thIMcIWn+rtDbvcbGARYKpKTcMaZRu
 fDGx7MnkD84LA/S9WbZ/RXlX0Sv6NHfoIShSQgkYkTzhAsL7gYPy2y7nkfoBk0HYf4xKAPRHu
 qv1JjgEBv7MF9w5AawODTFnrfckcfxYUZ3YK+BDuSQ9/qjylbKXcD0q05l+jBrhFj0C+oSWf5
 e8p7VFWRzt+6yzhe4egsfBtW78b3x3ub237i3kbwfCzVmzoRQB2brew6Er6XSYZ8DzM0+DCV+
 4cgMWCm+Yvtfk4knvKii+a1r/AvfjHM6yIRIi2osIQSthHOMXl3R1bDRxhEr8eWCU1ppwBQrb
 l/KApjO2bFsiKKWVz8r1gGgYVsHcxYBMkf5seXW9B1m4fL15bMrWtvyPgN97uBhZEXmEDSdLi
 puUn3mSl3dZveFxpM8hg==
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Tue, 10 Dec 2019 23:05:48 +0100 (CET)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [82.165.11.104]);
 Tue, 10 Dec 2019 23:05:11 +0100 (CET) for IP:'217.72.192.74'
 DOMAIN:'mout.kundenserver.de' HELO:'mout.kundenserver.de'
 FROM:'arnd@arndb.de' RCPT:''
X-Greylist: Delayed for 00:53:34 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Tue, 10 Dec 2019 23:05:11 +0100 (CET)
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Networking <netdev@vger.kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bluez mailing list <linux-bluetooth@vger.kernel.org>,
        isdn4linux@listserv.isdn4linux.de,
        "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

On Tue, Dec 10, 2019 at 10:19 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Dec 09, 2019 at 04:11:13PM +0100, Arnd Bergmann wrote:
> > As described in drivers/staging/isdn/TODO, the drivers are all
> > assumed to be unmaintained and unused now, with gigaset being the
> > last one to stop being maintained after Paul Bolle lost access
> > to an ISDN network.
> >
> > The CAPI subsystem remains for now, as it is still required by
> > bluetooth/cmtp.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  Documentation/ioctl/ioctl-number.rst        |    1 -
>
> This file is not in 5.5-rc1, what tree did you make this against?

This was against v5.4, sending a rebased version now.

      Arnd
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
