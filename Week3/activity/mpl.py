# http://cs.indstate.edu/~jkinne/cs420-s2019/code/?view=./sly-calc.py
# -----------------------------------------------------------------------------
# mpl.py
# -----------------------------------------------------------------------------

from sly import Lexer, Parser
class MPLLexer(Lexer):
    tokens = {DISPLAY, STRING}
    ignore = ' \t'
    literals = {':'}
    #DISPLAY = r"DISPLAY"
    DISPLAY = r'display'
    # Tokens
    @_(r"\".*?\"")
    def STRING(self, t):
        t.value = t.value.strip("\"")
        return t
    @_(r'\n+')
    def newline(self, t):
        self.lineno += t.value.count('\n')

    def error(self, t):
        print("Illegal character '%s'" % t.value[0])
        self.index += 1

class MPLParser(Parser):
    tokens = MPLLexer.tokens
    #print(tokens)
    def __init__(self):
        pass

    @_('DISPLAY ":" STRING')
    def value(self, p):
        print(p[2])
if __name__ == '__main__':
    lexer = MPLLexer()
    parser = MPLParser()
    parser.parse(lexer.tokenize("display : \"cs201\""))
    

      

    