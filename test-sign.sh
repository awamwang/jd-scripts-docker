if [ $# -gt 0 ]; then
    for i in "$*"; do
        docker exec $i bash -c 'set -o allexport; source /all; source /env; source /jd-scripts-docker/resolve.sh; cd scripts; node jd_bean_sign.js'
    done
else
   docker exec jd1 bash -c 'set -o allexport; source /all; source /env; source /jd-scripts-docker/resolve.sh; cd scripts; node jd_bean_sign.js'
fi
