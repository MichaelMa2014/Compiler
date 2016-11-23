Ins = ['extractIns', 'assignIns', 'callIns', 'movIns', 'mulIns', 'divIns', 'plusIns', 'minusIns', 'negIns', 'scanIns', 'printIns']

print ('enum insNo {' + Ins[0], end = '')
for i in range(1, len(Ins)):
    print (', ' + Ins[i], end = '')
print ('};')
