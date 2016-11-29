From: Faissal Bensefia <faissaloo@me.com>
Date: Tue, 29 Nov 2016 10:48:36 +0000
Subject: BCM43224
In-Reply-To: <CACna6rzE2R2jQtViNrqvLriybxnWK1k+hw-FjSgg9Ch7ZD6jZw@mail.gmail.com>
References: <3dba7020-e9ae-e7b7-2471-aa0681553f20@me.com>
 <CACna6rzE2R2jQtViNrqvLriybxnWK1k+hw-FjSgg9Ch7ZD6jZw@mail.gmail.com>
Message-ID: <7b40931a-1d1a-9baf-28d3-59568a346800@me.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On 28/11/16 21:03, Rafa? Mi?ecki wrote:
> On 23 November 2016 at 21:27, Faissal Bensefia <faissaloo@me.com> wrote:
>> To my knowledge the only drivers for this card are brcmsmac and
>> broadcom-wl, both of which require proprietary firmware, which I'd like
>> to do without. How can I assist in reverse engineering the BCM43224
>> firmware? Are there any resources that explain how to use b43-tools?
> 
> b43 also has (very) limited support for BCM43224, after all you
> e-mailed b43 mailing list.
> 
I've attempted to use b43 but on my card but it doesn't work, the module
never loads, despite me removing brcmsmac making sure that everything
has been unloaded and then loading b43, as well as blacklisting
brcmsmac, none of which worked. From what I've read there is meant to be
support but it's not been tested (I don't remember where the site was
but it had a list of Broadcom cards and their support status).
> For open firmware implementation my best suggestion is to contact
> OpenFWWF team http://netweb.ing.unibs.it/~openfwwf/
> 
Thanks very much, I'll look into this.
