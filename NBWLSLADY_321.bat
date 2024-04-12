@echo off
setlocal enabledelayedexpansion

rem 设置文件名前缀
set "prefix=NBWLSLADY_"
rem 设置起始序号
set "start_number=157"

rem 循环处理当前目录下的所有文件
for %%i in (*) do (
    rem 获取文件名和扩展名
    set "filename=%%~ni"
    set "extension=%%~xi"

    rem 格式化序号
    set "formatted_number=00!start_number!"
    set "formatted_number=!formatted_number:~-3!"

    rem 生成新文件名
    set "new_filename=!prefix!!formatted_number!!extension!"

    rem 改名
    ren "%%i" "!new_filename!"
    echo 将文件 "%%i" 改名为 "!new_filename!"

    rem 更新序号
    set /a "start_number+=1"
)

echo 处理完成。

pause
