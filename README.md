by Kydoimoz
Step-by-Step Instructions for Setting Up and Running the WPA Cracking Script on Termux

1. Update Termux
Open Termux and update the package repository and upgrade the installed packages to their latest versions.

pkg update && pkg upgrade


3. Install Required Packages
Install the necessary tools for working with Wi-Fi, capturing handshakes, and running the cracking script. This includes python, pip, and some other dependencies.

4. Install Python Libraries
The cracking script depends on certain Python libraries like scapy and tqdm. Install them using pip (Python's package manager).


5. git clone https://github.com/your-repository/wpa-cracker.git
cd wpa-cracker

-> Download Handshake Capture File
You’ll need a .cap file containing the EAPOL handshake to crack the password. This file can be captured using tools like airodump-ng or Wireshark.

Transfer the .cap file to your Termux directory using USB, FTP, or Termux File Sharing.
If you have a .cap file, move it to a folder like /data/data/com.termux/files/home/handshake/.
7. Prepare the Wordlist
The script uses a wordlist of possible passwords to attempt cracking the WPA key.
You can download a wordlist such as the famous rockyou.txt from GitHub or other sources.

Run the WPA Cracking Script
With everything set up, you’re now ready to run the WPA cracking script. The script needs three things:

The path to the .cap handshake file.
The path to your wordlist.
The SSID of the Wi-Fi network you're trying to crack.
