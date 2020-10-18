
COMMANDTORUN="cat /vmfs/volumes/datastore1/file2.txt"
FILETOSAVE ="C:\scripts\file.txt"
ssh $USER@$HOST $COMMANDTORUN > $FILETOSAVE sed 's/[[:space:]]\{1,\}/;/g' sed 's/[[:space:]]\{1,\}/;/g'
