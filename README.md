## Solaris11Ansible
Using ansible to perform CIS benchmark configuration on Solaris 11

### Packages required 👇
```
pkg update --accept
reboot

pkg install developer/build/gnu-make
pkg install developer/gcc
pkg install developer/build/autoconf
pkg install developer/build/automake
pkg install library/security/openssl
```
### Steps to install python:
```
1) wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tgz
2) tar -xzf Python-3.6.15.tgz
3) cd Python-3.6.15
4) ./configure --prefix=/usr/local/python-3.6
5) make
6) sudo make install
7) nano ~/.profile
8) add this line => export PATH=/usr/local/python-3.6/bin:$PATH
9) save and exit
10) source the profile using this command => source ~/.profile
11) verify => python3.6 --version

pip3 install pexpect
or
/usr/local/python3.6/bin/pip3 install pexpect
```
Linked In: https://www.linkedin.com/in/chua-shan-jing-61ab28239/
