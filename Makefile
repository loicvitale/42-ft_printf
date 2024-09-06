NAME = libftprintf.a

MY_SOURCES = ft_printf.c ft_putchar_pf.c ft_putstr_pf.c ft_putnbr_pf.c ft_putunsigned_pf.c ft_putnbrbase_pf.c ft_putptr_pf.c

MY_OBJECTS = $(MY_SOURCES:.c=.o)

INC_DIR = ./

CC = cc

AR = ar

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME) : $(MY_OBJECTS)
	$(AR) -rcs $(NAME) $(MY_OBJECTS)

%.o:%.c
	$(CC) $(FLAGS) -c $< -o $@ 

clean:
	rm -f $(MY_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
