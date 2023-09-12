# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: artclave <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/07 17:07:38 by artclave          #+#    #+#              #
#    Updated: 2023/09/11 12:26:04 by artclave         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
LB = -L. -lft
RM = rm -rf
NAME = libftprintf.a
SRC = ft_printf.c ft_hex_dec.c ft_putchar.c ft_unsdigit.c ft_hex_ptr.c ft_is_conversion.c ft_digit.c ft_sort_conversion_type.c ft_putstr.c 
OBJS = $(SRC:.c=.o)

all: $(NAME)

$(OBJS) : $(SRC)
	$(CC) $(CFLAGS) -c $^

$(NAME): $(OBJS)
	ar rcs $@ $^

test: $(NAME)
	$(CC) $(NAME) main.c
	./a.out
clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re test
