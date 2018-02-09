@echo off
set cleandir=.\cleandir
set text=%cleandir%\text
set pics=%cleandir%\Pictures
set vids=%cleandir%\Videos
set audio=%cleandir%\Audio
set proj=%cleandir%\Projects
set archives=%cleandir%\Archives
set executable=%cleandir%\Executable
set scripts=%cleandir%\Scripts
set d3obj=%cleandir%\d3objects
set shortcuts=%cleandir%\Shortcuts
set unknown=%cleandir%\Unknown
set config=%cleandir%\config

:text
echo Creating text folder at %text%.
mkdir %text%
echo Moving text into the folder.
move *.txt %text%
move *.rtf %text%
move *.pdf %text%

:config
echo Creating config folder at %config%.
mkdir %config%
echo Moving config into the folder.
move *.cfg %config%
move *.ini %config%


:audio
echo Creating audio folder at %audio%.
mkdir %audio%
echo Moving audio into the folder.
move *.aif %audio%
move *.aac %audio%
move *.mp3 %audio%
move *.cda %audio%
move *.mid %audio%
move *.midi %audio%
move *.mpa %audio%
move *.ogg %audio%
move *.wav %audio%
move *.wma %audio%
move *.wpl %audio%

:proj
echo Creating project files folder at %proj%.
mkdir %proj%
echo Moving project files into the folder.
move *.veg.* %proj%
move *.sfk %proj%
move *.aep %proj%
move *.unitypackage %proj%

:pictures
echo Creating pictures folder at %pics%.
mkdir %pics%
echo Moving pictures into the folder.
move *.ai %pics%
move *.bmp %pics%
move *.ico %pics%
move *.jpeg %pics%
move *.ps %pics%
move *.svg %pics%
move *.jpg %pics%
move *.png %pics%
move *.gif %pics%
move *.psd %pics%
move *.afphoto %pics%
move *.tif %pics%
move *.tiff %pics%

:videos
echo Creating videos folder at %vids%.
mkdir %vids%
echo Moving videos into the folder.
move *.mp4 %vids%
move *.mkv %vids%
move *.mpg %vids%
move *.avi %vids%
move *.wmv %vids%
move *.mov %vids%
move *.flv %vids%
move *.webm %vids%

:archives
echo Creating archives folder at %archives%.
mkdir %archives%
echo Moving archives into the folder.
move *.7z %archives%
move *.dll %archives%
move *.arj %archives%
move *.deb %archives%
move *.cab %archives%
move *.pkg %archives%
move *.rar %archives%
move *.rpm %archives%
move *.tar.gz %archives%
move *.z %archives%
move *.zip %archives%
move *.torrent %archives%
move *.iso.* %archives%


:executable
echo Creating executable folder at %executable%.
mkdir %executable%
echo Moving executable into the folder.
move *.apk %executable%
move *.bin %executable%
move *.cgi %executable%
move *.pl %executable%
move *.com %executable%
move *.exe %executable%
move *.jar %executable%
move *.reg %executable%
move *.py %executable%
move *.wsf %executable%
move *.sql %executable%
move *.msi %executable%
move *.osz %executable%
move *.cmd %executable%

:script
echo Creating scripts folder at %scripts%.
mkdir %scripts%
echo Moving scripts into the folder.
move *.lua %scripts%
move *.c %scripts%
move *.html %scripts%
move *.jsp %scripts%
move *.wss %scripts%
move *.pl %scripts%
move *.php %scripts%
move *.rms %scripts%
move *.py %scripts%
move *.rb %scripts%
move *.xml %scripts%
move *.css %scripts%
move *.htm %scripts%
move *.js %scripts%
move *.rss %scripts%
move *.xhtml %scripts%
move *.class %scripts%
move *.cpp %scripts%
move *.cs %scripts%
move *.h %scripts%
move *.java %scripts%
move *.sh %scripts%
move *.vb %scripts%

:d3object
echo Creating d3object folder at %d3obj%.
mkdir %d3obj%
echo Moving d3object into the folder.
move *.3ds %d3obj%
move *.blend %d3obj%
move *.dae %d3obj%
move *.fbx %d3obj%
move *.obj %d3obj%
move *.mtl %d3obj%

:shortcuts
echo Creating shortcuts folder at %shortcuts%.
mkdir %shortcuts%
echo Moving shortcuts into the folder.
move *.lnk %shortcuts%

:unknown
echo Creating unknown folder at %unknown%.
mkdir %unknown%
echo Moving unknown into the folder.
move *.raw %unknown%
move *.chm %unknown%
move *.ilr %unknown%
move *.8xp %unknown%
move *.styles %unknown%
move *.8bf %unknown%
move *. %unknown%

cls

echo.
echo done cleaning up, I dont know if i got everything but your stuff is now in the %cleandir% folder.
start %cleandir%
echo.

pause
