General :

An assembly program can be divided into three sections :
▪ The data section,
▪ The bss section, and
▪ The text section.

Assembly language programs consist of three types of statements :
▪ Executable instructions or instructions,
▪ Assembler directives or pseudo-ops, and
▪ Macros.


Basic FORMAT is => [label] mnemonic [operands] [;comment]

Following are some examples of typical assembly language statements :

⇒ INC COUNT ; Increment the memory variable COUNT
⇒ MOV TOTAL, 48 ; Transfer the value 48 in the memory variable TOTAL
⇒ ADD AH, BH ; Add the content of the BH register into the AH register
⇒ AND MASK1, 128 ; Perform AND operation on the variable MASK1 and 128
⇒ ADD MARKS, 10 ; Add 10 to the variable MARKS
⇒ MOV AL, 10 ; Transfer the value 10 to the AL register


Memory segments
We can specify various memory segments as :

▪ Data segment − It is represented by .data section and the .bss.
The .data section is used to declare the memory region, where data elements are stored for the program.
This section cannot be expanded after the data elements are declared and it remains static throughout the program.
The .bss section is also a static memory section that contains buffers for data to be declared later in the program.
This buffer memory is zero-filled.
▪ Code segment − It is represented by .text section. This defines an area in memory that stores the instruction codes. This is also a fixed area.
▪ Stack − This segment contains data values passed to functions and procedures within the program.


Processor Registers

There are ten 32-bit and six 16-bit processor registers in IA-32 architecture. The registers are grouped into three categories .
▪ General registers,
▪ Control registers, and
▪ Segment registers.

The general registers are further divided into the following groups .
▪ Data registers,
▪ Pointer registers, and
▪ Index registers.


Data Registers

Four 32-bit data registers are used for arithmetic, logical, and other operations. These 32-bit registers can be used in three ways −
▪ As complete 32-bit data registers: EAX, EBX, ECX, EDX.
▪ Lower halves of the 32-bit registers can be used as four 16-bit data registers: AX, BX, CX and DX.
▪ Lower and higher halves of the above-mentioned four 16-bit registers can be used as eight 8-bit data registers: AH, AL, BH, BL, CH, CL, DH, and DL.


AX is the primary accumulator; it is used in input/output and most arithmetic instructions. For example, in multiplication operation,
one operand is stored in EAX or AX or AL register according to the size of the operand.

BX is known as the base register, as it could be used in indexed addressing.

CX is known as the count register, as the ECX, CX registers store the loop count in iterative operations.

DX is known as the data register. It is also used in input/output operations. It is also used with AX register along with DX for multiply and divide
operations involving larges values.


Pointer Registers

The pointer registers are 32-bit EIP, ESP, and EBP registers and corresponding 16-bit right portions IP, SP, and BP. There are three categories of pointer
registers :
▪ Instruction Pointer (IP) − The 16-bit IP register stores the offset address of the next instruction to be executed. IP in association with the CS
register (as CS:IP) gives the complete address of the current instruction in the code segment.
▪ Stack Pointer (SP) − The 16-bit SP register provides the offset value within the program stack. SP in association with the SS register (SS:SP)
refers to be current position of data or address within the program stack.
▪ Base Pointer (BP) − The 16-bit BP register mainly helps in referencing the parameter variables passed to a subroutine. The address in SS
register is combined with the offset in BP to get the location of the parameter. BP can also be combined with DI and SI as base register for special
addressing.


Index Registers

The 32-bit index registers, ESI and EDI, and their 16-bit rightmost portions. SI and DI, are used for indexed addressing and sometimes used in addition
and subtraction. There are two sets of index pointers −
▪ Source Index (SI) − It is used as source index for string operations.
▪ Destination Index (DI) − It is used as destination index for string operations.


Control Registers


The 32-bit instruction pointer register and the 32-bit flags register combined are considered as the control registers.
Many instructions involve comparisons and mathematical calculations and change the status of the flags and some other conditional instructions test
the value of these status flags to take the control flow to other location.

