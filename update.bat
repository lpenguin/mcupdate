\aria2c.exe ^
--allow-overwrite=true ^
--auto-file-renaming=false ^
--remove-control-file=true ^
https://raw.githubusercontent.com/lpenguin/mcupdate/master/mods.txt

for /F "tokens=*" %%A in (mods.txt) do (
	aria2c.exe ^
	--allow-overwrite=true ^
	--auto-file-renaming=false ^
	--remove-control-file=true ^
	-d %HOMEPATH%\AppData\Roaming\.minecraft\mods ^
	%%A
)
