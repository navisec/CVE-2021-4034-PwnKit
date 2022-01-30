default: 
	nim c --app:lib --define:release --opt:size --passL:-s --out:payload.so payload.nim
	nim c --define:release --opt:size --passL:-s --out:navipwnkit navipwnkit.nim
	rm payload.so