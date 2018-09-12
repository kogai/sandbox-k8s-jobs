NAME := sandbox-k8s-job
PARENT := $(NAME)-parent
CHILDREN := $(NAME)-children
VERSION := $(shell git rev-parse HEAD)

.PHONY: p c

p:
	docker build -t $(PARENT):$(VERSION) ./parent
	docker run -t $(PARENT)

c:
	docker build -t $(CHILDREN):$(VERSION) ./children
	docker run -t $(CHILDREN)
