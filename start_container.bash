#!/bin/bash
xhost +
docker run -it \
-v /home/Anki/vector-python-sdk:/home/user/Anki \
-v /home/Anki/anki_vector_usr_dir:/home/user/.anki_vector \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
-e GDK_SCALE \
-e GDK_DPI_SCALE \
ubuntu:anki_sdk
