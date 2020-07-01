# This script will migrate your existing data from Adatum's old ticketing system to its new one.

# IMPORTANT: You CANNOT run this script as one command. Some of the commands can be run together in one selection, but others must be run separately. 
# Please refer to the instructions in this script as to how you can run each command. 

# Lines 11-13 set your execution poicy as Remote Signed and installs both the Sharepoint Online module as well as the SharePoint PNP module, the latter of which
# enables you to remotely sign into your Sharepoint Online enviroment and manage your Sharepoint lists, which is were the new ticketing system is located.

# You can select lines 11-13 and run all three together at one time. 

Set-ExecutionPolicy RemoteSigned
Install-Module -Name Microsoft.Online.SharePoint.PowerShell
Install-Module SharePointPnPPowerShellOnline


# Lines 20-21 set variables to reduce the amount of typing required when running this script.

# You can select lines 20-21 and run both together at one time.

$Credential= Get-Credential -Message "Please enter the IT Consultant's MOD Administrator credentials."
$ServiceRequestSystem= Import-Csv "C:\Users\DomainAdmin\Documents\Service Request System.csv"


# You will be prompted twice for the IT Consultant's MOD Administrator credentials. Please enter it each time.

# Line 32 connects you to the Sharepoint Online site that contains the new ticketing system.

# IN THE URL, YOU MUST REPLACE ZZZZZZ WITH YOUR TENANT SUFFIX ID PROVIDED BY YOUR LAB HOSTING PROVIDER BEFORE YOU RUN THIS COMMAND.

# Line 32 should be run by itself and not included with any other selection. 

Connect-PnPOnline -Url "https://m365xZZZZZZ.sharepoint.com/sites/ITServices" -Credentials $credential


# Each of the next 6 commands (lines 41-51) MUST be run separately. 
# The New-PnPList command creates the Service Desk Requests list and associates it with the GenericList template. 
# The Add-PnPField commands associate each column display name with the internal column name from the GenericList template.

# IF YOU SELECT ALL OF THESE COMMANDS TOGETHER ADN RUN THEM ALL AT ONE TIME, THE COMMANDS WILL FAIL. THEY MUST BE RUN SEPERATELY.

New-PnPList -Title "Service Desk Requests" -Template GenericList 

Add-PnPField -List "Service Desk Requests" -DisplayName "Date" -InternalName "Date" -Type Text -AddToDefaultView

Add-PnPField -List "Service Desk Requests" -DisplayName "Description" -InternalName "Description" -Type Text -AddToDefaultView

Add-PnPField -List "Service Desk Requests" -DisplayName "Location" -InternalName "Location" -Type Text -AddToDefaultView

Add-PnPField -List "Service Desk Requests" -DisplayName "Issue Title" -InternalName "IssueTitle" -Type Text -AddToDefaultView

Add-PnPField -List "Service Desk Requests" -DisplayName "Issue Status" -InternalName "Issue Status" -Type Text -AddToDefaultView


# While the next two commands can technically be run together, they each display a large amount of text, so it's better off running them separately so that 
# you can distinguish the text being displayed for each command. 

# Line 60 displays the available Sharepoint lists for the IT Services site. Confirm that Service Desk Requests appears in the list.
# Line 60 should be run by itself and not included with any other selection. 

Get-PnPList


# Line 66 imports the csv file to the terminal. This command displays each of the records that are imported from the .csv file.
# Line 66 should be run by itself and not included with any other selection. 

$ServiceRequestSystem


# Lines 73-79 represent one command that should all be selected and run together. For each record in the .csv file, this command associates each .csv column with 
# the corresponding internal column name from the list template. 
# For each field, the left side of the statement is the internal column name from the SharePoint list template, and the right side is the .csv column name.

foreach($Record in $ServiceRequestSystem){
Add-PnPListItem -List "Service Desk Requests" -Values @{
"issueTitle"= $Record.'Issue Title';
"Date"= $Record.'Date';
"Location"= $Record.'Location';
"Title"= $Record.'Issue Status';
"Description"= $Record.'Description'}}

# Complete
