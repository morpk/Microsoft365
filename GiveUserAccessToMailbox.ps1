# The Below Command Give User Mark Full Access to Jeroen Mailbox
# With the AutoMapping set to $flase it wont load in his outlook 
# If Mark Wants To Access he can through WebAccess 

Add-MailboxPermission -Identity "Jeroen Cool" -User "Mark Steele" -AccessRights FullAccess -InheritanceType All -AutoMapping $false