The common flag bits are:
▪ Overflow Flag (OF) − It indicates the overflow of a high-order bit (leftmost bit) of data after a signed arithmetic operation.
▪ Direction Flag (DF) − It determines left or right direction for moving or comparing string data. When the DF value is 0, the string operation
takes left-to-right direction and when the value is set to 1, the string operation takes right-to-left direction.
▪ Interrupt Flag (IF) − It determines whether the external interrupts like keyboard entry, etc., are to be ignored or processed. It disables the
external interrupt when the value is 0 and enables interrupts when set to 1.
▪ Trap Flag (TF) − It allows setting the operation of the processor in single-step mode. The DEBUG program we used sets the trap flag, so we could
step through the execution one instruction at a time.
▪ Sign Flag (SF) − It shows the sign of the result of an arithmetic operation. This flag is set according to the sign of a data item following the
arithmetic operation. The sign is indicated by the high-order of leftmost bit. A positive result clears the value of SF to 0 and negative result sets it to 1.
▪ Zero Flag (ZF) − It indicates the result of an arithmetic or comparison operation. A nonzero result clears the zero flag to 0, and a zero result sets
it to 1.
▪ Auxiliary Carry Flag (AF) − It contains the carry from bit 3 to bit 4 following an arithmetic operation; used for specialized arithmetic. The AF is
set when a 1-byte arithmetic operation causes a carry from bit 3 into bit 4.
▪ Parity Flag (PF) − It indicates the total number of 1-bits in the result obtained from an arithmetic operation. An even number of 1-bits clears the
parity flag to 0 and an odd number of 1-bits sets the parity flag to 1.
▪ Carry Flag (CF) − It contains the carry of 0 or 1 from a high-order bit (leftmost) after an arithmetic operation. It also stores the contents of last bit
of a shift or rotate operation.



There are three main segments 
▪ Code Segment − It contains all the instructions to be executed. A 16-bit Code Segment register or CS register stores the starting address of the
code segment.
▪ Data Segment − It contains data, constants and work areas. A 16-bit Data Segment register or DS register stores the starting address of the data
segment.
▪ Stack Segment − It contains data and return addresses of procedures or subroutines. It is implemented as a 'stack' data structure. The Stack
Segment register or SS register stores the starting address of the stack.

Apart from the DS, CS and SS registers, there are other extra segment registers - ES (extra segment), FS and GS, which provide additional segments for
storing data.

In assembly programming, a program needs to access the memory locations. All memory locations within a segment are relative to the starting address
of the segment. A segment begins in an address evenly divisible by 16 or hexadecimal 10. So, the rightmost hex digit in all such memory addresses is
0, which is not generally stored in the segment registers.

The segment registers stores the starting addresses of a segment. To get the exact location of data or instruction within a segment, an offset value (or
displacement) is required. To reference any memory location in a segment, the processor combines the segment address in the segment register with
the offset value of the location.



Linux System Calls

You need to take the following steps for using Linux system calls in your program −
▪ Put the system call number in the EAX register.
▪ Store the arguments to the system call in the registers EBX, ECX, etc.
▪ Call the relevant interrupt (80h).
▪ The result is usually returned in the EAX register.

There are six registers that store the arguments of the system call used. These are the EBX, ECX, EDX, ESI, EDI, and EBP. These registers take the
consecutive arguments, starting with the EBX register. If there are more than six arguments, then the memory location of the first argument is stored in
the EBX register.

All the syscalls are listed in /usr/include/asm/unistd.h, together with their numbers (the value to put in EAX before you call int 80h)


Addressing Modes

When an instruction requires two operands, the first operand is generally the destination, which contains data in a register or memory location and the
second operand is the source. Source contains either the data to be delivered (immediate addressing) or the address (in register or memory) of the data.
Generally, the source data remains unaltered after the operation.

The three basic modes of addressing are :
▪ Register addressing
▪ Immediate addressing
▪ Memory addressing


Register Addressing

MOV DX, TAX_RATE ; Register in first operand
MOV COUNT, CX ; Register in second operand
MOV EAX, EBX ; Both the operands are in registers


Immediate Addressing

BYTE_VALUE DB 150 ; A byte value is defined
WORD_VALUE DW 300 ; A word value is defined
ADD BYTE_VALUE, 65 ; An immediate operand 65 is added
MOV AX, 45H ; Immediate constant 45H is transferred to AX


Direct Memory Addressing

ADD BYTE_VALUE, DL ; Adds the register in the memory location
MOV BX, WORD_VALUE ; Operand from the memory is added to register


Direct-Offset Addressing

