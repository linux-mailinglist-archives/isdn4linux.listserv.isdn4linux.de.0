Return-Path: <isdn4linux-bounces@listserv.isdn4linux.de>
X-Original-To: lists+isdn4linux@lfdr.de
Delivered-To: lists+isdn4linux@lfdr.de
Received: from listserv.isdn4linux.de (listserv.isdn4linux.de [IPv6:2001:8d8:912:a9e:ab05:ddc6:eb4a:1ffd])
	by mail.lfdr.de (Postfix) with ESMTPS id 4383AF9006
	for <lists+isdn4linux@lfdr.de>; Tue, 12 Nov 2019 13:54:16 +0100 (CET)
Received: from listserv.isdn4linux.de (localhost [IPv6:0:0:0:0:0:0:0:1])
	by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTP id xACClGPq018826;
	Tue, 12 Nov 2019 13:47:45 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by listserv.isdn4linux.de (8.15.2/8.15.2) with ESMTPS id xACClCrf018808
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL)
 for <isdn4linux@listserv.isdn4linux.de>; Tue, 12 Nov 2019 13:47:13 +0100
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at listserv.isdn4linux.de
Received: by mail-wr1-f41.google.com with SMTP id p4so18357729wrm.8
 for <isdn4linux@listserv.isdn4linux.de>; Tue, 12 Nov 2019 04:47:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=vdp2VptGNJekiZmkTb4dF/+DV8OZKQKjdVniiwR/Ubg=;
 b=ib7biquPctXeN0TgKjM/rlKf6JU6Y/gXPsYEt7nfKR4vFdJDOnozDuiGD8RmcqSLBC
 JQlfiag2LzG/lPjRGW/lLmxrQ9TG63kWB27x1fzRZcSbjPH8OpbZ0Qc1Are4NZNm26OH
 mu5Q+mVOfIqJruTUc0Q1Dw9eCNz1RnR1iLzeTXH4pJN/LgOHMvWePG9ZkACDdBoUeic1
 N2iR9Ny53CKJZbM+HhFBeao0cXU5lKsQORcQtZl1qggG/uXUcXfzfKW0ytEg08orO3vV
 yf5LdcZXaq47WpAEFmKaE8TfJpDElRf+LpnfE4qOQKhVC+E07K7w+CInqKVwGL4paRtm
 nAyg==
X-Gm-Message-State: APjAAAWUejG/ltCwkiJnKtHZEGaQdovWNLJW39kYhH8O+wG4w+Epehfv
 piEZdvI0rIBT2wwyLrnfZ+WEf5PSpNSv8Cr5EEhlzA==
X-Google-Smtp-Source: APXvYqwMl+yLymRW5Im41oNxR34CSMTSNT4WmQqCC2/+C9+bdJldZQCGJPleONml6Dknm5zvkoCZBRWNkxNYv0hNKMk=
X-Received: by 2002:adf:8044:: with SMTP id 62mr7113858wrk.244.1573562831059; 
 Tue, 12 Nov 2019 04:47:11 -0800 (PST)
MIME-Version: 1.0
References: <mailman.1.1571479201.18451.isdn4linux@listserv.isdn4linux.de>
In-Reply-To: <mailman.1.1571479201.18451.isdn4linux@listserv.isdn4linux.de>
From: Filipe Ratz <contato@filiperatz.com>
Date: Tue, 12 Nov 2019 09:46:59 -0300
Message-ID: <CABGdrfkh30n3figZK_w5FXpapLwRPib2-a93t+=MmvNUBRYs3A@mail.gmail.com>
Subject: Re: isdn4linux Digest, Vol 168, Issue 3
To: isdn4linux@listserv.isdn4linux.de
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2 (listserv.isdn4linux.de [IPv6:::1]); Tue, 12 Nov 2019 13:48:03 +0100 (CET)
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.6.2
 (listserv.isdn4linux.de [82.165.11.104]);
 Tue, 12 Nov 2019 13:47:13 +0100 (CET)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,HTML_MESSAGE,MAILING_LIST_MULTI,
	RAZOR2_CF_RANGE_51_100,RAZOR2_CHECK,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=no autolearn_force=no
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
Content-Type: multipart/mixed; boundary="===============0350230105756207478=="
Errors-To: isdn4linux-bounces@listserv.isdn4linux.de
Sender: "isdn4linux" <isdn4linux-bounces@listserv.isdn4linux.de>

--===============0350230105756207478==
Content-Type: multipart/alternative; boundary="00000000000093c282059725a5b9"

--00000000000093c282059725a5b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Help


Atenciosamente,


