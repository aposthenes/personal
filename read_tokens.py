# Read a file one character at a time and return a list containing the tokens,
# where tokens are whitespace delimited sequences of characters (i.e., tokens
# are contiguous sequences of non-whitespace characters).
# No comment handling is necessary.

import string

def read_tokens(filename):
    tokens = []
    with open(filename) as f:
        # accummulate characters
        token = []

        # quote
        quoted = False

        # read one character
        c = f.read(1)
        while c:
            if not quoted:
                if c == "\"":
                    quoted = True
                else:
                    # build the token
                    if not c in string.whitespace:
                        token.append(c)
                        # stop building the token
                    else:
                        # only keep non-empty tokens
                        if 0 < len(token):
                            tokens.append(''.join(token))
                            token = []
            else:
                if c == "\"":
                    tokens.append(''.join(token))
                    token = []
                    quoted = False
                else:
                    token.append(c)
            
            c = f.read(1)
    return tokens


def main(argv):
    argc = len(argv)
    if 2 > argc:
        return 1

    # read the file contents
    tokens = read_tokens(argv[1])

    # print the file contents
    for token in tokens:
        print(token)
    return 0


import sys

if __name__ == '__main__':
    sys.exit(main(sys.argv))
