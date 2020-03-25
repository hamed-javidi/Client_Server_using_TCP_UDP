CC = gcc
CFLAGS = -g

all: client_udp server_udp client_tcp server_tcp servicemap
	
client_udp:client_udp.c
	$(CC) $(CFLAGS) -o client_udp client_udp.c
server_udp:server_udp.c
	$(CC) $(CFLAGS) -o server_udp server_udp.c
client_tcp:client_tcp.c
	$(CC) $(CFLAGS) -o client_tcp client_tcp.c
server_tcp:server_tcp.c
	$(CC) $(CFLAGS) -o server_tcp server_tcp.c
servicemap:servicemap.c
	$(CC) $(CFLAGS) -o servicemap servicemap.c
clean:
	rm client_udp server_udp client_tcp server_tcp servicemap