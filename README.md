# bedtime-reminder
Novimatrem's bedtime reminder script, for the going to bed at the right times. - Licensed under the GNU GPL v3.0.

[![Platform: GNU/Linux](https://img.shields.io/badge/platform-GNU/Linux-blue.svg)](www.kernel.org/linux.html) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

REQUIRES and DEPENDS UPON ``kdialog``, ``espeak``, ``paplay``, and ``bash``.

Note: script functionality requires system to remain unmuted and unlocked

# The reminder currently triggers at midnight by default and there is no simple way to adjust this outside of editing the bash scripts manually in multiple places, at the moment. Sorry!

# Installation
This script relies on pulseaudio's ability to respawn itself upon death to be functional. First enter the following command into your Terminal, to enable that functionality.
```sudo sed -i 's/^; autospawn = yes/autospawn = yes/' /etc/pulse/client.conf```

Clone the contents of this repo into a folder where it will be safely accessible in the future; ``git clone https://gitlab.com/Novimatrem/bedtime-reminder``

I usually place it in; ``/opt/`` making the final path ``/opt/bedtime-reminder/``. 

**(If you've not already, you will need to take ownership of the ``/opt/`` folder before you can make edits there. To do so, use ``sudo chown $USER /opt/``, and ``sudo chown $USER /opt/*`` commands.)** 

Make a startup program using the "Startup Applications" GUI in which the command is ``bash /path/to/bedtime-reminder.sh`` (that command usually being ``bash /opt/bedtime-reminder/bedtime-reminder.sh``, then restart your computer.

# elementary OS workaround
For sound to play while the system is locked, in elementary OS, you need to run the following command and then reboot the system.

``sudo adduser $(whoami) audio``

# License (code)
[![GNU GPLv3 Image](https://www.gnu.org/graphics/gplv3-127x51.png)](http://www.gnu.org/licenses/gpl-3.0.en.html)  

**bedtime-reminder** is Free Software: You can use, study share and improve it at your
will. Specifically you can redistribute and/or modify it under the terms of the
[GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
published by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This product is licensed under the GNU GPL v3.0.
This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 

See the GNU General Public License (v3.0) for more details. 
You should have received a copy of the GNU General Public License along with
this program.  If not, see [https://www.gnu.org/licenses/gpl-3.0.en.html](https://www.gnu.org/licenses/gpl-3.0.en.html). 

THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS
AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE 
RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION. 

