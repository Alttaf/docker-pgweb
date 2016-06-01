#!/bin/sh
$(pwd)/pgweb_linux_386 --host $POSTGRES --port $PORT --user $USER --pass $POSTGRES_PASSWORD --db $POSTGRES_DB --bind=0.0.0.0 --ssl=$SSL