*Filipe Ratz*

+55 71 9 9920 2820
mailme: contato@filiperatz.com
skype: filiperatz


Em s=C3=A1b, 19 de out de 2019 =C3=A0s 07:00, <
isdn4linux-request@listserv.isdn4linux.de> escreveu:

> Send isdn4linux mailing list submissions to
>         isdn4linux@listserv.isdn4linux.de
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://www.isdn4linux.de/mailman/listinfo/isdn4linux
> or, via email, send a message with subject or body 'help' to
>         isdn4linux-request@listserv.isdn4linux.de
>
> You can reach the person managing the list at
>         isdn4linux-owner@listserv.isdn4linux.de
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of isdn4linux digest..."
>
>
> Today's Topics:
>
>    1. Re: [Y2038] [PATCH v6 16/43] compat_ioctl: move isdn/capi
>       ioctl translation into driver (Arnd Bergmann)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 18 Oct 2019 16:18:19 +0200
> From: Arnd Bergmann <arnd@arndb.de>
> To: Ben Hutchings <ben.hutchings@codethink.co.uk>
> Cc: Al Viro <viro@zeniv.linux.org.uk>, Karsten Keil
>         <isdn@linux-pingi.de>, y2038 Mailman List <y2038@lists.linaro.org
> >,
>         Networking <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.or=
g
> "
>         <linux-kernel@vger.kernel.org>, isdn4linux@listserv.isdn4linux.de=
,
>         Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>
> Subject: Re: [Y2038] [PATCH v6 16/43] compat_ioctl: move isdn/capi
>         ioctl translation into driver
> Message-ID:
>         <
> CAK8P3a3xOo6ccFbSmZNZs+9Z42oREx+gAObxDiwTQPujndEBBw@mail.gmail.com>
> Content-Type: text/plain; charset=3D"UTF-8"
>
> On Thu, Oct 17, 2019 at 8:25 PM Ben Hutchings
> <ben.hutchings@codethink.co.uk> wrote:
> >
> > On Wed, 2019-10-09 at 21:10 +0200, Arnd Bergmann wrote:
> > [...]
> > > --- a/drivers/isdn/capi/capi.c
> > > +++ b/drivers/isdn/capi/capi.c
> > > @@ -950,6 +950,34 @@ capi_unlocked_ioctl(struct file *file, unsigned
> int cmd, unsigned long arg)
> > >       return ret;
> > >  }
> > >
> > > +#ifdef CONFIG_COMPAT
> > > +static long
> > > +capi_compat_ioctl(struct file *file, unsigned int cmd, unsigned long
> arg)
> > > +{
> > > +     int ret;
> > > +
> > > +     if (cmd =3D=3D CAPI_MANUFACTURER_CMD) {
> > > +             struct {
> > > +                     unsigned long cmd;
> >
> > Should be u32?
>
> Good catch, changed to compat_ulong_t now.
>
> Thanks,
>
>       Arnd
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> isdn4linux mailing list
> isdn4linux@listserv.isdn4linux.de
> https://www.isdn4linux.de/mailman/listinfo/isdn4linux
>
>
> ------------------------------
>
> End of isdn4linux Digest, Vol 168, Issue 3
> ******************************************
>

--00000000000093c282059725a5b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Help<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div><br></div><br>Atenciosamente,<br><br>=
<div><img src=3D"http://25.media.tumblr.com/tumblr_ldj2j6H4be1qfzflwo1_100.=
png"><br><b>Filipe Ratz</b></div><div><div><br></div><div><div><div>+55 71 =
9 9920 2820</div><div>mailme:=C2=A0<a href=3D"mailto:contato@filiperatz.com=
" target=3D"_blank">contato@filiperatz.com</a></div></div><div>skype: filip=
eratz</div></div></div></div></div></div></div></div></div></div><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Em s=
=C3=A1b, 19 de out de 2019 =C3=A0s 07:00, &lt;<a href=3D"mailto:isdn4linux-=
request@listserv.isdn4linux.de">isdn4linux-request@listserv.isdn4linux.de</=
a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Send isdn4linux mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:isdn4linux@listserv.isdn4linu=
x.de" target=3D"_blank">isdn4linux@listserv.isdn4linux.de</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://www.isdn4linux.de/mailman/li=
stinfo/isdn4linux" rel=3D"noreferrer" target=3D"_blank">https://www.isdn4li=
nux.de/mailman/listinfo/isdn4linux</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:isdn4linux-request@listserv.i=
sdn4linux.de" target=3D"_blank">isdn4linux-request@listserv.isdn4linux.de</=
a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:isdn4linux-owner@listserv.isd=
n4linux.de" target=3D"_blank">isdn4linux-owner@listserv.isdn4linux.de</a><b=
r>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of isdn4linux digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: [Y2038] [PATCH v6 16/43] compat_ioctl: move isdn/capi<b=
r>
=C2=A0 =C2=A0 =C2=A0 ioctl translation into driver (Arnd Bergmann)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Fri, 18 Oct 2019 16:18:19 +0200<br>
From: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank">=
arnd@arndb.de</a>&gt;<br>
To: Ben Hutchings &lt;<a href=3D"mailto:ben.hutchings@codethink.co.uk" targ=
et=3D"_blank">ben.hutchings@codethink.co.uk</a>&gt;<br>
Cc: Al Viro &lt;<a href=3D"mailto:viro@zeniv.linux.org.uk" target=3D"_blank=
">viro@zeniv.linux.org.uk</a>&gt;, Karsten Keil<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:isdn@linux-pingi.de" targ=
et=3D"_blank">isdn@linux-pingi.de</a>&gt;, y2038 Mailman List &lt;<a href=
=3D"mailto:y2038@lists.linaro.org" target=3D"_blank">y2038@lists.linaro.org=
</a>&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Networking &lt;<a href=3D"mailto:netdev@vger.ke=
rnel.org" target=3D"_blank">netdev@vger.kernel.org</a>&gt;, &quot;<a href=
=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blank">linux-kernel@vge=
r.kernel.org</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:linux-kernel@vger.kernel.=
org" target=3D"_blank">linux-kernel@vger.kernel.org</a>&gt;, <a href=3D"mai=
lto:isdn4linux@listserv.isdn4linux.de" target=3D"_blank">isdn4linux@listser=
v.isdn4linux.de</a>,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linux FS-devel Mailing List &lt;<a href=3D"mail=
to:linux-fsdevel@vger.kernel.org" target=3D"_blank">linux-fsdevel@vger.kern=
el.org</a>&gt;<br>
Subject: Re: [Y2038] [PATCH v6 16/43] compat_ioctl: move isdn/capi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ioctl translation into driver<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAK8P3a3xOo6ccFbSmZNZs%2B=
9Z42oREx%2BgAObxDiwTQPujndEBBw@mail.gmail.com" target=3D"_blank">CAK8P3a3xO=
o6ccFbSmZNZs+9Z42oREx+gAObxDiwTQPujndEBBw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
On Thu, Oct 17, 2019 at 8:25 PM Ben Hutchings<br>
&lt;<a href=3D"mailto:ben.hutchings@codethink.co.uk" target=3D"_blank">ben.=
hutchings@codethink.co.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, 2019-10-09 at 21:10 +0200, Arnd Bergmann wrote:<br>
&gt; [...]<br>
&gt; &gt; --- a/drivers/isdn/capi/capi.c<br>
&gt; &gt; +++ b/drivers/isdn/capi/capi.c<br>
&gt; &gt; @@ -950,6 +950,34 @@ capi_unlocked_ioctl(struct file *file, unsig=
ned int cmd, unsigned long arg)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; &gt;=C2=A0 }<br>
&gt; &gt;<br>
&gt; &gt; +#ifdef CONFIG_COMPAT<br>
&gt; &gt; +static long<br>
&gt; &gt; +capi_compat_ioctl(struct file *file, unsigned int cmd, unsigned =
long arg)<br>
&gt; &gt; +{<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (cmd =3D=3D CAPI_MANUFACTURER_CMD) {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0unsigned long cmd;<br>
&gt;<br>
&gt; Should be u32?<br>
<br>
Good catch, changed to compat_ulong_t now.<br>
<br>
Thanks,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 Arnd<br>
<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
isdn4linux mailing list<br>
<a href=3D"mailto:isdn4linux@listserv.isdn4linux.de" target=3D"_blank">isdn=
4linux@listserv.isdn4linux.de</a><br>
<a href=3D"https://www.isdn4linux.de/mailman/listinfo/isdn4linux" rel=3D"no=
referrer" target=3D"_blank">https://www.isdn4linux.de/mailman/listinfo/isdn=
4linux</a><br>
<br>
<br>
------------------------------<br>
<br>
End of isdn4linux Digest, Vol 168, Issue 3<br>
******************************************<br>
</blockquote></div>

--00000000000093c282059725a5b9--

--===============0350230105756207478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
isdn4linux mailing list
isdn4linux@listserv.isdn4linux.de
https://www.isdn4linux.de/mailman/listinfo/isdn4linux

--===============0350230105756207478==--
