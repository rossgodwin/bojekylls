REM https://ss64.com/nt/echo.html
REM https://unix.stackexchange.com/questions/77277/how-to-append-multiple-lines-to-a-file
REM https://www.tech-recipes.com/windows/batch-file-programming/xcopy_command_using_the_exclude_flag/
REM https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy

Set "_exclude_filename=files-to-exclude.txt"
echo .bundle >> %_exclude_filename%
echo .git >> %_exclude_filename%
echo .jekyll-cache >> %_exclude_filename%
echo _site >> %_exclude_filename%
echo vendor >> %_exclude_filename%
echo .gitignore >> %_exclude_filename%
echo .project >> %_exclude_filename%
echo CNAME >> %_exclude_filename%
echo README.md >> %_exclude_filename%
echo %_exclude_filename% >> %_exclude_filename%
echo %~nx0 >> %_exclude_filename%

Set "_destination_folder=D:\Test\Destination"

xcopy . %_destination_folder% /r /i /e /y /exclude:%_exclude_filename%
xcopy .\_sass %_destination_folder%\_sass /r /i /e /y

del %_exclude_filename%