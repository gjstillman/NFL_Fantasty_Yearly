# This script merges a bunch of csv files into one csv file
#
# If the output file does not exist, it will be created


# ---- Parameters ---------------------------------------------------------------------
# Folder where the source files are located
$pathSourceFiles = "C:\Users\gjstillman\Desktop\merge_csv\"

# Output file
$destinationFile = "C:\Users\gjstillman\Desktop\Merged.csv"
# -------------------------------------------------------------------------------------



$files = Get-ChildItem $pathSourceFiles*.csv 
Get-Content $files | Set-Content $destinationFile

Read-Host -Prompt "Press Enter to exit"