BYTE_TABLE DB 14, 15, 22, 45 ; Tables of bytes
WORD_TABLE DW 134, 345, 564, 123 ; Tables of words
MOV CL, BYTE_TABLE[2] ; Gets the 3rd element of the BYTE_TABLE
MOV CL, BYTE_TABLE + 2 ; Gets the 3rd element of the BYTE_TABLE
MOV CX, WORD_TABLE[3] ; Gets the 4th element of the WORD_TABLE
MOV CX, WORD_TABLE + 3 ; Gets the 4th element of the WORD_TABLE


Indirect Memory Addressing

MY_TABLE TIMES 10 DW 0 ; Allocates 10 words (2 bytes) each initialized to 0
MOV EBX, [MY_TABLE] ; Effective Address of MY_TABLE in EBX
MOV [EBX], 110 ; MY_TABLE[0] = 110
ADD EBX, 2 ; EBX = EBX +2
MOV [EBX], 123 ; MY_TABLE[1] = 123


MOV Instruction

MOV register, register
MOV register, immediate
MOV memory, immediate
MOV register, memory
MOV memory, register
▪ Both the operands in MOV operation should be of same size
▪ The value of source operand remains unchanged
MOV EBX, [MY_TABLE] ; Effective Address of MY_TABLE in EBX
MOV [EBX], 110 ; MY_TABLE[0] = 110

type specifier
:

Type Specifier	Bytes addressed
BYTE	1
WORD	2
DWORD	4
QWORD	8
TBYTE	10




Variables


There are five basic forms of the define directive :

Directive	Purpose	Storage Space
DB	Define Byte	allocates 1 byte
DW	Define Word	allocates 2 bytes
DD	Define Doubleword	allocates 4 bytes
DQ	Define Quadword	allocates 8 bytes
DT	Define Ten Bytes	allocates 10 bytes


Following are some examples of using define directives :
choice DB 'y'
number DW 12345
neg_number DW -12345
big_number DQ 123456789
real_number1 DD 1.234
real_number2 DQ 123.456

There are five basic forms of the reserve directive :

Directive	Purpose
RESB	Reserve a Byte
RESW	Reserve a Word
RESD	Reserve a Doubleword
RESQ	Reserve a Quadword
REST	Reserve a Ten Bytes



Multiple Definitions

You can have multiple data definition statements in a program. For example :

choice DB 'Y' ;ASCII of y = 79H
number1 DW 12345 ;12345D = 3039H
number2 DD 12345679 ;123456789D = 75BCD15HThe assembler allocates contiguous memory for multiple variable definitions.

Multiple Initializations

The TIMES directive allows multiple initializations to the same value. For example, an array named marks of size 9 can be defined and initialized to zero
using the following statement :

marks TIMES 9 DW 0

Constants :

EQU Directive
The syntax of the EQU directive is as follows :
CONSTANT_NAME EQU expression

%assign directive
The %assign directive can be used to define numeric constants like the EQU directive. This directive allows redefinition. For example, you may define
the constant TOTAL as :
%assign TOTAL 10


%define Directive

The %define directive allows defining both numeric and string constants. This directive is similar to the #define in C. For example, you may define the
constant PTR as :

%define PTR [EBP+4]

Arithmetic operations :


The INC instruction has the following syntax :
INC destination

The DEC instruction has the following syntax :
DEC destination

The ADD and SUB instructions have the following syntax :
ADD/SUB destination, source

The syntax for the MUL/IMUL instructions is as follows :
MUL/IMUL multiplier

The format for the DIV/IDIV instruction :
DIV/IDIV divisor


1	When two bytes are multiplied : The multiplicand is in the AL register, and the multiplier is a byte in the memory or in another register. The product is in AX. High-order 8 bits of the product is stored in AH and the low-order 8 bits are stored in AL.
2	When two one-word values are multiplied : The multiplicand should be in the AX register, and the multiplier is a word in memory or another register. For example, for an instruction like MUL DX, you must store the multiplier in DX and the multiplicand in AX. The resultant product is a doubleword, which will need two registers. The high-order (leftmost) portion gets stored in DX and the lower-order (rightmost) portion gets stored in AX.
3	When two doubleword values are multiplied : When two doubleword values are multiplied, the multiplicand should be in EAX and the multiplier is a doubleword value stored in memory or in another register. The product generated is stored in the EDX:EAX registers, i.e., the high order 32 bits gets stored in the EDX register and the low order 32-bits are stored in the EAX register.


