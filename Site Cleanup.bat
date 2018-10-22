@echo off
echo I'm being designed to cleanup html sites.
echo you dont have to run me in site home directories, but my coder thinks it's recomended.
if EXIST .\config.sc (
    echo the config exists
    
    set /p location=<config.sc
    set /p openwhendone=<config.sc
    set /p name=<config.sc
    goto start
)

IF NOT EXIST .\config.sc (
    echo the config does not exist
    echo where do you want to put the files? ( . means current directory)
    set /P location=location:
    echo got it. you want me to put them here: "%location%"
    echo when i'm done do you want me to open the install folder? (y or n)
    set /P openwhendone=:
    echo Thank you, uh, what is your name again?
    set /P name=:
    echo thanks %name%. I'll get to work!
    echo  %location%>>config.sc
    echo  %openwhendone%>>config.sc
    echo  %name%>>config.sc
)


:start
    echo i'm starting
    set Assets=%location%
    set Style=%Assets%\Style
    set Images=%Assets%\Images
    set Video=%Assets%\Video
    set Audio=%Assets%\Audio
    set Misc=%Assets%\Misc
    set Fonts=%Assets%\Fonts
    set Scripts=%Assets%\Scripts
    set testprojects=%Assets%\testprojects

:cleandir
    IF NOT EXIST %Assets% (
        mkdir %Assets%
    )
:Style
    echo i'm working on the Style folder (%Style%)
    IF NOT EXIST %Style% (
        mkdir %Style%
    )
    move *.css %Style%
:Video
    echo i'm working on the Video folder (%Video%)
    IF NOT EXIST %Video% (
        mkdir %Video%
    )
    move *.mp4 %Video%
    move *.webm %Video%
    move *.flv %Video%
:Images
    echo i'm working on the Images folder (%Images%)
    IF NOT EXIST %Images% (
        mkdir %Images%
    )
    move *.gif %Images%
    move *.jpg %Images%
    move *.png %Images%
:Audio
    echo Creating Audio folder at %Audio%.
    mkdir %Audio%
    echo Moving Audio into the folder.
    move *.aif %Audio%
    move *.aac %Audio%
    move *.mp3 %Audio%
    move *.cda %Audio%
    move *.mid %Audio%
    move *.midi %Audio%
    move *.mpa %Audio%
    move *.ogg %Audio%
    move *.wav %Audio%
    move *.wma %Audio%
    move *.wpl %Audio%
:Scripts
    echo i'm working on the Scripts folder (%Scripts%)
    IF NOT EXIST %Scripts% (
        mkdir %Scripts%
    )
    move *.cs %Scripts%
    move *.js %Scripts%
    move *.rb %Scripts%
    move *.py %Scripts%
    move *.pl %Scripts%
    move *.action %Scripts%
    move *.jsp %Scripts%
    move *.jspx %Scripts%
    move *.do %Scripts%
    move *.do %Scripts%
    move *.cgi %Scripts%
    move *.java %Scripts%
    move *.class %Scripts%
    move *.asp %Scripts%
    move *.cfm %Scripts%
    move *.cfml %Scripts%
    move *.dll %Scripts%\libs
:Fonts
    echo i'm working on the Fonts folder (%Fonts%)
    IF NOT EXIST %Fonts% (
        mkdir %Fonts%
    )
    move *.css %Fonts%
:Misc
    echo i'm working on the Misc folder (%Misc%)
    IF NOT EXIST %Misc% (
        mkdir %Misc%
    )
    
    set Archives=%Misc%\Archives
    IF NOT EXIST %Archives% (
        mkdir %Archives%
    )
    set Executables=%Misc%\Executables
    IF NOT EXIST %Executables% (
        mkdir %Executables%
    )
    
    move *.exe %Executables%
    move *.jar %Executables%
    move *.zip %Archives%
    move *.rar %Archives%
echo.
echo done cleaning up, I dont know if i got everything but your stuff is now in the %cleandir% folder.
if openwhendone==y (
    start %Assets%
    )
echo.
pause
    