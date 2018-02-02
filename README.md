# Nottingham College Kodi Confluence Skin

Modified version of the Kodi Confluence skin for use on Reception TVs at Nottingham College.

This is a forked copy of the original skin. For changes to the main project, [please go here](https://github.com/xbmc/skin.confluence).

## Building

A build skin script exists to compile the image assets for better performance within Kodi as well as provide a packaged version of the skin that excludes various files/folders not required on a live Kodi installation.

Run `build-skin.sh` to compile the assets and create the skin package. You'll need `TexturePacker` to create an `Textures.xbt` file in place of the original iamge files, you can grab the pre-compiled binary from https://github.com/nottinghamcollege/kodi-texturepacker to build this.
