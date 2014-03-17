Pygments lexer for algobox
-------------------------

This directory contains a `pygments http://pygments.org/`_
lexer for source code from  `AlgoBox <http://www.xm1math.net/algobox/>`_. Hereafter are
the instruction for the installation of the lexer.

The following procedure worked on ubuntu 13.10 with python 2.7.

copy lexer in ::

    /usr/share/pyshared/pygments/lexers/

in the same directory, do ::

    python _mapping.py

make a symbolic link of the lexer in ``/usr/lib/`` ::

    cd /usr/lib/python2.7/dist-packages/pygments/lexers/
    ln -s /usr/share/pyshared/pygments/lexers/algobox.py .

Now it should works. You can try it with latex and minted package or directly by 
executing pygments.
