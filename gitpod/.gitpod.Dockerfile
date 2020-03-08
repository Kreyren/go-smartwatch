FROM gitpod/workspace-full-vnc:latest

USER root

RUN true \
  # We need sdl2.pc
  && if ! apt list | grep -qP "^libsdl2-dev\s{1}.*"; then apt update; fi \
  && if ! apt list --installed | grep -qP "^libsdl2-dev\s{1}.*"; then apt install -y libsdl2-dev; fi