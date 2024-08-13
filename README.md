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
3. **screenshot.sh**
   - **Description:** Takes a screenshot and saves it to a specified directory.
   - **Usage:** 
     ```bash
     ./screenshot.sh
     ```
   - **Example:**
     ```bash
     ./screenshot.sh
     ```
   - **Notes:** The screenshot will be saved in the `~/Pictures/screenshots` directory with a timestamp in the filename. Ensure `gnome-screenshot` is installed.
      - **install  `gnome-screenshot`**
      ```bash
       sudo apt-get install gnome-screenshot
       ```
4. **todo.sh**
  - **Description:** A script to manage your to-do list. You can add tasks, mark tasks as done, list all tasks and completed tasks, and clear all tasks.
   - **Usage:** 
      - **Add a Task**:
      ```bash
      ./todo.sh add task1
       ```
      - **Mark a Task as Done**:
      ```bash
      ./todo.sh done task1
      ```
      - **List All Tasks and Completed Tasks**:
      ```bash
      ./todo.sh list
      ```
      - **Clear All Tasks**:  
      ```bash
      ./todo.sh clear
      ```
  

5. **download_file.sh**
  - **Description:**  Downloads a file from a URL using `wget`.
    - **Usage:** 
    ```bash
      ./download_file.sh https://example.com/file.zip
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