BASE_URL=http://www.cs.jhu.edu/~alanlab/ccvl/DeepLab-LargeFOV/

download () {
    if [ ! -f exper/voc12/config/deeplab_largeFOV/$1 ]; then
        curl -L ${BASE_URL}/$1 -o exper/voc12/config/deeplab_largeFOV/$1
    fi
}

download solver.prototxt
download solver2.prototxt
download train.prototxt
download test.prototxt
download train2_iter_8000.caffemodel

if [ ! -f exper/voc12/config/deeplab_largeFOV/init.caffemodel ]; then
    curl -L http://www.cs.jhu.edu/~alanlab/ccvl/init_models/vgg16_20M.caffemodel \
    -o exper/voc12/config/deeplab_largeFOV/init.caffemodel
fi
