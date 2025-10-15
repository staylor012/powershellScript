#!/bin/bash

#Read from the Security Event Log(MAC VERSION)

#Display events related to failed logons
log show --predicate 'eventMessage contains "authentication failed"' --last 7d

#Export all entries from the last 7 days to a CSV file.
log show --predicate 'eventMessage contains "authentication failed"' --last 7d > failed_logins.csv
