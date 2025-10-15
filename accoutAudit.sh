#!/bin/bash

#Account and Privilege Audit(MAC VERSION)

#List all local user accounts and whether they are enabled or disabled
dscl . list /Users > ~/account_audit_all_users.txt

#Identify all accounts that are members of the "Administrators" group
dscl . read /Groups/admin GroupMembership | awk -F": " '{print $2}' > ~/account_audit_admin_users.txt
