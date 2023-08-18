
# Purpose

Demonstrate how to work with C++20 modules with gnu-make and gcc on a Windows enviroment.

> **Note:** _See the git history to check the steps from first principles._

> **Note:** _I also tested C++20 modules with avr-g++ in a real target and it works! (Altought it is not explained in this repository)_

# Build

Just clone the repository and type make in the project folder:

```powershell
# powershell

> git clone https://github.com/fvilante/cpp20_modules_with_gcc_demo.git
> cd Cpp20_modules_test
❯ make run
./App.exe
hello world! -----> 3 
> make clean 

```

## Aditional

Enviroment:

* Windows 10
* Powershell
* mingw/gcc 11.2
* mingw/gnu-make

Detailed versions bellow:

```
❯ $PSVersionTable

Name                           Value
----                           -----
PSVersion                      7.2.13
PSEdition                      Core
GitCommitId                    7.2.13
OS                             Microsoft Windows 10.0.19045
Platform                       Win32NT
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
WSManStackVersion              3.0


❯ gcc --version
gcc.exe (MinGW-W64 x86_64-posix-seh, built by Brecht Sanders) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


❯ make --version
GNU Make 4.4.1
Built for x86_64-pc-msys
Copyright (C) 1988-2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


```