#!/usr/bin/env bash

# Download the PrestaShop source
wget https://download.prestashop.com/download/releases/prestashop_1.6.1.17.zip

# Unzip the PrestaShop archive
unzip prestashop_1.6.1.17.zip

# Remove zip and install file
rm prestashop_1.6.1.17.zip Install_PrestaShop.html

#Set the correct user and group ownership for the PrestaShop directory
