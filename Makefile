# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvalerio <mvalerio@student.42lisboa.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/13 13:46:45 by mvalerio          #+#    #+#              #
#    Updated: 2023/04/24 15:26:26 by mvalerio         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c \
      ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
      ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
      ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
      ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c \
      ft_toupper.c ft_calloc.c ft_strdup.c ft_substr.c \
      ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
      ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
      ft_putendl_fd.c ft_putnbr_fd.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
      ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
      ft_lstclear.c ft_lstiter.c ft_lstmap.c

CFLAGS := -Wall -Wextra -Werror

CC = gcc -c $(CFLAGS)

all: $(NAME)

$(NAME):
	$(CC) $(SRC)
	ar rcs $(NAME) $(SRC:.c=.o)

clean:
	rm -f $(SRC:.c=.o) $(BONUS:.c=.o)

fclean: clean
	rm -f $(NAME)

re: fclean all

bonus: $(SRC:.c=.o) $(BONUS:.c=.o)
	ar rcs $(NAME) $(SRC:.c=.o) $(BONUS:.c=.o)