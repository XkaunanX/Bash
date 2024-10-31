#!/bin/bash

touch "process.txt"

ps aux > "process.txt"

ps aux | awk '{print $1, $2}' > "solo_usuario.txt"

tar -czvf "solo_usuario.txt.tar.gz" -C . .