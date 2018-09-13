# Run this after ant updates through homebrew to save yourself some hassle

# Ant env stuff
VER_INFO=$(ant -version)
ANT_VER="$( echo $VER_INFO | cut -d ' ' -f4 )"
ANT_DIR=/usr/local/Cellar/ant/$ANT_VER

# Salesforce env stuff
SFAPI=$(curl --silent "https://na55.salesforce.com/services/data" | python -m json.tool |grep -i version | tail -1)
SFAPI_VER=$(echo $SFAPI | cut -d '"' -f4)

clear
cd ~/.dotfiles/ant/
echo "Ant version: "$ANT_VER
echo "SF version: "$SFAPI_VER

# Clear old junk files
echo "Removing old jar...\c"
ls | grep -v update_ant.sh | xargs rm -r #TODO: make this not so dangerous...
echo " Removed!"

# Download and unzip the latest version of the ant tool
echo "Downloading version $SFAPI_VER from Salesforce...\c"
curl --silent https://gs0.salesforce.com/dwnld/SfdcAnt/salesforce_ant_$SFAPI_VER.zip > salesforce_ant_$SFAPI_VER.zip 
echo " Download complete!"

##echo "Extracting crap...\c"
unzip salesforce_ant_$SFAPI_VER.zip > /dev/null
echo "Extracted!\n"

# Remove old version and link the the new version to the ant path location
echo "Clearing old jar version from the ant lib directory"
rm $ANT_DIR/libexec/lib/ant-salesforce.jar

echo "Move jar to ant dir and cleaning current dir of various leftover crap..."
mv ant-salesforce.jar /usr/local/Cellar/ant/$ANT_VER/libexec/lib/ant-salesforce.jar
ls | grep -v update_ant.sh | grep -v ant-salesforce.jar | xargs rm -r #TODO: Make is less dangerous again.
echo "\nUpdate complete! Yay\n\n\n"

echo "=================================================="
echo " __    __ _ _   _       _                        ";
echo "/ / /\ \ (_) |_| |__   | | _____   _____         ";
echo "\ \/  \/ / | __| '_ \  | |/ _ \ \ / / _ \        ";
echo " \  /\  /| | |_| | | | | | (_) \ V /  __/        ";
echo "  \/  \/ |_|\__|_| |_| |_|\___/ \_/ \___|        ";
echo "                                                 ";
echo "                  _   _    _                     ";
echo "   __ _ _ __   __| | | | _(_)___ ___  ___  ___   ";
echo "  / _\` | '_ \ / _\` | | |/ / / __/ __|/ _ \/ __|  ";
echo " | (_| | | | | (_| | |   <| \__ \__ \  __/\__ \_ ";
echo "  \__,_|_| |_|\__,_| |_|\_\_|___/___/\___||___( )";
echo "                                              |/ ";
echo "                          ___                    ";
echo "                         /   \/\ /\              ";
echo "               _____    / /\ / //_/              ";
echo "              |_____|  / /_// __ \               ";
echo "                      /___,'\/  \/               ";
echo "                                                 ";
echo "=================================================="

