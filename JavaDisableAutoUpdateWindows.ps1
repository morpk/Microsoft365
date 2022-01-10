# The following Command disbales the Java Auto Udpate Pop Window through the registry 
# This also assumes the system is 64 Bit 
# If system was 32 Bit reg path should be changed to HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Update\Policy

Set-Itemproperty -path 'HKLM:\SOFTWARE\WOW6432Node\JavaSoft\Java Update\Policy' -Name 'EnableJavaUpdate' -value '0'