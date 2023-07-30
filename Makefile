# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ifreire- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/04 15:21:04 by ifreire-          #+#    #+#              #
#    Updated: 2021/11/21 20:07:35 by ifreire-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#OBJS_Wildcard	= $(wildcard *.c)

SRC				= ft_printf.c \
				srcs/c_printf.c \
				srcs/s_printf.c \
				srcs/p_printf.c \
				srcs/d_printf.c \
				srcs/u_printf.c \
				srcs/hex65_printf.c \
				srcs/hex97_printf.c \
				srcs/ft_size_hex.c \
				srcs/ft_itoaalt.c \
				srcs/ft_strlen.c \
				srcs/ft_strdup.c

OBJS_O			= $(SRC:.c=.o)

CC				= gcc

CFLAGS			= -Wall -Wextra -Werror

NAME			= libftprintf.a

all:			$(NAME)

$(NAME):		$(OBJS_O)
				ar rcs $(NAME) $(OBJS_O)
				ranlib $(NAME)

clean:
				rm -f $(OBJS_O)

fclean: 		clean
				rm -f $(NAME)

re: 			fclean $(NAME)

.PHONY: all clean fclean re bonus
