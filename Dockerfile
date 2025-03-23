FROM almalinux:10-kitten
RUN dnf -y update
RUN dnf -y upgrade
RUN dnf -y install epel-release
RUN dnf -y install strace /usr/bin/ps git which sudo glibc-langpack-en langpacks-en glibc-locale-source wget passwd pam
RUN dnf config-manager --set-enabled crb
RUN dnf -y install cmake gmp-devel libffi-devel libyaml-devel multilib-rpm-config openssl-devel rust systemtap-sdt-devel cmake-data cmake-rpm-macros gmp-c++ libuv llvm-libs rust-std-static vim-filesystem
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/g/git-extras-7.3.0-1.el9.noarch.rpm
RUN dnf -y groupinstall "Development Tools"
