#!/bin/bash

# License information
# This product is licensed under the GNU GPL v3.0.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License (v3.0) for more details.
# You should have received a copy of the GNU General Public License along with
# this program.  If not, see https://www.gnu.org/licenses/gpl-3.0.en.html.
# THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
# APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS
# AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
# EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE
# RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE
# PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
# REPAIR OR CORRECTION.

# Get the current time in 24 hours as a number.
TIMEHOURTIMEKEEPING="$( date +'%H')"

# Debug, comment out in final, comment out above if using for testing.
#TIMEHOURTIMEKEEPING="$(echo 22)"
#TIMEMINUTETIMEKEEPING="$(echo 00)"



# If not time hour at 22 (10 pm), exit.
if ! [ "$TIMEHOURTIMEKEEPING" == "22" ]; then exit; fi

# If time hour is at 22 (10 pm), continue.
if [ "$TIMEHOURTIMEKEEPING" == "22" ]; then echo "Running noisemaker!"; fi

# Play sound and show kdialog box
if [ "$TIMEHOURTIMEKEEPING" == "22" ]; then sleep 6900s && bash noisemaker.sh; fi

# If not time hour 22 (10 pm), sleep repeatedly until it changes.
if ! [ "$TIMEHOURTIMEKEEPING" == "22" ]; then while ! $TIMEHOURTIMEKEEPING == "*"; do sleep 1; done; fi

# The user dealt with kdialog, we kill music BUT NOT THE WHOLE SCRIPT, then resume as normal checking for time.
echo ""

echo "Killing paplay HARD to stop sounds."
echo ""
pkill paplay
killall paplay
kill -9 $(pgrep paplay)

echo ""

# BUG: FIXME: HACK: fix sound breaking randomly after this runs sometimes???
killall pulseaudio
killall pipewire

# Sleep for an hour and 2 mins to avoid accidental re-trigger
echo "Sleeping for 62 mins before checking for another alarm."
sleep 3720s

exit
