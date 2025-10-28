NAME    = libasm.a
ARCH    = ar rc
COMP    = nasm

SRC     = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_strdup.s ft_read.s
OBJ     = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(ARCH) $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(COMP) -f elf64 -DPIC -o $@ $<

main:
	cc -Wall -Wextra -Werror -o main main.c -L. -lasm

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME) main

re: fclean all main
