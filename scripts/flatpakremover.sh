FLATPAK=$1

SPLIT_NAME=$(echo $FLATPAK | tr "." "\n")

for NAME in $SPLIT_NAME
do
   APP_NAME=$NAME
done

sudo unlink /var/lib/flatpak/exports/bin/$FLATPAK

sudo unlink /usr/bin/$APP_NAME

sudo flatpak remove $FLATPAK
