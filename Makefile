NAME    = libasm.a
ARCH    = ar rc
COMP    = nasm -f elf64

SRC     = ft_strlen.s
OBJ     = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(ARCH) $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(COMP) -o $@ $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
