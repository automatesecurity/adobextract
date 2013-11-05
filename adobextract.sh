#!/bin/bash
#AdobeExtract by @securitycrush
#This could be much much cleaner and streamlined with loops; tweak as needed.
#Assumes the cred file is in the same directory as the script.
#Ensure chmod +x adobextract.sh to execute
#This script is to help automate the tedious data mining efforts for security researchers and companies 
echo "################################################"
echo -e "# \e[1;34mAdobeExtract by Daniel Wood (@securitycrush)\e[0m #"
echo "################################################"
echo "To Do's:"
echo "1. Implement Loop procedure"
echo "2. Implement input file reading"
echo "3. Password hint extraction"
echo "4. Overall output file cleaning"
echo ""
echo -e "\e[00;31m#################\e[00m"
echo -e "\e[00;31m# W A R N I N G #\e[00m"
echo -e "\e[00;31m#################\e[00m"
echo "There may be false positives with this script and bogus accounts"
echo "from users who have signed up with fake emails (e.g,. @whitehouse.gov)."
echo ""
echo "Dumping interesting government/military accounts from Adobe leak..."
cat cred | grep @army.mil- > adobe_army.txt && wc -l adobe_army.txt >> adobe_army.txt
echo -n "USArmy information dumped -- OK | Records:"; tail -1 adobe_army.txt
cat cred | grep @navy.mil- > adobe_navy.txt && wc -l adobe_navy.txt >> adobe_navy.txt
echo -n "USNavy information dumped -- OK | Records:"; tail -1 adobe_navy.txt
cat cred | grep @af.mil- > adobe_usaf.txt && wc -l adobe_usaf.txt >> adobe_usaf.txt
echo -n "USAF information dumped -- OK | Records:"; tail -1 adobe_usaf.txt
cat cred | grep @usmc.mil- > adobe_usmc.txt && wc -l adobe_usmc.txt >> adobe_usmc.txt
echo -n "USMC information dumped -- OK | Records:"; tail -1 adobe_usmc.txt
cat cred | grep @dia.mil- > adobe_dia.txt && wc -l adobe_dia.txt >> adobe_dia.txt
echo -n "Defense Intelligence Agency information dumped -- OK | Records:"; tail -1 adobe_dia.txt
cat cred | grep @mail.mil- > adobe_defense.txt && wc -l adobe_defense.txt >> adobe_defense.txt
echo -n "Defense information dumped -- OK | Records:"; tail -1 adobe_defense.txt
cat cred | grep @whitehouse.gov- > adobe_wh.txt && wc -l adobe_wh.txt >> adobe_wh.txt
echo -n "Whitehouse information dumped -- OK | RecordS:"; tail -1 adobe_wh.txt
cat cred | grep @nsa.gov- > adobe_nsa.txt && wc -l adobe_nsa.txt >> adobe_nsa.txt
echo -n "National Security Agency information dumped -- OK | Records:"; tail -1 adobe_nsa.txt
cat cred | grep @cia.gov- > adobe_cia.txt && wc -l adobe_cia.txt >> adobe_cia.txt
echo -n "Central Intelligence Agency information dumped -- OK | Records:"; tail -1 adobe_cia.txt
cat cred | grep @nga.gov- > adobe_nga.txt && wc -l adobe_nga.txt >> adobe_nga.txt
echo -n "National Geospatial Intelligence Agency information dumped -- OK | Records:"; tail -1 adobe_nga.txt
cat cred | grep @senate.gov- > adobe_senate.txt && wc -l adobe_senate.txt >> adobe_senate.txt
echo -n "U.S. Senate information dumped -- OK | Records:"; tail -1 adobe_senate.txt
cat cred | grep @usa.gov- > adobe_usa.txt && wc -l adobe_usa.txt >> adobe_usa.txt
echo -n "USA.GOV information dumped -- OK | Records:"; tail -1 adobe_usa.txt
cat cred | grep @gsa.gov- > adobe_gsa.txt && wc -l adobe_gsa.txt >> adobe_gsa.txt
echo -n "GSA information dumped -- OK | Records:"; tail -1 adobe_gsa.txt
cat cred | grep @opm.gov- > adobe_opm.txt && wc -l adobe_opm.txt >> adobe_opm.txt
echo -n "OPM information dumped -- OK | Records:"; tail -1 adobe_opm.txt
cat cred | grep @dhs.gov- > adobe_dhs.txt && wc -l adobe_dhs.txt >> adobe_dhs.txt
echo -n "DHS information dumped -- OK | Records:"; tail -1 adobe_dhs.txt
cat cred | grep @fbi.gov- > adobe_fbi.txt && wc -l adobe_fbi.txt >> adobe_fbi.txt
echo -n "FBI information dumped -- OK | Records:"; tail -1 adobe_fbi.txt
cat cred | grep @doj.gov- > adobe_doj.txt && wc -l adobe_doj.txt >> adobe_doj.txt
echo -n "Department of Justice information dumped -- OK | Records:"; tail -1 adobe_doj.txt
echo ""
echo "Now dumping interesting corporate accounts..."
cat cred | grep @rsa.com- > adobe_rsa.txt && wc -l adobe_rsa.txt >> adobe_rsa.txt
echo -n "RSA information dumped -- OK | Records:"; tail -1 adobe_rsa.txt
cat cred | grep @damballa.com- > adobe_damballa.txt && wc -l adobe_damballa.txt >> adobe_damballa.txt
echo -n "Damballa information dumped -- OK | Records:"; tail -1 adobe_damballa.txt
cat cred | grep @fireeye.com- > adobe_fireeye.txt && wc -l adobe_fireeye.txt >> adobe_fireeye.txt
echo -n "FireEye information dumped -- OK | Records:"; tail -1 adobe_fireeye.txt
cat cred | grep @ivizsecurity.com- > adobe_iviz.txt && wc -l adobe_iviz.txt >> adobe_iviz.txt
echo -n "iViZ information dumped -- OK | Records:"; tail -1 adobe_iviz.txt
cat cred | grep @dell.com- > adobe_dell.txt && wc -l adobe_dell.txt >> adobe_dell.txt
echo -n "Dell information dumped -- OK | Records:"; tail -1 adobe_dell.txt
cat cred | grep @microsoft.com- > adobe_msoft.txt && wc -l adobe_msoft.txt >> adobe_msoft.txt
echo -n "Microsoft information dumped -- OK | Records:"; tail -1 adobe_msoft.txt
cat cred | grep @apple.com- > adobe_apple.txt && wc -l adobe_apple.txt >> adobe_apple.txt
echo -n "Apple information dumped -- OK | Records:"; tail -1 adobe_apple.txt
cat cred | grep @alliedbarton.com- > adobe_ab.txt && wc -l adobe_ab.txt >> adobe_ab.txt
echo -n "AlliedBarton information dumped -- OK | Records:"; tail -1 adobe_ab.txt
echo ""
echo "Now dumping interesting financial company accounts..."
cat cred | grep @bankofamerica.com- > adobe_boa.txt && wc -l adobe_boa.txt >> adobe_boa.txt
echo -n "Bank of America information dumped -- OK | Records:"; tail -1 adobe_boa.txt
cat cred | grep @wellsfargo.com- > adobe_wf.txt && wc -l adobe_wf.txt >> adobe_wf.txt
echo -n "Wells Fargo information dumped -- OK | Records:"; tail -1 adobe_wf.txt
echo ""
echo -e "\e[1;34mInteresting information dump completed\e[0m"
echo -e "\e[1;34mNow compiling email addresses from all dumped files...\e[0m"
cat adobe_* | cut -d\- -f 5 | sort -u > adobe_all_emails.txt && wc -l adobe_all_emails.txt >> adobe_all_emails.txt
echo -n "All emails compiled -- OK | Records:"; tail -1 adobe_all_emails.txt
