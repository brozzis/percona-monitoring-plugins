#!/bin/sh

. ../../../nagios/bin/pmp-check-mysql-replication-running

echo "should print OK Slave_IO_Running: Yes Slave_SQL_Running: Yes Last_Error:"
main samples/show-slave-status-001.txt 

echo "should print OK This server is not configured as a replica."
main samples/empty

echo "should print WARN This server is not configured as a replica."
main -w 100 samples/empty

echo "should print UNK could not determine replication status"
main samples/doesnt-exist
