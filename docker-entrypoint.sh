#!/bin/bash
set -e

# If no presentations exist initialize a demo presentation
if [ ! "$(ls -A /revealjs/presentations)" ]; then
  mkdir -p /revealjs/presentations/prezentare_docker
  cp -r /revealjs/prezentare_docker/* /revealjs/presentations/prezentare_docker
fi

npm start
