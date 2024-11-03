FLATPAK=$1

SPLIT_NAME=$(echo $FLATPAK | tr "." "\n")

#echo $FLATPAK

#echo $SPLIT_NAME

for NAME in $SPLIT_NAME
do
   APP_NAME=$NAME
done

#echo $APP_NAME

sudo flatpak install flathub $FLATPAK

sudo ln -s /var/lib/flatpak/exports/bin/$FLATPAK /usr/bin/$APP_NAME
