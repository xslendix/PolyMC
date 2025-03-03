<p align="center">
<img src="./program_info/polymc-header-black.svg#gh-light-mode-only" alt="PolyMC logo" width="50%"/>
<img src="./program_info/polymc-header.svg#gh-dark-mode-only" alt="PolyMC logo" width="50%"/>
</p>

PolyMC is a custom launcher for Minecraft that focuses on predictability, long term stability and simplicity.

This is a **fork** of the MultiMC Launcher and not endorsed by MultiMC.
If you want to read about why this fork was created, check out [our FAQ page](https://polymc.org/wiki/overview/faq/).
<br>

# Installation

- All downloads and instructions for PolyMC can be found [here](https://polymc.org/download/)
- Last build status: <https://github.com/PolyMC/PolyMC/actions>

## Development Builds

There are per-commit development builds available [here](https://github.com/PolyMC/PolyMC/actions). These have debug information in the binaries, so their file sizes are relatively larger.
Portable builds are provided for AppImage on Linux, Windows, and macOS.

For Debian and Arch, you can use these packages for the latest development versions:  
[![polymc-git](https://img.shields.io/badge/aur-polymc--git-blue)](https://aur.archlinux.org/packages/polymc-git/)
[![polymc-git](https://img.shields.io/badge/mpr-polymc--git-orange)](https://mpr.makedeb.org/packages/polymc-git)  
For flatpak, you can use [flathub-beta](https://discourse.flathub.org/t/how-to-use-flathub-beta/2111)

# Help & Support

Feel free to create an issue if you need help. However, you might find it easier to ask in the Discord server.

[![PolyMC Discord](https://img.shields.io/discord/923671181020766230?label=PolyMC%20Discord)](https://discord.gg/xq7fxrgtMP)

We also have a subreddit you can post your issues and suggestions on:

[r/PolyMCLauncher](https://www.reddit.com/r/PolyMCLauncher/)

# Development

If you want to contribute to PolyMC you might find it useful to join our Discord Server.

## Building

If you want to build PolyMC yourself, check [Build Instructions](https://polymc.org/wiki/development/build-instructions/) for build instructions.

## Translations

The translation effort for PolyMC is hosted on [Weblate](https://hosted.weblate.org/projects/polymc/polymc/) and information about translating PolyMC is available at <https://github.com/PolyMC/Translations>

## Download information

To modify download information or change packaging information send a pull request or issue to the website [here](https://github.com/PolyMC/polymc.github.io/tree/master/src/download).

## Forking/Redistributing/Custom builds policy

We don't care what you do with your fork/custom build as long as you follow the terms of the [license](LICENSE) (this is a legal responsibility), and if you made code changes rather than just packaging a custom build, please do the following as a basic courtesy:

- Make it clear that your fork is not PolyMC and is not endorsed by or affiliated with the PolyMC project (<https://polymc.org>).
- Go through [CMakeLists.txt](CMakeLists.txt) and change PolyMC's API key to your own or set it to an empty string (`""`) to disable it (this way the program will still compile but you won't be able to log into your Minecraft account).

If you have any questions or want any clarification on the above conditions please make an issue and ask us.

Be aware that if you build this software without removing the provided Microsoft API key in [CMakeLists.txt](CMakeLists.txt) you are accepting the following terms and conditions:

- [Microsoft Identity Platform Terms of Use](https://docs.microsoft.com/en-us/legal/microsoft-identity-platform/terms-of-use)

If you do not agree with these terms and conditions, then remove the Microsoft API keys from the [CMakeLists.txt](CMakeLists.txt) file by setting it to an empty string (`""`).

All launcher code is available under the GPL-3.0-only license.
  
The logo and related assets are under the CC BY-SA 4.0 license.
