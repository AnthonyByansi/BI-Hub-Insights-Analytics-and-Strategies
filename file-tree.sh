#!/bin/bash

# directories and files to be created
declare -A structure=(
    ["01-Introduction"]="01-What-is-BI.md 02-Importance-of-BI.md 03-Key-Concepts.md"
    ["02-BI-Tools-and-Technologies"]="01-Overview-of-BI-Tools.md 02-Power-BI.md 03-Excel-for-BI.md 04-Azure-Synapse-Analytics.md 05-Azure-Data-Factory.md"
    ["03-Data-Collection-and-Analysis"]="01-Data-Collection-Techniques.md 02-Data-Analysis-Methods.md 03-Data-Visualization-Techniques.md"
    ["04-Advanced-Topics"]="01-Real-time-and-Historical-Data-Analysis.md 02-Trend-and-Pattern-Analysis.md 03-What-if-Analysis.md 04-Data-Integration.md"
    ["05-Case-Studies"]="01-Case-Study-1.md 02-Case-Study-2.md 03-Case-Study-3.md"
    ["06-Resources"]="01-Books.md 02-Online-Courses.md 03-Blogs-and-Websites.md 04-Research-Papers.md"
    ["07-Community"]="01-Forums-and-Discussion-Boards.md 02-Events-and-Webinars.md 03-Job-Opportunities.md"
)

# root directory
mkdir -p Business-Intelligence-Learning-Repository

# Loop through each directory and its files
for dir in "${!structure[@]}"; do
    # Create the directory
    dirPath="Business-Intelligence-Learning-Repository/$dir"
    mkdir -p "$dirPath"

    # Create the files in the directory
    IFS=' ' read -r -a files <<< "${structure[$dir]}"
    for file in "${files[@]}"; do
        filePath="$dirPath/$file"
        touch "$filePath"
    done
done
