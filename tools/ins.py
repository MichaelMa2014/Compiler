Ins = ['extractIns', 'assignIns', 'callIns', 'movIns', 'mulIns', 'divIns', 'plusIns', 'minusIns', 'negIns', 'scanIns', 'printIns', 'acllocIns']

def pad(ins):
    num = 15 - len(ins)
    return ins + num * ' '

print ('enum insNo {' + Ins[0], end = '')
for i in range(1, len(Ins)):
    print (', ' + Ins[i], end = '')
print ('};')

print ('#define INSNUM ' + str(len(Ins)))

for i in range(0, len(Ins)):
    print ('    InsString[' + str(i) + '] = "' + pad(Ins[i]) + '";')
