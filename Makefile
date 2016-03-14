CC=gcc
NAME=ldapfs
SRC=src/main.c src/utils.c
OBJ=$(SRC:.c=.o)
CFLAGS=-Wall -I ./include -I /usr/include -g3 -D_FILE_OFFSET_BITS=64
LDFLAGS=`pkg-config fuse --cflags --libs` -lldap -L ./openldap-sources/libraries/liblber -llber

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ) $(LDFLAGS)

clean:
	find . \( -name "*~" -o -name "*.o" -o -name $(NAME) \) -delete

