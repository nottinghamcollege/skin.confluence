#!/bin/sh
TEXTURE_PACKER_BINARY="TexturePacker"
SKIN_PACKAGE_NAME="skin.confluence.nottmcoll.zip"
SKIN_MEDIA_FOLDER="media"
TEXTURES_XBT="$SKIN_MEDIA_FOLDER/Textures.xbt"
EXCLUDE_LIST="exclude-build.txt"

# Check if TexturePacker is in PATH
command -v "$TEXTURE_PACKER_BINARY" >/dev/null 2>&1 || echo "$TEXTURE_PACKER_BINARY could not be found in PATH" exit 1 >&2;

# Check if media/Textures.xbt already exists first
if [ -f "$TEXTURES_XBT" ] ; then
	read -p "XBT file already exists, do you want to overwrite? " OVERWRITE_XBT

	if [[ $OVERWRITE_XBT =~ ^[Yy]$ ]]
	then
	    echo "Compiling assets"
		"$TEXTURE_PACKER_BINARY" -dupecheck -input "$SKIN_MEDIA_FOLDER" -output "$TEXTURES_XBT"
	else
		"Skipped compiling $TEXTURES_XBT"
	fi
fi

# Package skin but with original images and other source files excluded
echo "Packaging $(basename $SKIN_PACKAGE_NAME)"
zip -r "$SKIN_PACKAGE_NAME" . -x@"$EXCLUDE_LIST"
