:menu
mode con:cols=113 lines=20
echo off
cls
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                                   (Menu) 
echo _______________________________________________________________________________________________________________
color B        
echo 1: Telechargement Simple       [Telechargez un seul morceau] & echo.2: Telechargement Playlist     [Telechargez une playlist entiere] & echo.3: Recherche YoutubeMusic     [Effectuez une recherche sur Youtube Music] & echo.4: Telechargement Custom     [Telechargez les morceux sur le fichier choisi] & echo.5: Autre     []
echo.
echo Inserez le chiffre de l'action souhaite: 
choice /c 12345 /n
if errorlevel 5 goto autre
if errorlevel 4 goto mytinstall-c
if errorlevel 3 goto mytinstall-s
if errorlevel 2 goto mytinstall-p
if errorlevel 1 goto mytinstall-n



:autre
cls
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                                   (Autre)
echo _______________________________________________________________________________________________________________
color B     
echo 1: Gaming-Menu     [Menu d'installateur fait pour Gamer] & echo.2: README!     [A lire] & echo.3: Licence      [Qui a fait ca] & echo.4: Menu      [Retour au menu]
echo.
echo Inserez le chiffre de l'action souhaite: 
choice /c 1234 /n
if errorlevel 4 goto menu 
if errorlevel 3 goto mytinstall-licence
if errorlevel 2 goto mytinstall-readme!
if errorlevel 1 goto mytinstall-gamingmenu




:mytinstall-n
cls
if exist C:\Users\%UserProfile%\Music\mytinstall.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music 
mkdir mytinstall
)
if exist C:\Users\%UserProfile%\Music\mytinstall\Music.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music
cd mytinstall
mkdir Music
)
cd /
cd %UserProfile%\Music\mytinstall\Music
cls
:loop-mytinstall-n
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                           (Installation Simple)
echo _______________________________________________________________________________________________________________
echo.
echo Inserer le lien de la video ou de la musique souhaiter:
set /p lien=
youtube-dl -o "%%(title)s-%%(id)s.%%(ext)s" --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --add-metadata %lien%
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Mytinstall', 'Le morceau a ete telecharge avec succe !', [System.Windows.Forms.ToolTipIcon]::None)}"
goto loop-mytinstall-n
exit



:mytinstall-p
cls
if exist C:\Users\%UserProfile%\Music\mytinstall.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music 
mkdir mytinstall
)
if exist C:\Users\%UserProfile%\Music\mytinstall\Playlist.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music
cd mytinstall
mkdir Playlist
)
cd /
cd %UserProfile%\Music\mytinstall\Playlist
cls
echo Quel nom souhaitez-vous donner a la playlist ?:
set /p nomdeplaylist=
mkdir %nomdeplaylist%
cd %nomdeplaylist%
cls
:loop-mytinstall-p
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                           (Installation Playlist)
echo _______________________________________________________________________________________________________________
echo.
echo Inserer le lien de la playlist youtube souhaiter:
set /p lien=
youtube-dl -o "%%(title)s-%%(id)s.%%(ext)s" --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --add-metadata --yes-playlist -i %lien%
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Mytinstall', 'La playlist a ete telecharge avec succe !', [System.Windows.Forms.ToolTipIcon]::None)}"
goto loop-mytinstall-p
exit


:mytinstall-s
echo off 
set error=Il semble que ce Naviguateur ne soit pas installe. Si c'est le cas verifiez l'avoir ecris en minuscule !
color B
cls
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                            (Lanceur Youtube Music)
echo _______________________________________________________________________________________________________________
echo.
set url="https://music.youtube.com/"
echo Quel Naviguateur souhaitez vous uliliser ? (chrome/firefox/iexplorer/edge):
set /p browser=
if %browser%== menu (goto menu)
if %browser%==chrome (start chrome %url% || if %errorlevel% == 0 cls && echo %error% && pause && goto mytinstall-s)
if %browser%==firefox (start firefox.exe %url% || if %errorlevel% == 0 cls && echo %error% && pause && goto mytinstall-s)
if %browser%==iexplorer (start iexplore.exe %url% || if %errorlevel% == 0 cls && echo %error% && pause && goto mytinstall-s)
if %browser%==edge (start msedge %url% || if %errorlevel% == 0 cls && echo %error% && pause && goto mytinstall-s)
goto menu
exit



:mytinstall-c 
color B
echo off
cls
echo Choisissez le fichier ou vous installerez vos documents...
setlocal
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I" 
:loop-mytinstall-c
cls
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                            (Installation Custom)
echo _______________________________________________________________________________________________________________
echo.
echo Inserer le lien de la video ou de la musique souhaiter:
cd %folder%
set /p lien=
youtube-dl -o "%%(title)s-%%(id)s.%%(ext)s" --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --add-metadata %lien%
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Mytinstall', 'Le morceau a ete telecharge avec succe !', [System.Windows.Forms.ToolTipIcon]::None)}"
goto loop-mytinstall-c

exit

