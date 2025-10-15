#!/bin/bash

#Network Port and Process Scan(MAC VERSION

#List all listening ports and associated processes
sudo lsof -iTCP -sTCP:LISTEN -n -P

#filter the output to show only TCP connections
sudo lsof -iTCP -sTCP:LISTEN -n -P | grep TCP

#Save the results to a csv file.
sudo lsof -iTCP -sTCP:LISTEN -n -P > tcp_listening.csv
