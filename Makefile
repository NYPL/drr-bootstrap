BOOTSTRAP_SASS = ./views/stylesheets/drr-bootstrap.scss
BOOTSTRAP_CSS = ./public/css/drr-bootstrap.css
BOOTSTRAP_MIN = ./public/css/drr-bootstrap.min.css

DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

#
# CSS COMPLILE
#

sass --style expanded ${BOOTSTRAP_SASS}:${BOOTSTRAP_CSS}
sass --style compressed ${BOOTSTRAP_SASS}:${BOOTSTRAP_MIN}