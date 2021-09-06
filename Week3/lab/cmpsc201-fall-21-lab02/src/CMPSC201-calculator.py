# Based on code from http://cs.indstate.edu/~jkinne/cs420-s2019/code/?view=./sly-calc.py
# -----------------------------------------------------------------------------
# CMPSC201-calculator.py
# -----------------------------------------------------------------------------
# Try our calculator to solve these expressions:
# 1) -4*-(3-5)
# 2) 5/2*(3-5+4)
# 3) 5*3/4-2
from sly import Lexer, Parser
class CustomLexer(Lexer):
    tokens = { NAME, NUMBER }
    ignore = ' \t'
    literals = { '=', '+', '-', '*', '/', '(', ')' }
    # Tokens
    NAME = r'[a-zA-Z_][a-zA-Z0-9_]*'
    @_(r'\d+')
    def NUMBER(self, t):
        t.value = int(t.value)
        return t
    @_(r'\n+')
    def newline(self, t):
        self.lineno += t.value.count('\n')
    def error(self, t):
        print("Illegal character '%s'" % t.value[0])
        self.index += 1

class CustomParser(Parser):
    tokens = CustomLexer.tokens
    precedence = (
        ('left', '+', '-'),
        ('left', '*', '/'),
        ('right', 'UMINUS'),
        )
    def __init__(self):
        self.names = { }

    @_('NAME "=" expr')
    def statement(self, p):
        self.names[p.NAME] = p.expr

    @_('expr')
    def statement(self, p):
        print(p.expr)

    @_('expr "+" expr')
    def expr(self, p):
        #print(f"add:{p.expr0}\t{p.expr1}")
        return p.expr0 + p.expr1
    @_('expr "-" expr')
    def expr(self, p):
        return p.expr0 - p.expr1
    @_('expr "*" expr')
    def expr(self, p):
        return p.expr0 * p.expr1
    @_('expr "/" expr')
    def expr(self, p):
        return p.expr0 / p.expr1
    @_('"-" expr %prec UMINUS')
    def expr(self, p):
        return -p.expr

    @_('"(" expr ")"')
    def expr(self, p):
        return p.expr

    @_('NUMBER')
    def expr(self, p):
        return p.NUMBER

    @_('NAME')
    def expr(self, p):
        try:
            return self.names[p.NAME]
        except LookupError:
            print("Undefined name '%s'" % p.NAME)
            return 0
    def value(self, p):
        return p[0]
if __name__ == '__main__':
    lexer = CustomLexer()
    parser = CustomParser()
    #parser.parse(lexer.tokenize("-4*-(3-5)"))
    
    while True:
        try:
            text = input('CMPSC201-calculator > ')
        except EOFError:
            break
        if text:
            lex = lexer.tokenize(text)
            #for token in lex:
             #   print(token)
            parser.parse(lex)
            
            

    