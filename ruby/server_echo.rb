require 'socket'

server = TCPServer.open(2001)

loop do
   Thread.start(server.accept) do |client|
     client.puts("Echo server 0.1")
     line = client.gets
     puts line
     client.puts(line)
     client.close
   end
end
