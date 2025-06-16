NAME    = libasm.a
ARCH    = ar rc
COMP    = nasm -f elf64

SRC     = ft_strlen.s ft_strcpy.s
OBJ     = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(ARCH) $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(COMP) -o $@ $<

main:
	cc -Wall -Wextra -Werror -o  main main.c -L. -lasm

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f main

re: fclean all main
