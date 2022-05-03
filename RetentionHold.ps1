# Note After doing a PST Import retention settings around the Mailbox wouldn't apply 
# Found the issue is once a PST Import is done a Retention Hold is enabled on the Mailbox 
# The Below Commands show to to idenify if a mailbox has the Retention Setting Enabled and how to switch off and start the 
# Managed Folder Assistant, this kicks off the rentention settings faster.


# See if Rentention is enables we're wanting this to be false
get-mailbox "MailboxName" | Select RetentionHoldEnabled

#If $True run the below
set-mailbox MailboxName -RetentionHoldEnabled $False

#Make Sure is now set to $False
get-mailbox "MailboxName" | Select RetentionHoldEnabled

#This forces the Rentention Policy to start running 
Start-ManagedFolderAssistant -Identity "MailboxName"

