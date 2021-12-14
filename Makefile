all: websrv stress_test

websrv: main.cpp http_conn.cpp
	g++ main.cpp http_conn.cpp -lpthread -o websrv
stress_test: stress_client.cpp
	g++ stress_client.cpp -lpthread -o stress_test

clean:
	rm websrv stress_test
