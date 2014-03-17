Documentation
-------------

Ce dossier contient un document LaTeX regroupant l'ensemble ou presque des codes sources
et algorithmes proposés. Ils sont organisés par thème.

La coloration syntaxique des codes sources est faite à l'aide du paquet minted. Pour 
compiler le document il faut rajouter l'option ``-shell-escape``. Par exemple voici une
série de commandes pour une compilation complète ::

    pdflatex -shell-escape exampleProg.tex
    pdflatex -shell-escape exampleProg.tex
    makeindex exampleProg
    pdflatex -shell-escape exampleProg.tex
    pdflatex -shell-escape exampleProg.tex

