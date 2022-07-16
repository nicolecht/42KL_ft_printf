# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nchee <nchee@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 16:30:03 by nchee             #+#    #+#              #
#    Updated: 2022/07/16 17:38:18 by nchee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
INCLUDES	= include
LIBFT		= libft
MAIN_DIR	= /Users/nchee/42KL_Core_ft_printf_Personal
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror -I
AR			= ar -rcs
RM			= rm -f

DEF_COLOR	= \033[0;39m
GREEN		= \033[0;92m

SRCS		= ft_printf.c ft_printstr.c ft_printptr.c ft_printnbr.c \
				ft_printunsigned.c ft_printhex.c ft_printpercent.c

OBJS		= $(SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS)
			@make -C $(LIBFT)
			@cp libft/libft.a $(MAIN_DIR)
			@mv libft.a $(NAME)
			$(AR) $(NAME) $(OBJS)
			@echo "$(GREEN)ft_printf Complied$(DEF_COLOR)"

.c.o:
			$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $(<:.c=.o)

clean:
			$(RM) $(OBJS)
			@make clean -C $(LIBFT)
			@echo "$(GREEN)ft_printf Object Files Cleaned$(DEF_COLOR)"

fclean:		clean
			$(RM) $(NAME)
			$(RM) $(LIBFT)/libft.a
			@echo "$(GREEN)ft_printf Exec Files Cleaned$(DEF_COLOR)"
			@echo "$(GREEN)Libft Exec File Cleaned$(DEF_COLOR)"

re:			fclean all
			@echo "$(GREEN)ft_printf Cleaned and Rebuilt Everything$(DEF_COLOR)"

.PHONY:		all clean fclean re