adobextract
===========

A quick and simple script to extract interesting information from the Adobe leak.  It needs to be rewritten to include a loop procedure that reads email domains from a text file to reduce processing time and script bloat.

To add a new search paramter, just add:
cat cred | grep @YOUREMAIL- > adobe_youremail.txt && wc -l adobe_youremail.txt >> adobe_youremail.txt
echo -n "YOUREMAIL information dumped -- OK | Records:"; tail -1 adobe_youremail.txt
 


