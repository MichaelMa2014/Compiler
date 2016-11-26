Ins =  ['nopIns',
        'extractIns', 'assignIns', 'callIns', 'movIns',
        'mulIns', 'divIns', 'plusIns', 'minusIns', 'negIns',
        'scanIns', 'printIns', 'allocIns', 'releaseIns', 'ddIns', 'resdIns',
        'cmpIns', 'jngIns', 'jngeIns', 'jnlIns', 'jnleIns', 'jnzIns', 'jzIns']

InsString =    ['nop',
                'extractIns', 'assignIns', 'call', 'mov',
                'mul', 'div', 'add', 'sub', 'neg',
                'scanIns', 'printIns', 'sub esp 4', 'add esp 4', 'dd', 'resd',
                'cmp', 'jng', 'jnge', 'jnl', 'jnle', 'jnz', 'jz']

def pad(ins):
    num = 15 - len(ins)
    return ins + num * ' '

print ('#define INSNUM ' + str(len(Ins)))

print ('enum insNo {' + Ins[0], end = '')
for i in range(1, len(Ins)):
    print (', ' + Ins[i], end = '')
print ('};')

for i in range(0, len(Ins)):
    print ('    InsString[' + str(i) + '] = "' + pad(InsString[i]) + '";')
