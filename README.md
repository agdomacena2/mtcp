TEST
sudo ./test -p /home/ndsg/Desktop -f test.conf -N 6


AB
sudo ./ab -N 1 -n 10000 -c 1000 10.0.0.2:8889/rawr.txt



mTCP SETUP
see https://github.com/mtcp-stack/mtcp

FFMPEG SETUP
./configure --extra-ldflags='-L /Downloads/mtcp/mtcp/lib/libmtcp' --extra-ldflags='-L${RTE_SDK}/${RTE_TARGET}lib/ldflags.txt' --extra-cflags='-I /Downloads/mtcp/mtcp/include'
make

CHANGES
FFMPEG tcp.c http.c avio.c network.c (all have socket programming that needs to be changed to mtcp)



FFMPEG
ffmpeg -i http://10.0.0.2:8080 -c:v copy -c:a copy -f matroska - output.mkv -y | ffplay - -report

Enable/Disable Cores
echo 1/0 | sudo tee /sys/devices/system/cpu/cpuN(N = cpu number from 1 - 5)/online
