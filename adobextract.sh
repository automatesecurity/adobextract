#!/bin/bash
#adobextract v0.1a
#Copyright (c) 2013 Daniel Wood (securityCRUSH)
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.
#
#This could be much much cleaner and streamlined with loops; tweak as needed.
#Assumes the cred file is in the same directory as the script. Ensure chmod +x
#to execute properply.
#
#This script is to help automate the tedious data mining efforts for security
#researchers and companies alike to gain value from the breach after the fact
#to limit any further damage that may occur due to compromised accounts.
#
#Usage ./adobextract.sh
#
##############################################################################
echo "################################################"
echo -e "# \e[1;34mAdobeExtract by Daniel Wood (@securitycrush)\e[0m #"
echo "################################################"
echo "To Do's:"
echo "1. Password hint extraction"
echo "2. Overall output file cleaning"
echo ""
echo -e "\e[00;31m#################\e[00m"
echo -e "\e[00;31m# W A R N I N G #\e[00m"
echo -e "\e[00;31m#################\e[00m"
echo "There may be false positives with this script and bogus accounts"
echo "from users who have signed up with fake emails (e.g,. @whitehouse.gov)."
echo ""
echo "Dumping interesting information from domains.txt..."
while read domains;
do cat cred | grep @$domains- > $domains && wc -l $domains >> $domains
echo -n $domains "information dumped -- OK | Records:"; tail -1 $domains;
cat $domains | cut -d\- -f 5 >> emails.txt;
cat emails.txt | sort -u > emails_sorted.txt;
wc -l emails_sorted.txt >> emails_sorted.txt;
done < domains.txt
echo -e "\e[1;34mInteresting information dump completed\e[0m"
echo -e "\e[1;34mEmail addressess compiled to emails.txt and emails_sorted.txt\e[0m"
