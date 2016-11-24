# Compiler for C0 grammar

C0 is a subset of C, defined as below

```
<Plus Op>::=+|-
<Multiply Op>::=*|/
<Compare Op>::=<|<=|>|>=|!=|==

<Kind Op>::=int|char
<Identifier>::=<Letter>{<Letter>|<Digit>}
<Constant>::=<Integer>|<Character>
<No-sign Integer>::=<Nonzero Digit>{<Digit>}
<Integer>::=[+|-]<No-sign Integer>|0
<Letter>::=_|a|．．．|z|A|．．．|Z
<Digit>::=0|<Nonzero Digit>
<Nonzero Digit>::=1|．．．|9
<Character>::='<Plus Op>'|'<Multiply Op>'|'<Letter>'|'<Digit>'
<String>::="{ASCII Character No.32, No.33 and No.35 to No.126}"

<Program>::=[<Constant Declaration>][(int|char)<Identifier>(<Static Var Declaration>|<Func Definition>)]{<Kind Op><Identifier><Func Definition>|void<Identifier><Void Func Definition>}void main<Main>

<Constant Declaration>::=const<Constant Definition>;{const<Constant Definition>;}
<Constant Definition>::=int<Identifier>＝<Integer>{,<Identifier>＝<Integer>}|char<Identifier>＝<Character>{,<Identifier>＝<Character>}
<Static Var Declaration>::=<Static Var Definition>{(int|char)<Identifier><Static Var Definition>;}
<Static Var Definition>::=;|'['<No-sign Integer>']'{,(<Identifier>|<Identifier>'['<No-sign Integer>']')};
<Var Declaration>::=<Var Definition>;{<Var Definition>;}
<Var Definition>::=(int|char)(<Identifier>|<Identifier>'['<No-sign Integer>']'){,(<Identifier>|<Identifier>'['<No-sign Integer>']')}

<Parameter>::=<Kind Op><Identifier>{,<Kind Op><Identifier>}|<Empty>
<Value Parameter>::=<Expression>{,<Expression>}|<Empty>

<Func Definition>::='('<Parameter>')''{'<Statements>'}'
<Void Func Definition>::='('<Parameter>')''{'<Statements>'}'
<All Function Call>::='('<Value Parameter>')'
<Function Call>::='('<Value Parameter>')'
<Void Function Call>::='('<Value Parameter>')'

<Main>::='('')''{'<Statements>'}'

<Expression>::=[+|-]<Term>{<Plus Op><Term>}
<Term>::=<Factor>{<Multiply Op><Factor>}
<Factor>::=<Identifier>|<Identifier>'['<Expression>']'|'('<Expression>')'|<Integer>|<Character>|<Function Call>

<Statements>::=[<Constant Declaration>][<Var Declaration>]<Statement Block>
<Statement Block>::={<Statement>}
<Statement>::=if<If Statement>|while<While Statement>|'{'<Statement Block>'}'|scanf<Read Statement>;|printf<Print Statement>;|<Empty>;|switch<Case Statement>|return<Return Statement>;|<All Function Call>;|<Assign Statement>;

<Assign Statement>::= =<Expression>|'['<Expression>']'=<Expression>

<If Statement>::='('<Condition>')'<Statement>
<Condition>::=<Expression><Compare Op><Expression>|<Expression>

<While Statement>::='('<Condition>')'<Statement>

<Case Statement>::='('<Expression>')''{'case<Individual Case>{case<Individual Case>}(default<Default Statement>|<Empty>)'}'
<Individual Case>::=<Constant>:<Statement>
<Default Statement>::=:<Statement>

<Read Statement>::='('<Identifier>{,<Identifier>}')'

<Print Statement>::='('<String>,<Expression>')'|'('<String>')'|'('<Expression>')'

<Return Statement>::=['('<Expression>')']
```

Additional Conventions
1. In If Statement, Expression equals zero means Condition is not met.
1. Expression with only one Term with only one Factor with only one character is considered as a character, the character instead of its ACSII number is printed in Print Statement. In other expressions, factors with only one character is treated the same as its ASCII number.
1. Identifier is case-sensitive.
1. The string in Print Statement is printed as it is, no escape character is allowed.
1. Each Individual Case is treated as if there is a `break;` in the end at all time.
1. The first member in matrix `a` is `a[0]`.
