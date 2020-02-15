@echo off
::ZIP VARIABLE
set zipfile="SteamTechWorldSOLO.zip"

cd C:\Users\Quentin\Desktop\Les Modpacks\SteamTech World\SteamTech World - SOLO

"C:\Program Files\7-Zip\7z.exe" a %zipfile% bin/ config/ mods/
echo "Suppression de la Release precedente..."
hub release delete Main
echo "Release supprimee."

echo "Creation d'une Release:"
set /p titre="Titre: "

hub release create -o -a %zipfile% -m %titre% Main
PAUSE