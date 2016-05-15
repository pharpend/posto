# posto

Console-based email client. I wrote it because
[alpine](https://www.washington.edu/alpine/)'s encryption support is
terrible, and [mutt](http://www.mutt.org/) is too complicated. posto is
just the right amount of complicated.

Posto is licensed under the permissive ISC license. There is a copy
included in the [LICENSE](LICENSE) file.

Bugs, questions, comments, and complaints should be directed to the
[GitHub bug tracker](https://github.com/pharpend/posto/issues). If you
don't have a GitHub account, or don't want to make one, you can of
course email me with your bug. (See contact info at the end of this
file).

## Installation

Right now, there's no binary distribution. I'll work on that at some
point. Therefore, you need to compile posto from source.

To do so, first install
[stack](http://docs.haskellstack.org/en/stable/README/) and
[git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). Then,
run these commands in a terminal

    $ git clone https://github.com/pharpend/posto.git
    $ cd posto
    $ stack setup
    $ stack install
    
Boom! You're done. Run `posto --help` to see the available options.

## Contact and what not

The author of this is Peter Harpending.

* Email: `peter@harpending.org`
* IRC: `pharpend` on FreeNode.net
