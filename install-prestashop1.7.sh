#!/usr/bin/env bash

# Download the PrestaShop source
wget https://www.prestashop.com/download/old/prestashop_1.7.1.1.zip

# Unzip the PrestaShop archive
unzip prestashop_1.7.1.1.zip

# Create prestashop directory
mkdir prestashop

# Move zip file with actual shop to prestashop prestashop directory
mv prestashop.zip prestashop

# Move index.php to prestashop directory
mv index.php prestashop

# Remove zip and install file
rm prestashop_1.7.1.1.zip Install_PrestaShop.html

# Unzip prestashop.zip
cd prestashop
unzip prestashop.zip
