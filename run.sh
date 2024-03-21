
#!/bin/sh

SHARE_DIR=/share/kocom

# 기존 /share/kocom 디렉토리가 있으면 삭제합니다.
if [ -d "$SHARE_DIR" ]; then
    rm -rf "$SHARE_DIR"
fi

# 새로운 /share/kocom 디렉토리를 생성합니다.
mkdir -p $SHARE_DIR

# /kocom.conf 파일과 /kocom.py 파일을 /share/kocom 디렉토리로 이동시킵니다.
mv /kocom.conf $SHARE_DIR
mv /kocom.py $SHARE_DIR

echo "[Info] Run Kocom Wallpad with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# for dev
while true; do echo "still live"; sleep 100; done
