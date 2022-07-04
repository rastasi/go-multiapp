:DEFAULT_GOAL: all
APPS = $(shell ls apps)

all: ${APPS}

$(APPS): %: 
	mkdir -p dist/$@ && go build -o dist/$@/$@ apps/$@/main.go