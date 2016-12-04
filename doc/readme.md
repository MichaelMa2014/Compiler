运行步骤如下

1. 将 Codeblocks 内置的编译器所在的目录加入环境变量 PATH
1. 将 nasm.exe 复制到上述目录
1. 运行编译器，输入源文件的路径和目标汇编文件的路径，汇编文件名为 `test.asm`
1. 进入汇编文件所在目录，运行 nasm -f win32 test.asm -o test.o
1. 运行 mingw32-g++ main.o test.o
1. 双击 a.exe 运行程序
