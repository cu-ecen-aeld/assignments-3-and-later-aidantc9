

ifdef CROSS_COMPILE
	CC:=$(CROSS_COMPILE)gcc
else
	CC:=gcc
endif

writer: writer.o
	$(CC) writer.o -o writer
	chmod +x writer
	
writer.o: writer.c
	$(CC) -c writer.c 


clean:
	rm -f writer.o writer
	