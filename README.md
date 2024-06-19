# ft_printf

## Introduction

The `ft_printf` project at 42 is an implementation of the standard C library function `printf` from scratch. This project challenges students to deepen their understanding of formatting output in C programming, memory management, and efficient string manipulation techniques.

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Features

- Basic Conversions: `%c`, `%s`, `%p`, `%d`, `%i`, `%u`, `%x`, `%X`, `%o`, `%f`

### Prerequisites

- GCC (GNU Compiler Collection)
- Make

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/ft_printf.git
   cd ft_printf
   ```
2. Compile the library:
  ```sh
  make
  ```

### Usage

1. Include the library in source files:
  ```sh
  #include "ft_printf.h"
  ```

2. Include the library in program compilation:
    ```sh
    gcc -Wall -Wextra -Werror -Iincludes main.c -L. -lftprintf -o my_program
    ```
