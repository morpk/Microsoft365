
# This Command will show forwarding to a single adress
Get-Mailbox "Email Address"  | select UserPrincipalName,ForwardingSmtpAddress,DeliverToMailboxAndForward

# This Command will show all address in M365
Get-Mailbox | select UserPrincipalName,ForwardingSmtpAddress,DeliverToMailboxAndForward