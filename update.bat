for /F "tokens=*" %%A in (mods.txt) do (
	aria2\aria2c.exe ^
	--auto-file-renaming=false ^
	--remove-control-file=true ^
	-d C:\Users\IEUser\AppData\Roaming\.minecraft\mods ^
	%%A
)
