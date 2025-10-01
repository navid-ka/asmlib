https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf
https://web.stanford.edu/class/cs107/resources/x86-64-reference.pdf

| 64 bits    | 32 bits      | 16 bits      | 8 bits alto | 8 bits bajo  |
| ---------- | ------------ | ------------ | ----------- | ------------ |
| `RAX`      | `EAX`        | `AX`         | `AH`        | `AL`         |
| `RBX`      | `EBX`        | `BX`         | `BH`        | `BL`         |
| `RCX`      | `ECX`        | `CX`         | `CH`        | `CL`         |
| `RDX`      | `EDX`        | `DX`         | `DH`        | `DL`         |
| `RSI`      | `ESI`        | `SI`         | —           | `SIL`        |
| `RDI`      | `EDI`        | `DI`         | —           | `DIL`        |
| `RBP`      | `EBP`        | `BP`         | —           | `BPL`        |
| `RSP`      | `ESP`        | `SP`         | —           | `SPL`        |
| `R8`–`R15` | `R8D`–`R15D` | `R8W`–`R15W` | —           | `R8B`–`R15B` |


| Registro | Descripción                           |
| -------- | ------------------------------------- |
| `RSP`    | Puntero de pila (stack pointer)       |
| `RBP`    | Puntero base (stack frame)            |
| `RIP`    | Instruction pointer (program counter) |


| Argumento | Registro   |
| --------- | ---------- |
| arg1      | `RDI`      |
| arg2      | `RSI`      |
| arg3      | `RDX`      |
| arg4      | `RCX`      |
| arg5      | `R8`       |
| arg6      | `R9`       |
| ≥7        | En la pila |


| Retorno | Registro |
| ------- | -------- |
| valor   | `RAX`    |

| Registro | Uso               |
| -------- | ----------------- |
| `RAX`    | Número de syscall |
| `RDI`    | arg1              |
| `RSI`    | arg2              |
| `RDX`    | arg3              |
| `R10`    | arg4              |
| `R8`     | arg5              |
| `R9`     | arg6              |
| `RAX`    | Valor de retorno  |
