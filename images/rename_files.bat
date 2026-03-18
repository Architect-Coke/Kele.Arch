@echo off
setlocal enabledelayedexpansion
for %%f in (*.jpg) do (
    set "filename=%%~nf"
    rem 检查文件名是否已经包含 "_thumb" 后缀
    if "!filename!" neq "!filename:_thumb=!" (
        rem 如果文件名已经有 _thumb 后缀，则跳过
        echo Skipping "%%f"
    ) else (
        rem 否则添加 _thumb 后缀
        ren "%%f" "%%~nf_thumb%%~xf"
        echo Renamed "%%f" to "%%~nf_thumb%%~xf"
    )
)
pause