#!/usr/bin/env python3

import socket

HOST = '192.168.1.21'
PORT = 1234

if __name__ == '__main__':
  with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.settimeout(0.5)
    try:
      s.connect((HOST, PORT))
      data = 'T\n'
      s.send(data.encode('utf-8'))
      data = s.recv(1024)
      print(data.decode('utf-8').rstrip("\n").lstrip(" "))
      s.close()
    except (socket.error, socket.timeout) as e:
      print(e)
