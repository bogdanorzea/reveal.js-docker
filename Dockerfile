FROM node
MAINTAINER Bogdan Orzea <bogdan.orzea@gmail.com>

# Install
RUN apt-get update && apt-get install -y git

# Install revealjs
RUN mkdir -p /revealjs
WORKDIR /revealjs
RUN git clone https://github.com/hakimel/reveal.js.git .
RUN npm install

#################
#Install Plugins
#################

# Install Menu
RUN git clone https://github.com/denehyg/reveal.js-menu.git /revealjs/plugin/menu

# Install Chalkboard
RUN mkdir -p /revealjs/plugin/chalkboard
RUN git clone https://github.com/rajgoel/reveal.js-plugins.git /revealjs/plugin/tmp && mv /revealjs/plugin/tmp/chalkboard /revealjs/plugin && rm -r /revealjs/plugin/tmp

# Move the adding of the presentation files to the end
RUN mkdir -p /revealjs/presentations

# Add index html for redirect (dirty fix)
ADD ./index.html /revealjs/index.html

# Add presentation to image
ADD ./presentations /revealjs/presentations

ADD ./docker-entrypoint.sh /
RUN chmod u+x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
