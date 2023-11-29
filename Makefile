
SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
       ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putstr_fd.c \
       ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c ft_strchr.c ft_strdup.c \
       ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_isprint.c\
       ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

SRCSB = ft_lstclear.c ft_lstdelone.c ft_lstlast.c \
	ft_lstmap.c ft_lstnew.c ft_lstsize.c \
	ft_lstadd_back.c ft_lstadd_front.c ft_lstiter.c

OBJS = ${SRCS:.c=.o}

OBJSB = ${SRCSB:.c=.o}

CC = cc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

LIBC = ar rcs

NAME = libft.a
.c.o: 
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS}

all: ${NAME}

bonus: ${OBJSB}
	${LIBC} ${NAME} ${OBJSB}

clean: 
	${RM} ${OBJS} ${OBJSB}

fclean: clean
	 ${RM} ${NAME}

re: fclean all 

.PHONY: all clean fclean re
