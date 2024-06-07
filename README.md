

# Eazy Firewall Script

This .bat allows you to easily create new firewall rules
for all .exe files in its folder/subfolders.

All entries, in the windows firewall, created by this script are named like this:
"Blocked/Allowed by EFS:" followed by its filepath

# Options:
- Block Incoming/Outgoing Connections For All .exe's
- Allow Incoming/Outgoing Connections For All .exe's
- Block Only Incoming Connections For All .exe's
- Block Only Outgoing Connections For All .exe's
- Allow Only Incoming Connections For All .exe's
- Allow Only Outgoing Connections For All .exe's


# Info:
> [!NOTE]
> This script can not overwrite existing firewall rules!
> If you need to revert/make changes, to existing rules
> please use the Windows Firewall!

> [!IMPORTANT]
> Needs to be run as Administrator! Otherwise it can not add rules to the windows firewall
