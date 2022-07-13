# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nchee <nchee@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 16:30:03 by nchee             #+#    #+#              #
#    Updated: 2022/07/13 17:54:16 by nchee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
INCLUDE		= ft_printf.h
LIBFT		= libft
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror -Ift_printf.h
LIB1		= ar -rcs
RM			= rm -f

DEF_COLOR	= \033[0;39m
GREEN		= \033[0;92m

SRCS		= 

OBJS	= $(SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS) $(INCLUDE)
			$(LIB1) $(NAME) $(OBJS)
			@echo "$(GREEN)Libft Complied$(DEF_COLOR)"

bonus:		$(NAME) $(BONUS_OBJS)
			$(LIB1) $(NAME) $(BONUS_OBJS)

.c.o:
			$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

clean:
			$(RM) $(OBJS) $(BONUS_OBJS)
			@echo "$(GREEN)Libft Object Files Cleaned$(DEF_COLOR)"

fclean:		clean
			$(RM) $(NAME)
			@echo "$(GREEN)Libft Exec Files Cleaned$(DEF_COLOR)"

re:			fclean all
			@echo "$(GREEN)Libft Cleaned and Rebuilt Everything$(DEF_COLOR)"

rebonus:	fclean bonus

.PHONY:		all clean fclean re bonus rebonus