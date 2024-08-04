bash-static_5.2.21-2.1_arm64.deb


wget https://ftp.debian.org/debian/pool/main/b/bash/bash-static_5.2.15-2+b7_amd64.deb
ar x bash-static_5.2.15-2+b7_amd64.deb data.tar.xz
tar -xvf data.tar.xz ./bin/bash-static
mv ./bin/bash-static ./
rm -rf ./bin data.tar.xz bash-static_5.2.15-2+b7_amd64.deb




data.tar.xz
