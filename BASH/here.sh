#!/bin/bash
# Using here documents
#cat <<- EndOfText
#	This is a 
#	multiline
#	text string
#	EndOfText


ftp -n <<- DoneWithTheUpdate
	open mirrors.xmission.com
	user anonymous nothinghere
	ascii
	cd gutenberg
	get GUTINDEX.01
	bye
DoneWithTheUpdate
