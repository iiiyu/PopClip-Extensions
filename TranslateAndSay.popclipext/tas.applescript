tell application "Safari"
    tell window 1
		set translateUrl to "http://translate.google.com/?langpair=auto%7Cauto&text=" & "{popclip text}"
        -- set current tab to (make new tab with properties {URL:"http://www.stackoverflow.com"})
		set current tab to (make new tab with properties {URL:translateUrl})
    end tell
end tell

set thisstuff to "{popclip text}"
 
set pID to do shell script "say " & (quoted form of thisstuff) & " >/dev/null 2>&1 & echo $!"
try
    repeat while ((do shell script "/bin/ps -p " & pID & " | wc -l") as integer) = 2
        delay 1
    end repeat
on error -- user press CMD-period
    do shell script "/bin/kill " & pID & " >/dev/null 2>&1 &" -- stop the speech
end try
