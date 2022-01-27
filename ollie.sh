#!/bin/bash

#Welcome note and Twitter pages for all 3 contributors.
echo "Welcome, to Ollie, the revshells CLI!"
echo "Twitter: @0dayCTF, @VainXploits & @sootierprivate"

#IMPORTANT NOTE
echo "--------------------------------------"
echo "IMPORTANT NOTE: This program is case sensitive, please enter the exact text you see, in the available payloads section within the PAYLOAD field! please add a '%20' if there are spaces between words in the payload. Example (PAYLOAD: Bash&20-i)"

#Payloads Available
echo "--------------------------------------"
echo "Reverse shells(All OS)"
echo "--------------------------------------"

# Variable for all the payloads that will be printed later in the code.
var1='''1: Bash -i
2: Bash 196
3: Bash read line
4: Bash 5
5: Bash udp
6: nc mkfifo
7: nc -e
8: nc -c
9: ncat -e
10: ncat udp
11: rustcat
12: C
13: C Windows
14: C#
15: Haskell#1
16: Perl
17: Perl no sh
18: PHP Emoji
19: PHP Pentestmonkey
20: PHP Ivan Sincek
21: PHP cmd
22: PHP exec
23: PHP shell_exec
24: PHP system
25: PHP passthru
26: PHP Backquote
27: PHP popen
28: PHP proc_open
29: Windows ConPty
30: Powershell #1
31: Powershell #2
32: Powershell #3
33: Powershell #4 (TLS)
34: Powershell #3 (Base64)
35: Python #1
36: Python #2
37: Python3 #1
38: Python3 #2
39: Python3 shortest
40: Ruby #1
41: Ruby no sh
42: Socat #1
43: Socat #2 (TTY)
44: node.js
45: node.js #2
46: Java #1
47: Java #2
48: Java #3
49: Javascript
50: Groovy
51: telnet
52: zsh
53: Lua #1
54: Lua #2
55: Golang
56: Awk
57: Dart

echo "--------------------------------------"
echo "Bind shells"
echo "--------------------------------------"

58: Python3 Bind
59: PHP Bind

echo "--------------------------------------"
echo "MSFVenom Shells"
echo "--------------------------------------"

60: Windows Meterpreter Staged Reverse TCP (x64)
61: Windows Meterpreter Stageless Reverse TCP (x64)"
62: Windows Staged Reverse TCP (x64)
63: Windows Stageless Reverse TCP (x64)
64: Linux Meterpreter Staged Reverse TCP (x64)
65: Linux Stageless Reverse TCP (x64)
66: Windows Bind TCP ShellCode - BOF
67: macOS Meterpreter Staged Reverse TCP (x64)
68: macOS Meterpreter Stageless Reverse TCP (x64)
69: macOS Stageless Reverse TCP (x64)
70: PHP Reverse Stageless Reverse TCP
71: PHP Reverse PHP"
72: JSP Stageless Reverse TCP
73: WAR Stageless Reverse TCP
74: Android Meterpreter Reverse TCP
75: Android Meterpreter Embed Reverse TCP
76: Python Stageless Reverse TCP
77: Bash Stageless Reverse TCP'''

#Printing out all the payloads
echo -e $var1

#User input for Payload, IP & PORT
echo "--------------------------------------"
read -p "PAYLOAD: " PAYLOAD
read -p "IP: " IP
read -p "PORT: " PORT

# Actually getting the payload from revshells.
curl "https://www.revshells.com/$PAYLOAD?ip=$IP&port=$PORT&shell=sh&encoding=sh"\n
