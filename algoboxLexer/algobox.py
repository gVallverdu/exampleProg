# -*- coding: utf-8 -*-
"""
    pygments.lexers.compiled
    ~~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for algorithm pseudo-language. See algobox at http://www.xm1math.net/algobox.

    :copyright: Copyright 2006-2012 by the Pygments team, see AUTHORS.
    :license: BSD, see LICENSE for details.
"""

import re

from pygments.lexer import RegexLexer, include
from pygments.token import Text, Comment, Operator, Keyword, String, Number, Name, Punctuation

__all__ = ['AlgoboxLexer']

class AlgoboxLexer(RegexLexer):
    """
    Lexer for a simple algorithm language

    """
    name = 'AlgoBox'
    aliases = ['algobox', 'Algobox']
    filenames = ['*.algo', '*.alg']
    flags = re.IGNORECASE

    # http://www.xm1math.net/algobox/

    tokens = {
        'root': [
            (r'//.*\n', Comment),
            include('strings'),
            include('core'),
            include('nums'),
            (r'[a-z][a-z0-9_]*', Name.Variable),
            (r'[\s]+', Text),
        ],
        'core': [
            # Statements
            (r'\b(EST_DU_TYPE|PREND_LA_VALEUR|SI|ALORS|SINON|FIN_SI|'
             r'RENVOYER|AFFICHERCALCUL|DEBUT_SI|DEBUT_SINON|FIN_SINON|'
             r'DEBUT_POUR|DEBUT_TANT_QUE|TRACER_SEGMENT|'
             r'LIRE|VARIABLES|DEBUT_ALGORITHME|FIN_ALGORITHME|AFFICHER|'
             r'TANT_QUE|FAIRE|FIN_TANT_QUE|POUR|ALLANT_DE|A|FIN_POUR)\s*\b',
             Keyword),

            # Data Types
            (r'\b(NOMBRE|LISTE|CHAINE|LOGIQUE)\s*\b',Keyword.Type),

            # Intrinsics
            (r'\b(AND|OR|NOT)\s*\b',Name.Builtin),

            # Operators
            (r'(\*\*|\*|\+|-|\/|<|>|<=|>=|==|\/=|=|%)', Operator),
            (r'[(),:&%;\[\]]', Punctuation),

        ],

        'strings': [
            (r'(?s)"(\\\\|\\[0-7]+|\\.|[^"\\])*"', String.Double),
            (r"(?s)'(\\\\|\\[0-7]+|\\.|[^'\\])*'", String.Single),
        ],

        'nums': [
            (r'\d+(?![.Ee])', Number.Integer),
            (r'[+-]?\d*\.\d+([eE][-+]?\d+)?', Number.Float),
            (r'[+-]?\d+\.\d*([eE][-+]?\d+)?', Number.Float),
        ],
    }
