git clone -b lede-17.01 https://git.lede-project.org/source.git lede
cd lede

cp feeds.conf.default feeds.conf
echo "src-git libremesh https://github.com/libremesh/lime-packages.git" >> feeds.conf
echo "src-git libremap https://github.com/libremap/libremap-agent-openwrt.git" >> feeds.conf
echo "src-git limeui https://github.com/libremesh/lime-ui-ng.git" >> feeds.conf

src-git lime https://github.com/libremesh/lime-packages.git;17.06
scripts/feeds update -a
scripts/feeds install -a

make menuconfig

make
