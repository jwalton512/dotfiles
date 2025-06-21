# make a directory then cd to it
function take {
	mkdir -p $@ && cd ${@:$#}
}

function flushdns {
	dscacheutil -flushcache && sudo killall -HUP mDNSResponder
}
