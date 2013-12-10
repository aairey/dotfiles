#!/bin/bash

# Check input parameters
if [ -z "$1" ]
then
	echo "Please enter the Users First Name, followed by [ENTER]:"
	read firstname
else
	firstname=$1
fi

if [ -z "$2" ]
then
        echo "Please enter the Users Sirname, followed by [ENTER]:"
	read sirname
else
        sirname=$2
fi

if ! [ -z "$3" ]
then
        sirname="$sirname $3"
fi

if ! [ -z "$4" ]
then
        sirname="$sirname $4"
fi

# max length for username in wondows is 20 chars
username="$firstname $sirname"
username=${username:0:20}

# check if user exists
if [[ $(wbinfo -u | grep "$username") == $username ]]
then
	echo "User found in AD."
else
	echo "User does not exist!"
	exit
fi

# Run google Authenticator as the user
echo "Running Google Authenticator."
su -c 'google-authenticator -t -d -f -q -r 3 -R 30 -w 17' "$username"

# get QR code
SECRET=`head -1 "/home/$username/.google_authenticator"`
QR="https://www.google.com/chart?chs=200x200&chld=M|0&cht=qr&chl=otpauth://totp/$username@brain2.com%3Fsecret%3D$SECRET"
QR=${QR// /%20}

# obfuscate SECRET and dump in .reg file
secret_obf=`/root/scripts/passwordObfuscator/obfuscate $SECRET`

echo -e "Windows Registry Editor Version 5.00\r\n
\r\n
[HKEY_CURRENT_USER\Software\Brain2\Brain² Google Authenticator]\r\n
\"$username\"=\"$secret_obf\"" > /tmp/temp.reg
iconv -f UTF-8 -t MS-ANSI /tmp/temp.reg > /tmp/user.reg
rm /tmp/temp.reg
enc_file=`uuencode -m /tmp/user.reg user.reg`

# create mail message
echo "Composing and sending mail ..."

email="$firstname.`echo $sirname | tr -s " " "."`@brain2.com"
message='<html>
	<head></head>
	<body>

	Hello there '${firstname^}' '${sirname^}',

	<h1>Congratulations!</h1>
	A Brain&#178; Soft-token has been generated for you.

	Everything has been set up for you at HQ. You just need to decide how you want to use it!
	There are several possibilities, either you use:
	<ul>
		<li>Our custom app</li>
		<li>Your Smartphone</li>
	</ul>

	Or any combination of these. A brief explanation will follow.

	<h2>Our custom app</h2>
	<ol>
		<li><a href="http://static.montova.com/auth/Brain2_Authenticator.exe" >Download</a> the custom app and save it to your Dekstop for example</li>
		<li>Download and install the .reg file attached to this e-mail message</li>
		<li>Delete the .reg file afterwards</li>
		<li>Open the application on your Desktop, a OTP will be displayed.</li>
	</ol>
	
	<h2>Using your smartphone</h2>
	<ol>
		<li>Install the Authenticator app on your smartphone.<br />
			<a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2" rel="nofollow"><img alt="Get it on Google Play" src="https://developer.android.com/images/brand/en_generic_rgb_wo_45.png" data-image-src="https://developer.android.com/images/brand/en_generic_rgb_wo_45.png" height="40px" /></a><a href="https://itunes.apple.com/be/app/google-authenticator/id388497605?mt=8&amp;uo=4" rel="nofollow"><img src="http://linkmaker.itunes.apple.com/htmlResources/assets/images/web/linkmaker/badge_appstore-lrg.png" data-image-src="http://linkmaker.itunes.apple.com/htmlResources/assets/images/web/linkmaker/badge_appstore-lrg.png" height="40px" /></a><a href="http://www.windowsphone.com/en-us/store/app/authenticator/021dd79f-0598-e011-986b-78e7d1fa76f8" rel="nofollow"><img src="http://3.bp.blogspot.com/-MXAKf4C_Ubs/T0R-kNS0oxI/AAAAAAAACJQ/6wyoq0P04G4/s1600/128.png" title="Windows Phone Marketplace" height="40px" /><br /></a></li>
		<li>Scan <a href='$QR' >this QR code</a> with your mobile device.</li>
	</ol>
	
	If you still can'\''t get your head round things, please give me a shout at andy.airey@brain2.com.

	<table border="0" width="600" height="50" cellspacing="0" cellpadding="0">
		<tr>
			<td width="300" valign="bottom"><p align="left"><font face="Arial" size="2">Kind regards,<br><br><b>Andy Airey<br>Systems Engineer</b></font></p></td>
			<td width="300" valign="bottom"><p align="right"><img border="0" src="http://brain2.com/medialibrary/44699/406/nl/.png"></p></td>
		</tr>
		<tr>
			<td width="600" colspan="2"><hr></td>
		</tr>
		<tr>
			<td width="300">
				<p>
					<font face="Arial" size="2">
						Astra Gardens<br>
						Belgicastraat 11 bus 4<br>
						B-1930  Zaventem<br>
						<br>
					</font>
				</p>
			</td>
			<td width="250">
				<p align="right">
					<font face="Arial" size="2">
						E-mail: <a href="mailto:andy.airey@brain2.com">andy.airey@brain2.com</a><br>
						Tel: +32 (0) 2 736 35 25<br>
						Fax: +32 (0) 2 733 33 58<br>
						<br>
					</font>
				</p>
			</td>
		</tr>
	</table>

</body>'


# send mail message

(
echo "From: no-reply@brain2.com";
echo "To: $email";
#echo "Bcc: helpdesk@montova.com";
echo "Reply-To: andy.airey@brain2.com";
echo "Subject: Your Brain2 software token";
echo "MIME-Version: 1.0";
echo "Content-Type: multipart/mixed; boundary=boundary";
echo "This message contains multiple parts in MIME format.";
echo "--boundary";
echo "Content-Type:text/html";
echo "$message";
echo "--boundary";
echo "Content-Type: application/octet-stream";
echo "Content-Transfer-Encoding: base64";
echo "Content-Disposition: attachment; filename=user.reg";
echo "$enc_file";
echo "--boundary--";
) | sendmail -t

echo "mail succesfully sent to $email"
echo "All done!"
