adobextract
===========
Daniel Wood aka securityCRUSH

MIT License
v0.1

A quick and simple script to extract interesting information from the Adobe leak.  It needs to be rewritten to include a loop procedure that reads email domains from a text file to reduce processing time and script bloat.

To add a new search paramter, just add:

cat cred | grep @YOUREMAIL- > adobe_youremail.txt && wc -l adobe_youremail.txt >> adobe_youremail.txt
echo -n "YOUREMAIL information dumped -- OK | Records:"; tail -1 adobe_youremail.txt

The script currently contains several entries for an example of pulling email addresses and writing them to their respective text files and then combining them into one larger file that contains only the email addresses.

Please keep in mind this script is unsupported and contains no warranties.  Feel free to use it as you like and make modifications to suit your needs.  If you end up re-distributing it, please keep in mind this carries the MIT License.