1	When the divisor is 1 byte : The dividend is assumed to be in the AX register (16 bits). After division, the quotient goes to the AL register and the remainder goes to the AH register.
2	When the divisor is 1 word : The dividend is assumed to be 32 bits long and in the DX:AX registers. The high-order 16 bits are in DX and the low-order 16 bits are in AX. After division, the 16-bit quotient goes to the AX register and the 16-bit remainder goes to the DX register.
3	When the divisor is doubleword : The dividend is assumed to be 64 bits long and in the EDX:EAX registers. The high-order 32 bits are in EDX and the low-order 32 bits are in EAX. After division, the 32-bit quotient goes to the EAX register and the 32-bit remainder goes to the EDX register.



Assembly Logical instructions 

The format for these instructions :
Sr.No.	Instruction	Format
1	AND	AND operand1, operand2
2	OR	OR operand1, operand2
3	XOR	XOR operand1, operand2
4	TEST	TEST operand1, operand2
5	NOT	NOT operand1


These instructions compare or match bits of the operands and set the CF, OF, PF, SF and ZF flags.
The AND instruction is used for supporting logical expressions by performing bitwise AND operation. The bitwise AND operation returns 1, if the matching
bits from both the operands are 1, otherwise it returns 0.
The OR instruction is used for supporting logical expression by performing bitwise OR operation. The bitwise OR operator returns 1, if the matching bits
from either or both operands are one.
The XOR instruction implements the bitwise XOR operation. The XOR operation sets the resultant bit to 1, if and only if the bits from the operands are
different.
The TEST instruction works same as the AND operation, but unlike AND instruction, it does not change the first operand.

Conditions :

Conditional Instructions	
1	Unconditional jump This is performed by the JMP instruction. Conditional execution often involves a transfer of control to the address of an instruction that does not follow the currently executing instruction. Transfer of control may be forward, to execute a new set of instructions or backward, to re-execute the same steps.
2	Conditional jump This is performed by a set of jump instructions j<condition> depending upon the condition. The conditional instructions transfer the control by breaking the sequential flow and they do it by changing the offset value in IP.



CMP Instruction 
The CMP instruction compares two operands. It is generally used in conditional execution. This instruction basically subtracts one operand from the other for
comparing whether the operands are equal or not.


Unconditional Jump

As mentioned earlier, this is performed by the JMP instruction. Conditional execution often involves a transfer of control to the address of an instruction that does not
follow the currently executing instruction.

Following are the conditional jump instructions used on signed data used for arithmetic operations :
Instruction	Description	Flags tested
JE/JZ	Jump Equal or Jump Zero	ZF
JNE/JNZ	Jump not Equal or Jump Not Zero	ZF
JG/JNLE	Jump Greater or Jump Not Less/Equal	OF, SF, ZF
JGE/JNL	Jump Greater/Equal or Jump Not Less	OF, SF
JL/JNGE	Jump Less or Jump Not Greater/Equal	OF, SF
JLE/JNG	Jump Less/Equal or Jump Not Greater	OF, SF, ZF

Following are the conditional jump instructions used on unsigned data used for logical operations :
Instruction	Description	Flags tested
JE/JZ	Jump Equal or Jump Zero	ZF
JNE/JNZ	Jump not Equal or Jump Not Zero	ZF
JA/JNBE	Jump Above or Jump Not Below/Equal	CF, ZF
JAE/JNB	Jump Above/Equal or Jump Not Below	CF
JB/JNAE	Jump Below or Jump Not Above/Equal	CF
JBE/JNA	Jump Below/Equal or Jump Not Above	AF, CF

The following conditional jump instructions have special uses and check the value of flags :
Instruction	Description	Flags tested
JXCZ	Jump if CX is Zero	none
JC	Jump If Carry	CF
JNC	Jump If No Carry	CF
JO	Jump If Overflow	OF
JNO	Jump If No Overflow	OF
JP/JPE	Jump Parity or Jump Parity Even	PF
JNP/JPO	Jump No Parity or Jump Parity Odd	PF
JS	Jump Sign (negative value)	SF
JNS	Jump No Sign (positive value)	SF


The syntax for the J<condition> set of instructions :
Example :
CMP AL, BL
JE EQUAL
CMP AL, BH
JE EQUAL
CMP AL, CL
JE EQUAL
NON_EQUAL: ...
EQUAL: ...


