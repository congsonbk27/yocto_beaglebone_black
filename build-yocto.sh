mkdir yocto
cd yocto

git clone -b dunfell https://github.com/openembedded/meta-openembedded.git
cd meta-openembedded
git checkout fc632d5bb0936e91e4e0191547b9aa8ca47b4ffe
cd ..

git clone -b dunfell https://github.com/meta-qt5/meta-qt5.git
cd meta-qt5
git checkout 5ef3a0ffd3324937252790266e2b2e64d33ef34f
cd ..

git clone -b dunfell git://git.yoctoproject.org/meta-security.git
cd meta-security
git checkout eb631c12be585d18beddbb41f6035772b2cb17d5
cd ..

git clone -b dunfell https://github.com/jumpnow/meta-jumpnow.git
cd meta-jumpnow
git checkout b3995636741be0d219a50035c98ded8b48590888
cd ..

git clone -b dunfell https://github.com/jumpnow/meta-bbb.git
cd meta-bbb
git checkout fa02d8e9079c1cc18f83527588a9dd2747293992
cd ..

git clone -b dunfell git://git.yoctoproject.org/poky.git poky
cd poky 
git checkout ef0c19babe32355bd61a9dc3e99d8ec414f0e42a
cd ..

source poky/oe-init-build-env

cp ../../bblayers.conf conf
cp ../../local.conf conf

bitbake core-image-minimal

#bitbake core-image-weston

#bitbake core-image-sato

#bitbake core-image-sato -c populate_sdk