:mytinstall-licence
@echo off
color B
cls
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK0KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKOdl:,'''''',,,;cok0KKKKKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKK0d;.                .,o0KKKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKKKKKOc.    ...'',,,,,,''..   ;OKKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKKKOl.   .',,;;;;;;;;;;;;,,'.  ;OKKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKK0c     .........'',,;;;;;;,.  :0KKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKKx;.                 ..,;;;;;.  .oKKKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKOc. .,coxkkOOOkddo:...  .';;,;,.  ;0KKKKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKO; .;xKWWWMWWWNX0O0Ol,'.  .,;;;,.  'x00KKKKKKKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKK0c  :O0000000O0O0O0Od:''.  .';;;,.   ..',:lx0KKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKK0,  'loddddxxxxxxdol;,,,.  .,;;;,'.   ...  .l0KKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKK0c   .'',,,,,,,,,,,,,''.   .,;;;,'.  .,;,'  .kXKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKO:.   ....'','''''...   ..,;;;;,..  .',,'.  lKKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKK0;         ....      ..',;;;;,'..   .....  :0KKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKc  .''..........'',,,;;;;;;;,'..   .....  ,OKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKK:  .;;,;;;;;;;;;;;;;;,,;;;;;,...   .....  'kKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKK0:  .,;;;;;;;;;;;;;;;;;;;;;;,'...   .....  .xKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKK0:  .';;;;;;;;;;;;;;,;;;;;;;'....   .....  .dKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKK:  ..,;,;;,;;;;;;;;;;;;;;;'.....   .....  .dKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKc  ..'',;;;;;;;;;;;;;;;;,'......   .....  .dKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKl   ....',,,,,,,,,,,,,''........   .....  'kKKKKKKKKKKKKKKK
echo KKKKKKKKKKKKKKKKKKKKKd.  ............................   .....  :0KKKKKKKKKKKKKKK
echo Mytinstall
echo.
echo Concut par Sean.64
echo.
echo Base sur "Youtube-Dl" et "ffmpeg"
set/p<nul =&pause>nul
goto menu
exit 

:mytinstall-readme!
echo off
color b
cls
echo ###########################################################################################
echo ##_______________________________________________________________________________________##
echo                                   Pas grand chose a dire...
echo                                              le
echo                                       repostory github
echo                                              est
echo                                            present
echo ##_______________________________________________________________________________________##
echo ###########################################################################################
set/p<nul =&pause>nul
goto menu

:mytinstall-gamingmenu
cls
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                                 (Gaming-Menu)
echo _______________________________________________________________________________________________________________
color B     
echo 1: GTA5 sync       [Synchroniser votre musique avec la custom radio sur gta5] & echo.2: SoundBoard     [Creation d'une soundboard] & echo.3: Menu      [Retour au menu]
echo.
echo Inserez le chiffre de l'action souhaite: 
choice /c 123 /n
if errorlevel 3 goto menu
if errorlevel 2 goto mytinstall-sdbd
if errorlevel 1 goto mytinstall-gta5sync




:mytinstall-sdbd
color B
echo off
echo ::::    ::::  :::   ::: ::::::::::: ::::::::::: ::::    :::  :::::::: ::::::::::: :::     :::        :::       
echo +:+:+: :+:+:+ :+:   :+:     :+:         :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   :+:        :+:       
echo +:+ +:+:+ +:+  +:+ +:+      +:+         +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  +:+        +:+       
echo +#+  +:+  +#+   +#++:       +#+         +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: +#+        +#+       
echo +#+       +#+    +#+        +#+         +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ +#+        +#+       
echo #+#       #+#    #+#        #+#         #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# #+#        #+#       
echo ###       ###    ###        ###     ########### ###    ####  ########     ### ###     ### ########## ##########
echo                                               (SoundBoard)
echo _______________________________________________________________________________________________________________
echo.
if exist C:\Users\%UserProfile%\Music\mytinstall.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music 
mkdir mytinstall
)
if exist C:\Users\%UserProfile%\Music\mytinstall\SoundBoard.ext (echo  ) else (
cd Users
cd %UserProfile%
cd Music
cd mytinstall
mkdir SoundBoard
)
cd /
cd %UserProfile%\Music\mytinstall\SoundBoard
cls
:loop-mytinstall-sdbd
echo Inserer le lien de la video ou de la musique souhaiter:
set /p lien=
youtube-dl -o "%%(title)s-%%(id)s.%%(ext)s" --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --add-metadata --yes-playlist -i %lien%
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Mytinstall', 'Le morceau a ete telecharge avec succe !', [System.Windows.Forms.ToolTipIcon]::None)}"
goto loop-mytinstall-sdbd


:mytinstall-gta5sync
echo off
cls
color B
cd %userprofile%\Music\mytinstall
copy "Music" "%userprofile%\Documents\Rockstar Games\GTA V\User Music"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Mytinstall', 'La Custom Radio de GTA5 a ete synchronise avec succe !', [System.Windows.Forms.ToolTipIcon]::None)}"
goto menu

