From: David Binderman <dcb314@hotmail.com>
Date: Wed, 23 Apr 2014 12:53:02 +0000
Subject: bcm43xx-fwcutter bug report
Message-ID: <DUB130-W5FA86F300757E1CF667AB9C580@phx.gbl>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello there,

[fwcutter.c:497]: (error) Dangerous usage of 'shortname' (strncpy doesn't always null-terminate it).

Source code is

??? if (strlen(file->name)> 20) {
??????? strncpy(shortname, file->name, 18);
??????? snprintf(filename, sizeof(filename), "%s..", shortname);
??? } else
??????? strcpy (filename, file->name);

Maybe better code

??? if (strlen(file->name)> 20) {
??????? strncpy(shortname, file->name, 18);
??????? shortname[18] = '\0';
??????? snprintf(filename, sizeof(filename), "%s..", shortname);
??? } else
??????? strcpy (filename, file->name);

Regards

David Binderman

 		 	   		  
