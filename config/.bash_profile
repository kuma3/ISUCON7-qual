function simamon() {
        hoge=$PWD
        cd ~/webapp
        make $1
        cd $hoge
}
