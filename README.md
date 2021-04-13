# roots

A command line genealogy program forked from Tom Wetmore's LifeLines

(Upgraded to **v3.1.1** -- cf. branch [up-lifelines](https://github.com/La-Sangliere/roots/tree/up-lifelines))

LifeLines is actively maintained, so why fork? There are several reasons to this:

-   Upto 2014, I was using the excellent French software package [Heredis](https://www.heredis.com). This macOS application has a
    fantastic user interface and is full of features. However I got fed up of upgrading yearly. Further, I am a command line kind
    of guy who likes to control his data. It was time to move on.

-   LifeLines comes with a _curses(3)_ interface which is nice. I am an intensive ViM user and I like vi-like interfaces and key
    bindings that optimise your screen's real estate and you hands-only user input. My wishful thinking idea is to rewrite the
    interface, without affecting the _backend_ functionality.

-   LifeLines' reporting capability is outstanding. However, I believe that it shows its age, and I would ideally like to migrate
    it to either Liquid-like syntax support or to embed a standard scripting language, such as Lua for instance.

<!-- vim: set nu et tw=130 ts=8 sts=4 sw=4 ff=unix fo-=l fo+=tcroq2 fdm=marker fmr=@{,@} :-->
