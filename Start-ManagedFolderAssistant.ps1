# See if Rentention is enables we're wanting this to be false
get-mailbox "MailboxName" | Select RetentionHoldEnabled

#If $True run the below
set-mailbox MailboxName -RetentionHoldEnabled $False

#Make Sure is now set to $False
get-mailbox "MailboxName" | Select RetentionHoldEnabled

#This forces the Rentention Policy to start running 
Start-ManagedFolderAssistant -Identity "MailboxName"



