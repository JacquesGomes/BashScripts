PROG = maiorPrimoAnt #nome do programa principal
CC = g++ #compilador
CPPFLAGS = -O0 -g -W -Wall -pedantic #flags para cada compilação (-O0 = sem otimização, compilação mais rápida, bom para debuffing; no optimization, faster compilation, better for debugging; -g = possibilita o uso de ferramentas de debugging; -W = ; -Wall = trás várias warning flags de compilação; -pedantic warnings sobre padrões de escrita - serve para verificar e garantir que o programa está de acordo com a padronização)

OBJS = main.o fatorial.o primalidade.o #executáveis que serão combinados

#constituição do programa principal
$(PROG) : $(OBJS)
	$(CC) $(OBJS) -o $(PROG) 


#compilação individual dos executáveis
main.o :
	$(CC) $(CPPFLAGS) -c main.cpp

fatorial.o :
	$(CC) $(CPPFLAGS) -c fatorial.cpp

primalidade.o :
	$(CC) $(CPPFLAGS) -c primalidade.cpp

#limpeza dos executáveis (exceto o principal)
clean:
	rm -f *.o