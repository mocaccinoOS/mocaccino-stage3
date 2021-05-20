LUET?=/usr/bin/luet
export ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

# requires system/luet-devkit
autobump:
	TREE_DIR=$(ROOT_DIR)/packages $(LUET) autobump-github

