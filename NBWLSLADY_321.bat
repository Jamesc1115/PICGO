@echo off
setlocal enabledelayedexpansion

rem �����ļ���ǰ׺
set "prefix=NBWLSLADY_"
rem ������ʼ���
set "start_number=157"

rem ѭ������ǰĿ¼�µ������ļ�
for %%i in (*) do (
    rem ��ȡ�ļ�������չ��
    set "filename=%%~ni"
    set "extension=%%~xi"

    rem ��ʽ�����
    set "formatted_number=00!start_number!"
    set "formatted_number=!formatted_number:~-3!"

    rem �������ļ���
    set "new_filename=!prefix!!formatted_number!!extension!"

    rem ����
    ren "%%i" "!new_filename!"
    echo ���ļ� "%%i" ����Ϊ "!new_filename!"

    rem �������
    set /a "start_number+=1"
)

echo ������ɡ�

pause
