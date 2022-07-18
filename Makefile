# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nchee <nchee@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 16:30:03 by nchee             #+#    #+#              #
#    Updated: 2022/07/18 20:46:42 by nchee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
INCLUDES	= include
LIBFT		= libft
MAIN_DIR	= $(shell pwd)
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror -I
AR			= ar -rcs
RM			= rm -f

GREEN		= \033[0;92m
BLUE		= \033[0;34m

SRCS		= ft_printf.c ft_printstr.c ft_printptr.c ft_printnbr.c \
				ft_printunsigned.c ft_printhex.c ft_printpercent.c

OBJS		= $(SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS)
			@make -C $(LIBFT)
			@cp libft/libft.a $(MAIN_DIR)
			@mv libft.a $(NAME)
			$(AR) $(NAME) $(OBJS)
			@echo "$(BLUE)ft_printf Complied"

.c.o:
			$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $(<:.c=.o)

clean:
			$(RM) $(OBJS)
			@make clean -C $(LIBFT)
			@echo "$(BLUE)ft_printf Object Files Cleaned"

fclean:		clean
			$(RM) $(NAME)
			$(RM) $(LIBFT)/libft.a
			@echo "$(BLUE)ft_printf Exec Files Cleaned"
			@echo "$(GREEN)Libft Exec File Cleaned"

re:			fclean all
			@echo "$(BLUE)ft_printf Cleaned and Rebuilt Everything"

.PHONY:		all clean fclean re