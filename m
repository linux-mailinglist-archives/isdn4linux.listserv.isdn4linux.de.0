Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8E14F7FF
	for <lists+isdn4linux@lfdr.de>; Sat,  1 Feb 2020 14:58:40 +0100 (CET)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id 011Dt78G1037960;
	Sat, 1 Feb 2020 14:55:26 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.5 at listserv.isdn4linux.de
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id 011Dt2VC1037941
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <isdn4linux@listserv.isdn4linux.de>; Sat, 1 Feb 2020 14:55:02 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.5 at listserv.isdn4linux.de
Received: from mail-qv1-f52.google.com ([209.85.219.52]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MysBI-1jkscc1b5G-00vxo7 for <isdn4linux@listserv.isdn4linux.de>; Sat, 01
 Feb 2020 14:14:08 +0100
Received: by mail-qv1-f52.google.com with SMTP id s7so4648828qvn.8
 for <isdn4linux@listserv.isdn4linux.de>; Sat, 01 Feb 2020 05:14:08 -0800 (PST)
X-Gm-Message-State: APjAAAVR1blvILYd+vBGHvRUlxCUbgS5y65U6Ad7TBUy7SYDqq/At7hy
 kgtGsK52Y0leKVvVPN+BCG4keujB2Io7j32ke+s=
X-Google-Smtp-Source: APXvYqzuLmZzlDe0WECUf1s9qKLEpATfkBs6kbKsvRbW3f8o8LQknpzhDn9B3Z0XpzmFVAqpHPZ3Q2HxrreY9WC02o4=
X-Received: by 2002:a05:6214:524:: with SMTP id
 x4mr12953450qvw.4.1580562847224; 
 Sat, 01 Feb 2020 05:14:07 -0800 (PST)
MIME-Version: 1.0
References: <20200201124301.21148-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200201124301.21148-1-lukas.bulwahn@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 1 Feb 2020 14:13:49 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0eL7MH8cfMcq9NNWOggepNAu7vhQSw9_ED_4WXZyY35A@mail.gmail.com>
Message-ID: <CAK8P3a0eL7MH8cfMcq9NNWOggepNAu7vhQSw9_ED_4WXZyY35A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: correct entries for ISDN/mISDN section
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Provags-ID: V03:K1:p0qH1rBW/Qb2sIINfEGRWVFax3QmrfT+EovU1SdQUdRu2XPRqQb
 Bva92gZKKVXw8tFnaiE/u0pd8iELc8FhPIIjA5Byu40F1RKDinrzlAZmMMpIqJU0696SGnl
 yhWtGJs4Kc8nAXzztPQFFjTP7oqtw+xsGmTCrrtcjOLy/2kXSvoB+5cfjXIbkNDHbU1iiA/
 IEtfZZlrXAb/DB0tvjTrg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FrEz3qByugI=:590d3UJ0boMtt6KdbAiJL3
 DhExiLZwbXqh6YXcFqhBjRQutw0olnxhnKEZKH+jbN7CHbGq437ictm5dYnbj0T4V6/Zb9XCm
 jK9Ycea4YR/hgiAWG9RthtPfFg9S1SVaErHCJNVIyAg9FvN/YpNyfdcvmuvc/4kZh8wx1K995
 65N7Pawp1IcFDCgA7Ska0x8/n65UKA1BsWoRoEQIejvBSDjPvI49PmqwWHuYGFcWOX6nYNeze
 1JuItLQf06SvfdvjybxzeQNLZdJBN3sWH73O/mVi1O5rBCALJa8/9SYQWpM6ijfDhRcr4cPPB
 DAaX2h5tDY341RROa/dGZgCx+QF/3qwjbB8JcP+QKBfsTc1AAbznrVahjcvFM99RtEy2EtsGa
 Lt9jI7U+88a6rnOnbgAegYVhP+8J7Fn6QtQKNDPpvIEwqrjdazRD0B/+VH2ylneecXcp640Mn
 MlMNvRQO3y5QNrD803tVT4N2YfWiqozUZ4shcsY1aoUNprn6xenWoY3YMWpBQwVBm7+Hp3SSR
 dDS1zAjzkgtZ3rg1d+L7zZd6Me0PeTu1B4d/B5SAbuonSvUX246xmjFbezRe4lI51/JInuCiG
 qJPfweHmh+XzHxBXhkzgp8pDzPB3RKn0aM7JNo9+vH5wN8ecZBXFfWjZou1uwW3eXKm2ytSOU
 ADGEyDN1h4woCsXF2REjMkMqjLpJsE/RTXEOaydNPbfOfrdA0Wi53czZw6AVKpdaxBaAi5dMz
 NE5AedHYqn4y2u8FQT9BR5J/UEryid83vZ7vL1kVUu1yxU3Tc7yANruTOFhaex9mqe50G5Wdf
 56xRmuf91tVvy8vsVdYCLrfeLcNgHNaMjAl1n0DAwcpbwDDm/I=
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Sat, 01 Feb 2020 14:55:41 +0100 (CET)
X-Greylist: inspected by milter-greylist-4.6.2 (listserv.isdn4linux.de
 [82.165.11.104]);
 Sat, 01 Feb 2020 14:55:02 +0100 (CET) for IP:'212.227.17.24'
 DOMAIN:'mout.kundenserver.de' HELO:'mout.kundenserver.de'
 FROM:'arnd@arndb.de' RCPT:''
X-Greylist: Delayed for 00:35:51 by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Sat, 01 Feb 2020 14:55:02 +0100 (CET)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE
	autolearn=no autolearn_force=no version=3.4.3-i4l
X-Spam-Checker-Version: SpamAssassin 3.4.3-i4l (2019-12-06) on
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
Cc: Networking <netdev@vger.kernel.org>, Karsten Keil <isdn@linux-pingi.de>,
        isdn4linux@listserv.isdn4linux.de,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

On Sat, Feb 1, 2020 at 1:44 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Commit 6d97985072dc ("isdn: move capi drivers to staging") cleaned up the
> isdn drivers and split the MAINTAINERS section for ISDN, but missed to add
> the terminal slash for the two directories mISDN and hardware. Hence, all
> files in those directories were not part of the new ISDN/mISDN SUBSYSTEM,
> but were considered to be part of "THE REST".
>
> Rectify the situation, and while at it, also complete the section with two
> further build files that belong to that subsystem.
>
> This was identified with a small script that finds all files belonging to
> "THE REST" according to the current MAINTAINERS file, and I investigated
> upon its output.
>
> Fixes: 6d97985072dc ("isdn: move capi drivers to staging")
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Arnd, please ack or even pick it.
> It is no functional change, so I guess you could simply pick in your own
> tree for minor fixes.

Thanks for fixing this,

Acked-by: Arnd Bergmann <arnd@arndb.de>
_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux
