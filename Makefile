COMPILER	=	valac
FLAGS		=	--pkg gtk+-3.0
SRC		=	$(wildcard src/*.vala)
TARGET		= 	notation

all:
	@ $(COMPILER) $(FLAGS) $(SRC) -o $(TARGET)
	@ echo "\033[1;34m[OK] \033[1;32mBinary compiled\033[0m\033[1;31m [$(TARGET)]\033[0m"

clean:
	@ $(RM) $(TARGET)
	@ echo "\033[1;34m[OK] \033[1;32mBinary removed\033[0m\033[1;31m [$(TARGET)]\033[0m"

re: clean all

.PHONY: all clean re
