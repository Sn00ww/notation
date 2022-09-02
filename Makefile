COMPILER	=	valac
FLAGS		=
SRC			=	$(wildcard src/*.vala)
TARGET		= 	notation

all:
	$(COMPILER) $(FLAGS) $(SRC) -o $(TARGET)

clean:
	@ $(RM) $(TARGET)
	@ echo "\033[1;34m[OK] \033[1;32mBinary removed\033[0m\033[1;31m [$(CLIENT_NAME)]\033[0m"

re: clean all

.PHONY: all clean re