HOSTNAME=192.168.101.95                                 #ip db host
PASSWORD=nfvisionaire123                                #password db
BACKUP_nfv4=2022-04-27_nfv4.backup                      #backup file db nfv4
BACKUP_nfvisionaire=2022-04-27_nfvisionaire.backup      #backup file nfvisionaire

export PGPASSWORD="$PASSWORD"
createdb -h $HOSTNAME -p 5432 -U postgres nfv4
createdb -h $HOSTNAME -p 5432 -U postgres nfvisionaire
pg_restore -h $HOSTNAME -U postgres -d nfv4 -1 $BACKUP_nfv4
pg_restore -h $HOSTNAME -U postgres -d nfvisionaire -1 $BACKUP_nfvisionaire
unset PGPASSWORD
