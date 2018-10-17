FROM generik/ansible:v2.5

WORKDIR /deploy
VOLUME [ "/deploy" ]

COPY pagoda /root
COPY database/table.sql /root
COPY favicon.ico /root

ENTRYPOINT [ "/root/pagoda", "-logtostderr", "-v", "4", "-w", "/workspace" ]
