# Compilers & Languages

A repository for the subject on compilers and programming languages using lex and yacc would contain code examples, tutorials, and resources for using these tools to develop programs.
Lex and Yacc are commonly used together to develop compilers and interpreters for programming languages.

**Brief concepts:**

## Lex

Lex is a program that generates lexical analyzers. Lex reads an input stream specifying the lexical analyzer and outputs source code implementing the lexer in the C programming language.

### Lex Usage

```bash
lex [OPTIONS] [FILE]...
```

### Compiling Lex Output

```bash
gcc lex.yy.c -o <output> -lfl
```

### Usage of Lex Output

```bash
./<output> < [INPUT FILE] > [OUTPUT FILE]
```

## Yacc

Yacc, Yet Another Compiler Compiler, is a program that generates parsers. Yacc reads an input stream specifying the grammar of a program and outputs source code implementing a parser for that grammar in the C programming language.

### Yacc Usage

```bash
yacc [OPTION]... [FILE]
```
