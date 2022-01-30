# CVE-2021-4034-PwnKit
PwnKit PoC for Polkit pkexec CVE-2021-4034 

Based on the PoC by blasty  
[blasty-vs-pkexec.c](https://haxx.in/files/blasty-vs-pkexec.c)

For PwnKit details see the blog poet at Qualys
[PwnKit: Local Privilege Escalation Vulnerability Discovered in polkit’s pkexec (CVE-2021-4034)](https://blog.qualys.com/vulnerabilities-threat-research/2022/01/25/pwnkit-local-privilege-escalation-vulnerability-discovered-in-polkits-pkexec-cve-2021-4034)


## Summary
This repo is a nim based PwnKit PoC. The payload shared library is embedded in the executable, so gcc is not required on the target.


To get set up with a nim enviroment, see HuskyHacks post. 
[Nim on the Attack: Process Injection Using Nim and the Windows API](https://huskyhacks.dev/2021/07/17/nim-exploit-dev/)

Issues and PRs welcome.

## Setup

Clone the repo and run make to create the navipwnkit executable.

Copy the executable to the target and run to get root.

![navipwnkit getting root](/screenshots/navipwnkit.png)
