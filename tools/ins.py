Ins =  ['nopIns',
        'extractIns', 'assignIns',
        'mulIns', 'divIns', 'plusIns', 'minusIns',
        'scanIns', 'printIns', 'allocIns', 'releaseIns', 'ddIns', 'resdIns',
        'cmpIns', 'jngIns', 'jngeIns', 'jnlIns', 'jnleIns', 'jnzIns', 'jzIns', 'jmpIns',
        'callIns', 'funcInitIns', 'funcEndIns',
        'saveRetIns', 'getRetIns',
        'mainIns']

InsString =    ['nop',
                'extractIns', 'mov',
                'mul', 'div', 'add', 'sub',
                'scanIns', 'printIns', 'sub esp, 4', 'add esp, 4', 'dd', 'resd 0',
                'cmp', 'jng', 'jnge', 'jnl', 'jnle', 'jnz', 'jz', 'jmp',
                'call', 'push ebp \\nmov ebp, esp',
                'mov esp, ebp\\npop ebp \\nret',
                'mov', 'mov',
                '\\n_test:']

def pad(ins):
    return ins + ' '

print ('#define INSNUM ' + str(len(Ins)))

print ('enum insNo {' + Ins[0], end = '')
for i in range(1, len(Ins)):
    print (', ' + Ins[i], end = '')
print ('};')

for i in range(0, len(Ins)):
    print ('    InsString[' + str(i) + '] = "' + pad(InsString[i]) + '";')
