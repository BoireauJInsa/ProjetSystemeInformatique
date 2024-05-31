def parse_text(input_text, offset):
    lines = input_text.strip().split('\n')
    parsed_lines = []
    for line in lines:
        parts = line.split()
        while len(parts) < 4 + offset:
            parts.append('')
        parsed_lines.append(parts[offset:])
    return parsed_lines


def parse_text_file(file_path, offset):
    parsed_lines = []
    with open(file_path, 'r') as lines:
        for line in lines:
            parts = line.split()
            while len(parts) < 4 + offset:
                parts.append('')
            parsed_lines.append(parts[offset:])
    return parsed_lines

def process_math(op, addrResult, arg1, arg2):
    block = []
    block.append("0e" + f'{1:0>2x}' + f'{arg1:0>2x}' + "00")
    block.append("0e" + f'{2:0>2x}' + f'{arg2:0>2x}' + "00")
    block.append(op + "000102")
    block.append("0f" + f'{addrResult:0>2x}' + "0000")
    return block

def process_cop(op, addrResult, arg):
    block = []
    block.append("0e" + f'{1:0>2x}' + f'{arg:0>2x}' + "00")
    block.append(op + "010000")
    block.append("0f" + f'{addrResult:0>2x}' + "0000")
    return block

def process_afc(op, addrResult, arg):
    block = []
    block.append(op + "00" + f'{arg:0>2x}' + "00")
    block.append("0f" + f'{addrResult:0>2x}' + "0000" )
    return block

def translate(instrs):
    block_list = []
    size = 0
    for instr in instrs:
        block = []

        op = instr[0]
        arg1 = int(instr[1])
        try:
            arg2 = int(instr[2])
        except:
            arg2 = 0
        try:
            arg3 = int(instr[3])
        except:
            arg3 = 0

        if (op == 'ADD'):
            op = "01"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'MUL'):
            op = "02"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'SUB'):
            op = "03"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'AND'):
            op = "08"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'OR'):
            op = "09"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'NOT'):
            op = "0b"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'DIV'):
            op = "0c"
            block = process_math(op, arg1, arg2, arg3)
        elif (op == 'XOR'):
            op = "0a"
            block = process_math(op, arg1, arg2, arg3)

        elif (op == 'COP'):
            op = "05"
            block = process_cop(op, arg1, arg2)
        elif (op == 'AFC'):
            op = "06"
            block = process_afc(op, arg1, arg2)

        elif (op == 'JMP'):
            pass # op = "0111"
        elif (op == 'JMPF'):
            pass # op = "1000"
        elif (op == 'LT'):
            pass
        elif (op == 'GT'):
            pass
        elif (op == 'NE'):
            pass
        elif (op == 'EQ'):
            pass
        elif (op == 'GE'):
            pass
        elif (op == 'LE'):
            pass
        block_list.append(block)
        size += len(block)
    return (block_list, size)

def print_blocks(blocks, l):
    for block in blocks:
        for instr in block:
            print("reg(" + str(l) + ") <= x\"" + instr + "\";")
            l += 1
    return l


test_input_string = """
1 AFC 255 6
2 COP 1 255
3 AFC 255 8
4 COP 2 255
5 AFC 255 2
6 MUL 255 2 255
7 ADD 255 1 255
8 COP 0 255
"""

parsed_lines = parse_text_file("asm.txt", 1)

block, s = translate(parsed_lines)
print("Initial size : " + str(len(parsed_lines)))
print("Final size : " + str(s))
last_instr_index = print_blocks(block, 0)
if (last_instr_index > 255) :
    print("WARNING : memory size")
