##
## EPITECH PROJECT, 2024
## solo_stmpr_1
## File description:
## Makefile
##

SRC 	= \
		lib/my_put_nbr.c \
		lib/my_putchar.c \
		lib/my_putstr.c \
		lib/my_strlen.c \
		lib/my_str_to_word_array.c \
        lib/my_strdup.c \
		lib/my_strcmp.c \
		lib/my_strncmp.c \
		lib/my_strcat.c \
		lib/my_strcpy.c \
		test.c

CFLAGS += -W -Wall -Wextra -Werror

OBJ		= 	$(SRC:.c=.o)

NAME	=	mysh

all:	$(NAME)

$(NAME):	$(OBJ)
		gcc -o $(NAME) $(OBJ)

clean:
		rm -f $(OBJ)

fclean:		clean
			rm -f $(NAME)
			rm -f *.log
			rm -f *.o

re:			fclean all
