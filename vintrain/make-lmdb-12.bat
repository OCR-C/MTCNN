@echo off

set tips_info=0
if exist train_lmdb12 set tips_info=1

if %tips_info% == 1 (
    echo ȷ��Ҫ���������������ɾ������Ŀ¼�ģ�����ֹ������Ѻò����״�����ɾ������
    pause
)


if exist train_lmdb12 rd /q /s train_lmdb12

rem ���Ҫ���ͼ��ߴ�ģ����磬���ԼӲ���--resize_width=224 --resize_height=224
rem ���Ҫ������ͼ��Ū�ɵ�ͨ���Ҷ�ͼ�����ԼӲ���--gray=true

echo ����ѵ�����ݿ�train_lmdb12...
"caffe/convert_imageset.exe" "" 12/label-train.txt train_lmdb12 --backend=mtcnn --shuffle=true

echo LMDB���ݿⴴ����ϡ�
pause