# Work Automation Scripts

This repository contains a collection of scripts designed to automate and simplify daily tasks. These scripts cover a variety of functions, from opening frequently used applications to managing files and directories efficiently.

## Scripts Included

1. **firefox.sh**
   - **Description:** Opens Firefox. If a URL is provided as an argument, it opens the specified URL in Firefox. If no URL is provided, it simply opens the browser.
   - **Usage:**
     ```bash
     ./firefox.sh [URL]
     ```
   - **Example:**
     ```bash
     ./firefox.sh https://www.example.com
     ```
2. **urlshort.sh**
   - **Description:** This script shortens a given URL using a URL shortening service . It outputs the shortened URL to the terminal.
   - **Usage:**
     ```bash
     ./urlshort.sh <long_url>
     ```
   - **Example:**
     ```bash
     ./urlshort.sh  https://www.example.com
     ```

## How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/OsamaRab3/Work-Automation-Scripts.git

   cd Work-Automation-Scripts

   chmod +x *.sh

    ./script_name.sh [optional_arguments]


   ``` 
## Contributing

Feel free to contribute by adding more useful scripts or improving the existing ones. Please ensure that your scripts are well-documented and tested.