Loops :


The basic LOOP instruction has the following syntax :
LOOP label

Where, label is the target label that identifies the target instruction as in the jump instructions. The LOOP instruction assumes that the ECX register contains the
loop count. When the loop instruction is executed, the ECX register is decremented and the control jumps to the target label, until the ECX register value, i.e., the
counter reaches the value zero.

The above code snippet could be written as :
mov ECX,10
l1:
<loop body>
loop l1

Numbers


Numerical data is generally represented in binary system. Arithmetic instructions operate on binary data. When numbers are displayed on screen or entered from
keyboard, they are in ASCII form.

Decimal numbers can be represented in two forms :
▪ ASCII form
▪ BCD or Binary Coded Decimal form


ASCII Representation

In ASCII representation, decimal numbers are stored as string of ASCII characters. For example, the decimal value 1234 is stored as :
31 32 33 34HWhere, 31H is ASCII value for 1, 32H is ASCII value for 2, and so on. There are four instructions for processing numbers in ASCII representation :

▪ AAA − ASCII Adjust After Addition
▪ AAS − ASCII Adjust After Subtraction
▪ AAM − ASCII Adjust After Multiplication
▪ AAD − ASCII Adjust Before Division
These instructions do not take any operands and assume the required operand to be in the AL register.



BCD Representation

There are two types of BCD representation :
▪ Unpacked BCD representation
▪ Packed BCD representation

In unpacked BCD representation, each byte stores the binary equivalent of a decimal digit. For example, the number 1234 is stored as :
01 02 03 04H

There are two instructions for processing these numbers :
▪ AAM − ASCII Adjust After Multiplication
▪ AAD − ASCII Adjust Before Division

The four ASCII adjust instructions, AAA, AAS, AAM, and AAD, can also be used with unpacked BCD representation. In packed BCD representation, each
digit is stored using four bits. Two decimal digits are packed into a byte. For example, the number 1234 is stored as :

12 34H

There are two instructions for processing these numbers :
▪ DAA − Decimal Adjust After Addition
▪ DAS − decimal Adjust After Subtraction

There is no support for multiplication and division in packed BCD representation.


Strings :

Generally, we specify the length of the string by either of the two ways :
▪ Explicitly storing string length
▪ Using a sentinel character
▪
We can store the string length explicitly by using the $ location counter symbol that represents the current value of the location counter.
Alternatively, you can store strings with a trailing sentinel character to delimit a string instead of storing the string length explicitly. The sentinel
character should be a special character that does not appear within a string.

Each string instruction may require a source operand, a destination operand or both. For 32-bit segments, string instructions use ESI and EDI registers to
point to the source and destination operands, respectively.
For 16-bit segments, however, the SI and the DI registers are used to point to the source and destination, respectively.
There are five basic instructions for processing strings. They are :
▪ MOVS − This instruction moves 1 Byte, Word or Doubleword of data from memory location to another.
▪ LODS − This instruction loads from memory. If the operand is of one byte, it is loaded into the AL register, if the operand is one word, it is loaded
into the AX register and a doubleword is loaded into the EAX register.
▪ STOS − This instruction stores data from register (AL, AX, or EAX) to memory.
▪ CMPS − This instruction compares two data items in memory. Data could be of a byte size, word or doubleword.
▪ SCAS − This instruction compares the contents of a register (AL, AX or EAX) with the contents of an item in memory.

These instructions use the ES:DI and DS:SI pair of registers, where DI and SI registers contain valid offset addresses that refers to bytes stored in
memory. SI is normally associated with DS (data segment) and DI is always associated with ES (extra segment).

The DS:SI (or ESI) and ES:DI (or EDI) registers point to the source and destination operands, respectively. The source operand is assumed to be at DS:SI
(or ESI) and the destination operand at ES:DI (or EDI) in memory.

For 16-bit addresses, the SI and DI registers are used, and for 32-bit addresses, the ESI and EDI registers are used.
The following table provides various versions of string instructions and the assumed space of the operands.

Basic Instruction	Operands at	Byte Operation	Word Operation	Double word Operation
MOVS	ES:DI, DS:SI	MOVSB	MOVSW	MOVSD
LODS	AX, DS:SI	LODSB	LODSW	LODSD
STOS	ES:DI, AX	STOSB	STOSW	STOSD
CMPS	DS:SI, ES: DI	CMPSB	CMPSW	CMPSD
SCAS	ES:DI, AX	SCASB	SCASW	SCASD



