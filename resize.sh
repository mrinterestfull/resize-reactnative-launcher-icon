#!/bin/bash
#need to install imagemagick 

#sudo apt install imagemagick

if [ -z $1 ]
       # Check if file exists.
then
  echo "Did you forget to pass a image Filename? \"$1\" "
  echo -e "\n"
  echo "Example usage: resize.sh mycoolIcon.png"
  echo "I also know how to convert jpg to png, so give me something :)"
  exit $E_NOFILE
fi

echo "The file name you gave me is:"
echo $1
echo -e "\n"

mkdir -p mipmap-hdpi
convert $1 -resize 72x72 ./mipmap-hdpi/ic_launcher.png
convert $1 -resize 72x72 ./mipmap-hdpi/ic_launcher_round.png
echo "done with mipmap-hdpi"

mkdir -p mipmap-mdpi
convert $1 -resize 48x48 ./mipmap-mdpi/ic_launcher.png
convert $1 -resize 48x48 ./mipmap-mdpi/ic_launcher_round.png
echo "done with mipmap-mdpi"

mkdir -p mipmap-xhdpi
convert $1 -resize 96x96 ./mipmap-xhdpi/ic_launcher.png
convert $1 -resize 96x96 ./mipmap-xhdpi/ic_launcher_round.png
echo "done with mipmap-xhdpi"

mkdir -p mipmap-xxhdpi
convert $1 -resize 144x144 ./mipmap-xxhdpi/ic_launcher.png
convert $1 -resize 144x144 ./mipmap-xxhdpi/ic_launcher_round.png
echo "done with mipmap-xxhdpi"

mkdir -p mipmap-xxxhdpi
convert $1 -resize 192x192 ./mipmap-xxxhdpi/ic_launcher.png
convert $1 -resize 192x192 ./mipmap-xxxhdpi/ic_launcher_round.png
echo "done with mipmap-xxxhdpi"


echo "Done with Android, lets move on to iOS"
echo -e "\n"
mkdir -p AppIcon.appiconset
convert $1 -resize 20x20 ./AppIcon.appiconset/Icon-App-20x20@1x.png
convert $1 -resize $((20*2))x$((20*2)) ./AppIcon.appiconset/Icon-App-20x20@2x.png
convert $1 -resize $((20*3))x$((20*3)) ./AppIcon.appiconset/Icon-App-20x20@3x.png
convert $1 -resize $((29*1))x$((29*1)) ./AppIcon.appiconset/Icon-App-29x29@1x.png
convert $1 -resize $((29*2))x$((29*2)) ./AppIcon.appiconset/Icon-App-29x29@2x.png
convert $1 -resize $((29*3))x$((29*3)) ./AppIcon.appiconset/Icon-App-29x29@3x.png
convert $1 -resize $((40*1))x$((40*1)) ./AppIcon.appiconset/Icon-App-40x40@1x.png
convert $1 -resize $((40*2))x$((40*2)) ./AppIcon.appiconset/Icon-App-40x40@2x.png
convert $1 -resize $((40*3))x$((40*3)) ./AppIcon.appiconset/Icon-App-40x40@3x.png
convert $1 -resize $((60*1))x$((60*1)) ./AppIcon.appiconset/Icon-App-60x60@1x.png
convert $1 -resize $((60*2))x$((60*2)) ./AppIcon.appiconset/Icon-App-60x60@2x.png
convert $1 -resize $((60*3))x$((60*3)) ./AppIcon.appiconset/Icon-App-60x60@3x.png
convert $1 -resize $((76*1))x$((76*1)) ./AppIcon.appiconset/Icon-App-76x76@1x.png
convert $1 -resize $((76*2))x$((76*2)) ./AppIcon.appiconset/Icon-App-76x76@2x.png
convert $1 -resize 167x167 ./AppIcon.appiconset/Icon-App-83.5x83.5@2x.png
convert $1 -resize 1024x1024 ./AppIcon.appiconset/ItunesArtwork@2x.png



echo "Done with iOS AppIcon.appiconset"
echo -e "\n"





echo "Enjoy. Made in Chicago by Lucas Szybalski in 2022"
echo "Follow me on twitter @lucasmanual"
echo "Create a pull requst if things need updates."
echo -e "\n"

echo "Android: Now go ahead and repalce mipmap-... folders in android/app/src/main/res/mipmap..."
echo "iOS: Repalce images in ios/<yourappname>/Images.xcassets/AppIcon.appiconset"





