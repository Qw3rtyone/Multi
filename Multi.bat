@echo off
color 0B
mode con:cols=200 

echo.

echo Welcome to Multi
timeout /t 1 >nul
:start
cls
title Multi
set /p ans=What would you like to do?

if %ans%==entry goto :entry
if %ans%==read goto :read
if %ans%==apo goto :apo
if %ans%==virus goto :virus
if %ans%==exit goto :exit
if %ans%==cmd goto :fakecommand
if %ans%==see goto :seeprocess
if %ans%==kill goto :endprocess
if %ans%==middle goto :middle
if %ans%==help goto :Help
if %ans% neq entry goto :start


:entry
cls
title Diary
echo ___________________________________________________________________________________________________
echo ///oyyyhhhhyyyyyhys+    oyyyhhhyyy/       /yhhy         syshhhhhyyyyhhhy+//yyyhhhyyyo  syyyhhhyyy   
echo ///    yhy       /shy+      yhs           shosho           +hho/    /+ohh/    /yhy        shy/      
echo ///    shs         +hh+     yho          +hy /hh/          /hh+        hho      yhy/     shs        
echo //     shs          shy     yho         /hh+  ohy          /hh+       ohy/       shy/   yho         
echo /      shs          +hh/    yho         yhs    yhs         /hhysssssyys+          ohy+/yh+          
echo        shs          /hh/    yho        ohhsooooshh+        /hho++++ooyy+           +yhhy/           
echo        shs          shy     yho       /hhsssooooyhh/       /hh/      /hh   yy       /hh/            
echo        shs         +hho     yho       yhs//     /hhs       /hh/       hh/  hy       /hh/            
echo        yhy       /shh+      yhs      shh// //    +hho      +hh+        hh/ /hy       /hh+            
echo    +ssyhhhhyyyyyhhso    oysyhhhysssyyhhhyyys//syyyhhhyyyyyyhhhhyyy////shysyy+    ssshhhhsyy/        
echo ___________________________________________________________________________________________________   
timeout /t 1 >nul
echo Welcome to the Diary.
timeout /t 1 >nul
echo What would you like to add today?

echo Type entry
set /p entry=
echo %date% >> Diary.txt
echo %time% >> Diary.txt
echo "%entry%" >>Diary.txt
echo __________________________________________________________________________________________________________________________________________________________________________________________________________________ >>Diary.txt
pause
goto  :start

:read
type Diary.txt
pause
goto :start

:apo
type Apology.txt
pause
goto :start

:fakecommand
title CMD
:cmd
set /p a=:
%a%
goto :cmd

:seeprocess
title Processes
:A
cls
tasklist
set /p answer=Re-Scan? (Y/N): 
if %answer% == y goto :A
if %answer% == n goto :start

:endprocess
title Kill menu
:kill
set /p task=Enter Task Name: 
taskkill /IM %task%
pause
set /p answer=Kill again? (Y/N): 
if %answer% == y goto :kill
if %answer% == n goto :start

:middle
title F*** you
cls
timeout /t 1 >nul
echo                  +Nyso++/+hm`                     
echo                 sm+     `/:Mo                     
echo                 N:+     `-+dM/                    
echo                 ho+.     .y+M-  ``                
echo                 :N.s-` ..:s.M+`...`````           
echo             ````.m++:.--````My------..``          
echo           ```...-om-/./::-``NN::::::--..``             
echo         `..--:::::ds`     ..oMo//////:::-.``          
echo      ``.--:://////yM-+       `mmddhyhysydNo..``   
echo     ``.--:://///++yM`y   ..   +s.+:::..::om-..``  
echo    ``.--:://+sydddmM-/ -+o+::.oho+//+ss- `dd/.``  
echo  ``..--:://ymdo:--oNs/. `-- .-+d.    `:ho`/ymy-`` 
echo ``..-yhyhmmM+````  sm-o       -m+    -s.N::sodd`` 
echo `..-+Mh--+mM.-`    -M-o.      -m:.   `:-ms +s/N`` 
echo `.--dM:  -:N.s+-    No/.     `-N.-  `.+-hy /+oM.` 
echo ..--mm`/``+hoo-`    om:-    `+.M:  `/`--oh`./Nh`` 
echo ..-:my:o `+sm:/     `N.:`   `..m:`   `- `ds.hM/`` 
echo `.--yd` .   ho-`    `m``      ``:y-        sMM-`  
echo `..-/M.     h-:.    -:           `/        /M+``  
echo  ``.-:sd/`.`                       `-/.  .dM:``   
echo   ``.--/Nm+s-   --.-`  ```  `    ``-+yo:yNNy.``   
echo    `..--+mNmh//+/:o+--/+oo:`++-.smNNdhddho-..`    
echo     ``..--:/osymNmmNNNddmMNmmNmNh+/:::::--..``    
echo      ```......--//://::::////+/::::::::--..``           
pause
set /p answer=Go back? (Y/N): 
if %answer% == y goto :start
if %answer% == n goto :seizure
:seizure
color 0f
color 1c
color 3e
color 78
goto :seizure
pause

:virus
set /p ans=Are you sure?
if %ans%==yes goto :svirs
if %ans%==no goto :start
:svirs
start Question.vbs
tree C:
pause
goto :start

:Help 
echo.
echo The commands that you can use are:
echo.
echo cmd      : Opens a command line using batch
echo.
echo entry    : Create a new diary entry
echo.
echo read     : Read what you have already written in the diary
echo.
echo see      : See a list of processes 
echo.
echo kill     : End a specific process
echo.
echo middle   : ???
echo.
echo exit
pause
goto :start

:exit
echo Goodbye
timeout /t 2 >nul
exit