From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 23 Apr 2014 16:21:49 +0200
Subject: bcm43xx-fwcutter bug report
In-Reply-To: <DUB130-W5FA86F300757E1CF667AB9C580@phx.gbl>
References: <DUB130-W5FA86F300757E1CF667AB9C580@phx.gbl>
Message-ID: <20140423162149.3573beb5@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 23 Apr 2014 12:53:02 +0000
David Binderman <dcb314@hotmail.com> wrote:

> [fwcutter.c:497]: (error) Dangerous usage of 'shortname' (strncpy doesn't always null-terminate it).
> 
> Source code is
> 
> ??? if (strlen(file->name)> 20) {
> ??????? strncpy(shortname, file->name, 18);
> ??????? snprintf(filename, sizeof(filename), "%s..", shortname);
> ??? } else
> ??????? strcpy (filename, file->name);

Please upgrade to a non-ancient version of fwcutter.
http://bues.ch/b43/fwcutter/

Current versions do this:

>	if (strlen(file->name) > 20) {
>		strncpy(shortname, file->name, 20);
>		shortname[20] = '\0';
>		snprintf(filename, sizeof(filename), "%s..", shortname);
>	} else
>		strcpy (filename, file->name);



-- 
Michael.

----
Please use PGP/GPG encryption.
Key-ID: F532BE1D908D8B0E
--------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140423/ed094624/attachment.sig>