Repetition Prefixes

The REP prefix, when set before a string instruction, for example - REP MOVSB, causes repetition of the instruction based on a counter placed at the CX
register. REP executes the instruction, decreases CX by 1, and checks whether CX is zero. It repeats the instruction processing until CX is zero.

The Direction Flag (DF) determines the direction of the operation.
▪ Use CLD (Clear Direction Flag, DF = 0) to make the operation left to right.
▪ Use STD (Set Direction Flag, DF = 1) to make the operation right to left.

The REP prefix also has the following variations:
▪ REP: It is the unconditional repeat. It repeats the operation until CX is zero.
▪ REPE or REPZ: It is conditional repeat. It repeats the operation while the zero flag indicates equal/zero. It stops when the ZF indicates not equal/zero
or when CX is zero.
▪ REPNE or REPNZ: It is also conditional repeat. It repeats the operation while the zero flag indicates not equal/zero. It stops when the ZF indicates
equal/zero or when CX is decremented to zero.



Arrays :

The data definition directives can also be used for defining a one-dimensional array. Let
us define a one-dimensional array of numbers:
NUMBERS DW 34, 45, 56, 67, 75, 89


The above definition declares an array of six words each initialized with the numbers 34, 45, 56, 67, 75, 89. This allocates 2x6 = 12 bytes of consecutive
memory space. The symbolic address of the first number will be NUMBERS and that of the second number will be NUMBERS + 2 and so on.

You can define an array named inventory of size 8, and initialize all the values with zero, as :
INVENTORY DW 0
DW 0
DW 0
DW 0
DW 0
DW 0
DW 0
DW 0


The TIMES directive can also be used for multiple initializations to the same value. Using TIMES, the INVENTORY array can be
defined as:

INVENTORY TIMES 8 DW 0




Procedures :

Procedures or subroutines are very important in assembly language, as the assembly language programs tend to be large in size. Procedures are
identified by a name. Following this name, the body of the procedure is described which performs a well-defined job. End of the procedure is indicated
by a return statement.

Syntax

Following is the syntax to define a procedure :

proc_name:
procedure body
...
ret

The procedure is called from another function by using the CALL instruction. The CALL instruction should have the name of the called procedure as an
argument as shown below :
CALL proc_name

The called procedure returns the control to the calling procedure by using the RET instruction.


Stacks Data Structure


A stack is an array-like data structure in the memory in which data can be stored and removed from a location called the 'top' of the stack. The data that
needs to be stored is 'pushed' into the stack and data to be retrieved is 'popped' out from the stack. Stack is a LIFO data structure, i.e., the data stored
first is retrieved last.

Assembly language provides two instructions for stack operations: PUSH and POP. These instructions have syntaxes like :

PUSH operand
POP address/register

The memory space reserved in the stack segment is used for implementing stack. The registers SS and ESP (or SP) are used for implementing the stack.
The top of the stack, which points to the last data item inserted into the stack is pointed to by the SS:ESP register, where the SS register points to the
beginning of the stack segment and the SP (or ESP) gives the offset into the stack segment.
The stack implementation has the following characteristics −
▪ Only words or doublewords could be saved into the stack, not a byte.
▪ The stack grows in the reverse direction, i.e., toward the lower memory address
▪ The top of the stack points to the last item inserted in the stack; it points to the lower byte of the last word inserted.


As we discussed about storing the values of the registers in the stack before using them for some use; it can be done in following way :

; Save the AX and BX registers in the stack
PUSH AX
PUSH BX

; Use the registers for other purpose
MOV AX, VALUE1
MOV BX, VALUE2
...
MOV VALUE1, AX
MOV VALUE2, BX

; Restore the original values
POP BX
POP AX

Recursions :


There are two kind of recursion: direct and indirect. In direct recursion, the procedure calls itself and in indirect recursion, the first procedure calls a
second procedure, which in turn calls the first procedure.

Recursion could be observed in numerous mathematical algorithms. For example, consider the case of calculating the factorial of a number. Factorial of
a number is given by the equation :

Fact (n) = n * fact (n-1) for n > 0

Macros :


