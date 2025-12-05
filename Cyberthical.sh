#!/bin/bash

# Colors for styling
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Clear the screen
clear

# Cyberthical ASCII Art Banner
echo -e "${CYAN}"
echo "   ____      _                 _   _     _           _ "
echo "  / ___|   _| |__   ___ _ __| |_| |__ (_) ___ __ _| |"
echo " | |  | | | | '_ \ / _ \ '__| __| '_ \| |/ __/ _\` | |"
echo " | |__| |_| | |_) |  __/ |  | |_| | | | | (_| (_| | |"
echo "  \____\__, |_.__/ \___|_|   \__|_| |_|_|\___\__,_|_|"
echo "       |___/                                         "
echo -e "${NC}"
echo -e "${GREEN}Welcome to the Cyberthical CLI Utility${NC}"
echo "---------------------------------------------------"

# Menu Options
echo "Select an option:"
echo "1) Start Development Server (Localhost)"
echo "2) Install Dependencies"
echo "3) Build for Production"
echo "4) Deploy to Vercel/Firebase"
echo "5) Exit"
echo ""

read -p "Enter choice [1-5]: " choice

case $choice in
    1)
        echo -e "${GREEN}Starting Cyberthical Dev Server...${NC}"
        # Adjust this command based on your stack (e.g., npm run dev, hugo server, python app.py)
        npm run dev 
        ;;
    2)
        echo -e "${GREEN}Installing dependencies...${NC}"
        npm install
        ;;
    3)
        echo -e "${GREEN}Building project...${NC}"
        npm run build
        ;;
    4)
        echo -e "${GREEN}Deploying...${NC}"
        # Change this to 'firebase deploy' or 'vercel --prod' depending on your host
        vercel --prod
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo -e "${RED}Invalid option...${NC}"
        ;;
esac
