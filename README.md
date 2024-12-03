# focalStandbyRuler
Focal Trio 6 / Trio 11 standby script for Autohotkey 2 to stop Focal standby while PC is under usage.

All it does is playing non-audible wav each 10 mins but only in case if user is not idle or system is not locked. That wav is just recorded sine wave at very high pitch. This way monitors still could go standby if system is not in use.

To use the script you just need to install AutoHotKey 2 and edit path to the wav file inside the script.

Also you should adjust system volume enough loud for that wav to trigger the monitors (I'm sitting on fixed monitors volume and all the rest audio apps has settled like 20-70% of volume to reach same audible loudness thus I won't need to touch monitors volume at all. That wav volume I recorded were made to work on this scenario but I there is another louder wav which is hitting the peak of volume so you could try to use it in case.)