Writing a macro is another way of ensuring modular programming in assembly language.
▪ A macro is a sequence of instructions, assigned by a name and could be used anywhere in the program.
▪ In NASM, macros are defined with %macro and %endmacro directives.
▪ The macro begins with the %macro directive and ends with the %endmacro directive.

The Syntax for macro definition :
%macro macro_name number_of_params
<macro body>
%endmacro

File Management :


The system considers any input or output data as stream of bytes. There are three standard file streams :
▪ Standard input (stdin),
▪ Standard output (stdout), and
▪ Standard error (stderr).

File Descriptor
:
A file descriptor is a 16-bit integer assigned to a file as a file id. When a new file is created or an existing file is opened, the file descriptor is used for
accessing the file. File descriptor of the standard file streams - stdin, stdout and stderr are 0, 1 and 2, respectively.


File Pointer

A file pointer specifies the location for a subsequent read/write operation in the file in terms of bytes. Each file is considered as a sequence of bytes.
Each open file is associated with a file pointer that specifies an offset in bytes, relative to the beginning of the file.
When a file is opened, the file pointer is set to zero.


File Handling System Calls

The following table briefly describes the system calls related to file handling :
%eax	Name	%ebx	%ecx	%edx
2	sys_fork+	struct pt_regs	-	-
3	sys_read	unsigned int	char *	size_t
4	sys_write	unsigned int	const char *	size_t
5	sys_open	const char *	int	int
6	sys_close	unsigned int	-	-
8	sys_creat	const char *	int	-
19	sys_lseek	unsigned int	off_t	unsigned int


The steps required for using the system calls are same, as we discussed earlier :
▪ Put the system call number in the EAX register.
▪ Store the arguments to the system call in the registers EBX, ECX, etc.
▪ Call the relevant interrupt (80h).
▪ The result is usually returned in the EAX register.


Creating and Opening a File

For creating and opening a file, perform the following tasks :
▪ Put the system call sys_creat() number 8, in the EAX register.
▪ Put the filename in the EBX register.
▪ Put the file permissions in the ECX register.

The system call returns the file descriptor of the created file in the EAX register, in case of error, the error code is in the EAX register.

Opening an Existing File

For opening an existing file, perform the following tasks −
▪ Put the system call sys_open() number 5, in the EAX register.
▪ Put the filename in the EBX register.
▪ Put the file access mode in the ECX register.
▪ Put the file permissions in the EDX register.

The system call returns the file descriptor of the created file in the EAX register, in case of error, the error code is in the EAX register.
Among the file access modes, most commonly used are: read-only (0), write-only (1), and read-write (2).

Reading from a File

For reading from a file, perform the following tasks −
▪ Put the system call sys_read() number 3, in the EAX register.
▪ Put the file descriptor in the EBX register.
▪ Put the pointer to the input buffer in the ECX register.
▪ Put the buffer size, i.e., the number of bytes to read, in the EDX register.


The system call returns the number of bytes read in the EAX register, in case of error, the error code is in the EAX register.

Writing to a File

For writing to a file, perform the following tasks :
▪ Put the system call sys_write() number 4, in the EAX register.
▪ Put the file descriptor in the EBX register.
▪ Put the pointer to the output buffer in the ECX register.
▪ Put the buffer size, i.e., the number of bytes to write, in the EDX register.


The system call returns the actual number of bytes written in the EAX register, in case of error, the error code is in the EAX register.

Closing a File

For closing a file, perform the following tasks :
▪ Put the system call sys_close() number 6, in the EAX register.
▪ Put the file descriptor in the EBX register.

The system call returns, in case of error, the error code in the EAX register.

Updating a File

For updating a file, perform the following tasks :
▪ Put the system call sys_lseek () number 19, in the EAX register.
▪ Put the file descriptor in the EBX register.
▪ Put the offset value in the ECX register.
▪ Put the reference position for the offset in the EDX register.

The reference position could be:
▪ Beginning of file - value 0
▪ Current position - value 1
▪ End of file - value 2

The system call returns, in case of error, the error code in the EAX register.

Memory Management :


The sys_brk() system call is provided by the kernel, to allocate memory without the need of moving it later. This call allocates memory right behind the application
image in the memory. This system function allows you to set the highest available address in the data section.

This system call takes one parameter, which is the highest memory address needed to be set. This value is stored in the EBX register.
In case of any error, sys_brk() returns -1 or returns the negative error code itself. The following example demonstrates dynamic memory allocation.
