#!/bin/bash
xhost +
docker run -it \
-v /home/Anki:/root/Anki \
-v /home/Anki/anki_vector_usr_dir:/root/.anki_vector \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
-e GDK_SCALE \
-e GDK_DPI_SCALE \
--name anki_vector_sdk \
anki_sdk:18.04
