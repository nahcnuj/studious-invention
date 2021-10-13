MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

CHILD_DIRS := $(shell find -type d)
UMLS = $(foreach dir,$(CHILD_DIRS), $(wildcard $(dir)/*.pu))
SVGS = $(patsubst ./%.pu,img/%.svg,$(UMLS))

.PHONY: img

img: $(SVGS)

img/%.svg: %.pu
	@plantuml -tsvg -o $(MAKEFILE_DIR)/img/$(dir $<) $?
