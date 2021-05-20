LUET?=/usr/bin/luet
export ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

autobump:
	TREE_DIR=$(ROOT_DIR)/packages $(LUET) autobump-github

