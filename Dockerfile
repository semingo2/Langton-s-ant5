
FROM gcc:14-bookworm

WORKDIR /app

COPY main.cpp index.html style.css app.js ./

RUN g++ -std=c++17 -O2 -pthread main.cpp -o langtons_ant_server

ENV HOST=0.0.0.0

CMD ["./langtons_ant_server"]
