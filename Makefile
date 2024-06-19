# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arturo <arturo@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/19 18:51:39 by arturo            #+#    #+#              #
#    Updated: 2024/06/19 18:51:40 by arturo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
NAME = libftprintf.a
SRC_DIR = srcs
INCLUDE_DIR = includes
BIN_DIR = bin

SRCS = $(SRC_DIR)/ft_digit.c \
       $(SRC_DIR)/ft_hex_dec.c \
       $(SRC_DIR)/ft_hex_ptr.c \
       $(SRC_DIR)/ft_is_conversion.c \
       $(SRC_DIR)/ft_printf.c \
       $(SRC_DIR)/ft_putchar.c \
       $(SRC_DIR)/ft_putstr.c \
       $(SRC_DIR)/ft_sort_conversion_type.c \
       $(SRC_DIR)/ft_unsdigit.c

OBJS = $(SRCS:$(SRC_DIR)/%.c=$(BIN_DIR)/%.o)

all: $(NAME)

$(BIN_DIR)/%.o: $(SRC_DIR)/%.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $@ $^

test: $(NAME)
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) main.c $(NAME) -o test_printf -L. -lftprintf
	./test_printf

clean:
	$(RM) $(BIN_DIR)/*.o

fclean: clean
	$(RM) $(NAME)
	$(RM) test_printf

re: fclean all

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

.PHONY: all clean fclean re test
