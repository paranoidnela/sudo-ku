#!/bin/bash
clear
sudo touch /usr/bin/ku
sudo echo '#!/bin/bash' >> /usr/bin/ku
sudo echo 'me="$(whoami)"' >> /usr/bin/ku
sudo echo 'if [ $me = "root" ]; then' >> /usr/bin/ku
sudo echo '   echo "Committing sudoku."' >> /usr/bin/ku
sudo echo '   reboot' >> /usr/bin/ku
sudo echo 'else' >> /usr/bin/ku
sudo echo '' >> /usr/bin/ku
sudo echo '   echo "Running as root is required."' >> /usr/bin/ku
sudo echo 'fi' >> /usr/bin/ku
sudo chmod +x /usr/bin/ku
echo "Installation complete!"
echo "To uninstall run 'rm /usr/bin/ku'"