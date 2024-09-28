#!/usr/bin/bash
###############################################################
# Help                                                        #
###############################################################
Help() {
    # Display Help
    echo "Add description of the script functions here."
    echo
    echo "Syntax: scriptTemplate [-g|h|v|V]"
    echo "options:"
    echo "g Print the GPL license notification."
    echo "h Print this Help."
    echo "v Verbose mode."
    echo "V Print software version and exit."
    echo
}

###############################################################
# Check for root                                              #
###############################################################
CheckRoot() {
    # If we are not running as root we exit the program
    if [ `id -u` != 0 ]
    then
        echo "ERROR: You must be root user to run this program"
        exit
    fi
}

###############################################################
# Main program                                                #
###############################################################

###############################################################
# Sanity checks                                               #
###############################################################
# Are we rnning as root?
#CheckRoot

# Initialize variables
option=""
Msg="Hello world!"

###############################################################
# Process the input options. Add options as needed.           #
###############################################################
# Get the options
while getopts ":h" option; do
    case $option in
        h) # display Help
            Help
            exit;;
        \?) # incorrect option
            echo "Error: Invalid option"
            exit;;
    esac
done

echo "$Msg"