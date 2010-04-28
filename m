From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Wed, 28 Apr 2010 02:04:40 +0200
Subject: DMA error bug
In-Reply-To: <o2rff479ab61004271617z5b5ccd31sa9612ff7b66c7e36@mail.gmail.com>
References: <o2rff479ab61004271617z5b5ccd31sa9612ff7b66c7e36@mail.gmail.com>
Message-ID: <w2t69e28c911004271704y4057e66aredad4a3d4377cc8e@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Apr 28, 2010 at 1:17 AM, Baybal Ni <nikulinpi@gmail.com> wrote:
> does anybody get a solution? Does anybody ever track that bug?
>

If you mean the LP-PHY fatal DMA error, yes, we are working on it;
recent kernels work around it by auto-switching to PIO if it occurs.

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
