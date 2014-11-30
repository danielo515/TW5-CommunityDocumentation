@echo off

rem Build Community edition of the Gas uploader

xcopy plugins standalone\plugins\ /E /Y
xcopy tiddlers standalone\tiddlers\ /E /Y
xcopy ..\gasUploaderPluginwiki\plugins standalone\plugins\ /E /Y

tiddlywiki.cmd ^
	.\standalone ^
	--verbose ^
	--build ^

	
move /Y standalone\output\index.html index.html
xcopy standalone\output\index.html index.html /Y