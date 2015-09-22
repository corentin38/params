# ENSICAEN
# 6 Boulevard Maréchal Juin 
# F-14050 Caen Cedex 
# 
# Ce fichier est l'oeuvre d'élèves de l'ENSI de Caen. Il ne peut être 
# reproduit, utilisé ou modifié sans l'avis express de ses auteurs.
#
# author  :	Corentin MARCIAU	<corentin.marciau@ecole.ensicaen.fr>
# author  :	Aurélien TAMISIER	<aurelien.tamisier@ecole.ensicaen.fr>
# date 	  :	%D-%M-%y
#
# Makefile pour

BIN     = ./bin
INCLUDE = ./include
LIB	= ./lib
SRC     = ./src
OBJ	= ./obj

CC      = g++
CFLAGS  = -W -Wall -Wextra -ansi -pedantic -I$(INCLUDE)
DEBUG   = -g -pg -DNDEBUG

#Linker SDL
#SDL_PATH = /usr/lib/
#LDFLAGS  = -L$(SDL_PATH) -lSDL -lSDL_image


.PHONY  = all clean distclean archive

all : main clean

clean :
	rm -rf $(BIN)/*.o $(INCLUDE)/*~ $(INCLUDE)/*# $(INCLUDE)/*~ $(INCLUDE)/*#
distclean : clean
	rm -f $(BIN)/*.o
archive : distclean
	cd .. ; tar cvfz marciau_tamisier_tp.tgz tp/

# Compilation

main : $(OBJ)/fichiers.o
	$(CC) $^ -o $(BIN)/exec

$(OBJ)/\%.o : $(SRC)/\%.cpp $(INCLUDE)/header.h
	$(CC) $(CFLAGS) $(DEBUG) -c $< -o $@
