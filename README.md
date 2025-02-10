# lastwarVP

## How to use
1) Install AutoHotkey (default settings)
2) Start the game with a defined resolution (_LastWar.exe -screen-height 1024 -screen-width 1080_) or use the "startLastWar.cmd"
3) Open the "Title Assignment" view (optional)
4) Run the AutoHotkey script (_autoVP.ahk_)
6) It will start automatically after two seconds
7) You can terminate it by holding "q"

## Automatic game restart

Optional feature to automatically restart the game

1) Download scheduledStart.ps1 and Restart Last War.xml
2) Edit scheduledStart.ps, set the correct path for startLastWar.cmd (for example, "C:\Temp\startLastWar.cmd")
3) Import Restart Last War.xml as a scheduled task (https://www.windowscentral.com/how-export-and-import-scheduled-tasks-windows-10)
4) Set the user account you want to use and and select your operating system for the configure for option
5) Edit action, set the correct path for scheduledStart.ps1 (for example, "C:\Temp\scheduledStart.ps1")
6) It will automatically start the game every five minutes, unless it is already running
7) You can disable the task if you don't want to use it

## TODO

1) Test how it works when capitol occupiers leave (menu order changes)
2) Maybe use application notifications as triggers for action

## Testing done

1) PM
2) Zero
3) Someone applies for VP
4) Running for a whole day
5) Application queue full

## Known issues

1) Scrolling sometimes fails. This should automatically remediate.

## Settings

SleepLow = low limit in milliseconds for the sleep timers\
SleepHigh = high limit in milliseconds for the sleep timers\
SleepScrollLow = low limit in milliseconds for scrolling timers\
SleepScrollHigh = high limit in milliseconds for scrolling timers\
Scrolls = How many times it scrolls

## Miscellaneous info

Version 4 is able to scroll the applications list. It will scroll depending on the pixel color detected.
Version 6 is more reliant on pixel colors, but can also automatically open applicants menu and only try to approve when somone has applied
