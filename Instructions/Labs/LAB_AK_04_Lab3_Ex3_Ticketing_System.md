# Module 4 - Lab 3 - Exercise 3 - Create a Ticketing System in SharePoint

As Adatum begins its transition to Microsoft 365 as their hosted cloud solution, they want to use this opportunity to reduce the amount of third-party software products they currently use. This will help them achieve their goal of reducing their overall IT expenses. The CTO has asked Holly Dickson, Adatum’s Enterprise Administrator, to design a solution that uses Microsoft 365 services to replace the third-party IT service request system that Adatum currently uses.

Because Holly is busy with running the Microsoft 365 pilot project along with her other admin responsibilities, the CTO has authorized her to hire an IT consultant to design the new service request ticketing system. However, he doesn’t want the consultant to have access to their entire Adatum system, so he wants Holly to implement “good security practices” by only providing the consultant with access to Adatum’s IT pilot project environment.

## Important: Collaboration with an External User

In Lab 1, your instructor assigned you the tenant suffix ID of a fellow student in your class. Your fellow student's tenant ID will represent the IT Consultant who will partner with Holly Dickson in building Adatum's new service request ticketing system. In this lab, you will provide your fellow student's tenant ID with access to the new ticketing system. In a lab 1 exercise, you authorized external access to your tenant from this student’s tenant ID. By providing external access to this tenant suffix ID, you and your fellow student will be able to collaborate through Microsoft Teams as you set up this new service request ticketing system (you will do this in the next lab that deals with Teams).

In the previous lab exercise, you created a SharePoint team site called IT Services. As you develop this site, you will employ good security practices by limiting site access to Holly and your fellow student's tenant ID (this tenant ID represents the IT consultant). As you set up the new service request ticketing system, you will access the site using your fellow student's tenant ID to prove that the IT consultant can access the system. In the next lab involving Microsoft Teams, you will actually chat with your fellow student concerning the new ticketing system. Keep in mind that the student who was assigned as your IT consultant will also be taking on the role of Holly Dickson in his or her own lab, and you will be taking on the IT consultant role with another student. Therefore, each student in the class will take on dual roles – that of Holly Dickson in the student’s own lab, and that of the IT consultant for a fellow student’s lab.

### Task 1 - Assign site permissions to your IT consultant

As Holly Dickson, you earlier provided your fellow student's tenant ID with External Access back in Lab 1. You now must assign the consultant with permission to access the new IT Services team site that you created in the prior lab. If you will recall, in the prior lab you created a new Information Technology group that was assigned to the IT Services site. This group included Isaiah Langer and Joni Sherman, and you assigned the group Full Control permissions. Since you do not want the IT consultant to have Full Control permissions, you do not want to assign the consultant to the Information Technology group.

Instead, in your role as Holly Dickson, you will perform the following steps in this task to assign the IT consultant to the IT Services team site with limited permissions:

- You will create a new permission level for the IT Services site titled **Restricted Use**. You will then assign to this permission level the limited set of permissions that you want assigned to any external users who will access the site (in this case, the IT Consultant).
- For the IT Services site, you will then create a new group of users titled **Consultants**, and you will assign your fellow student’s tenant admin account (which represents the IT Consultant) to this group.
- You will assign the **Restricted Use** permission level to this **Consultants** group. This will limit the actions the IT Consultant will be able to perform when accessing the IT Services site.

1. You should meet with the student who your instructor assigned to your lab to play the role of the IT consultant. During this meeting you should exchange the tenant admin accounts **(admin@xxxxxZZZZZZ.onmicrosoft.com)** from each of your tenants along with the tenant admin's password.
1. You should still be logged into LON-CL1 as **ADATUM\\Administrator** and password **Pa55w.rd**; if not, then do so now.
1. You should still have your Edge browser and the SharePoint admin center open from the prior lab in which you were logged in as Holly Dickson. If so, proceed to the next step; otherwise, navigate to the SharePoint admin center just as you did in the prior lab exercise.
1. In the **SharePoint admin center**, you will begin by creating a new permission level for the IT Services site. In the left-hand navigation pane, select **Sites**, and then select **Active sites**.
1. In the list of **Active sites**, locate the **IT Services** site and then select the **…/sites/ITServices** value that appears in the URL column for this site.
1. A new tab will open in your Edge browser that displays the **IT Services** site. In the upper right-hand corner of the **IT Services** site, select the **gear (Settings)** icon.
1. In the **Settings** pane that appears, select **Site permissions.**
1. At the bottom of the **Site permissions** pane, select **Advanced permissions settings**, which opens a **Permissions: IT Services** page.
1. In the ribbon that appears at the top of the screen, the **PERMISSIONS** tab is displayed by default. Under the **Manage** section, select **Permission Levels.**
1. In the **Permissions \> Permission Levels** page, on the menu bar that appears above the list of permission levels, select **Add a Permission Level**.
1. In the **Permission Levels** \> **Add a Permission Level** page, enter the following information:

    - Name: **Restricted Use**
    - Description: **This level restricts the level of use inside the IT Services site.**
    - When selecting the permissions, do NOT select the **Select All** Instead, select the following limited set of permissions under the **List Permissions** section:

        - **Manage lists** (which selects **View Items**)
        - **Add items**
        - **Edit items**
        - **View versions** (which selects **Open Items**)
        - **View Application Pages**

    - Select the following permissions under the **Site Permissions** section:

        - **Add and Customize Pages** (which selects **Browse Directories, View Pages**, and **Open**)
        - **Use Self-Service Site Creation** (which selects **Browse User information**)
        - **Use Remote interfaces**
        - **Use Client integration features**

1. Scroll to the bottom of the page and select the **Create** button to create the new **Restricted Use** permission level.
1. Once the permission level is created you will be redirected to the **Permissions** \> **Permission Levels** page. Verify the new **Restricted Use** permission level appears in the list of permission levels for this IT Services site.

    On this **Permissions** \> **Permission Levels** heading line, select the **Permissions** link to return to the **Permissions: IT Services** page.
1. In the ribbon displayed at the top of the screen, the **PERMISSIONS** tab is displayed by default. In this tab, under the **Grant** section, select **Create Group**.
1. On the **People and Groups \> Create Group** page, enter the following information:
      - Name: **Consultants**
      - About Me: **This group is used for allowing consultants to modify work products only**.
      - Who can view the Membership of the Group: **Everyone**
      - Who can edit the membership of the Group: **Group Owner**
      - Allow requests to Join/leave this group: **No**
      - Auto-accept requests: **No**
      - Choose the permission level group members get on this site: **Restricted use – This level restricts the level of use inside the IT Services site**

        **Note:** This setting includes the **Designer** permission level that you created in the prior lab and the **Restricted Use** permission level that you just created in this task. You will only assign this group the **Restricted Use** permission level.
1. Select **Create**. You will be redirected to the **People and Groups** \> **Consultants** page for this **Consultants** group.
1. On the menu bar that appears above the list of consultants, select the drop-down arrow next to **New**. In the menu that appears, select **Add Users.**
1. In the **Share ‘IT Services’** window that appears, in the **Enter names or email addresses** field, enter your fellow student’s tenant admin account, which will be **admin@xxxxxZZZZZZ.onmicrosoft.com** (**IMPORTANT:** replace xxxxxZZZZZZ with your fellow student’s tenant prefix that was assigned to you by your instructor; do **NOT** use your tenant prefix).

    This same address will be displayed below the field in a menu. Select this address.

    **Note:** A message should appear below this field that says: **admin@xxxxxZZZZZZ.onmicrosoft.com is outside of your organization.**
1. Select **SHOW OPTIONS.** Note that the **Send an email invitation** option is selected by default. Leave this option selected.
1. Select **Share**.
1. Because you selected the option to **Send an email invitation**, your fellow student will receive an email invitation in his or her MOD Administrator’s Inbox. To verify this email was received, you must open an InPrivate browsing session to impersonate your fellow student’s tenant. This enables you to access your fellow student’s MOD Administrator account within the student’s tenant, and therefore access this MOD Administrator’s Outlook Inbox.

    On your taskbar, right-click on the **Microsoft Edge** icon and select **New InPrivate window** in the menu that appears.
1. This opens an InPrivate browsing session. Maximize the InPrivate browser window, and then enter the following URL in the address bar: **<https://outlook.office365.com/mail/inbox>**
1. In the **Sign in** window, enter your fellow student’s MOD Administrator email address of **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is your fellow student’s tenant prefix that was assigned to you by your instructor). In the **Enter password** window, enter your fellow student's tenant email password and select **Sign in**.
1. In the **Stay signed in?** dialog box, select **Yes**.
1. This will open your fellow student’s MOD Administrator’s Inbox in Outlook. In the Inbox you should see an email from **no-reply@sharepointonline.com.** Open the email.
1. In the email, it will display **Go To** **IT Services**. The **IT Services** portion of this message is hyperlinked. Select **IT Services**.
1. A new tab will open in your InPrivate browsing session that displays **Welcome to SharePoint Online.** On this webpage, select **Organizational account.**
1. This will open the **IT Services** site that you created in your tenant. In other words, by using an InPrivate browsing session, you are impersonating your fellow student by being signed into his or her tenant, and from your fellow student’s browser (i.e. in the InPrivate browsing session), you are accessing the **IT Services** site that Holly created in Adatum’s Microsoft 365 tenant.
1. On the **IT Services** site, in the left-hand navigation pane, select **Documents**.
1. On the **Documents** page, select **+New** on the menu bar. In the drop-down menu that appears, you should see all the objects the IT Consultant can create in this site.
1. Select the X in the upper right corner of the screen to close the InPrivate Browsing session in Microsoft Edge.
1. Close the Microsoft Outlook mail message that you opened earlier.
1. This will return you to the **People and Groups \> Consultants** site in your normal Edge browser session. If your fellow student's MOD Administrator account does not appear in the list of consultants, select the **Refresh** icon on the left-side of the address bar at the top of the page to refresh the list. Your fellow student's **MOD Administrator** account should now appear.
1. Leave the browser open and proceed to the next task.

### Task 2 - Upload existing ticket request data (**IT Consultant steps**)

In this task, **you will take on the persona of the IT consultant** who is helping Holly Dickson implement a new service request ticketing system. In your role as the IT consultant, you are concerned that during this transition from Adatum’s old ticketing system to the new one, Adatum may lose critical historical data, such as ticket volume and monthly activity. Therefore, you have recommended to Holly that you should upload the existing data from Adatum’s old service request ticketing system to the new ticketing system.

To facilitate this process, the existing ticketing data has been captured in a spreadsheet and a backup spreadsheet, and your lab service provider has stored these two spreadsheets on LON-CL1.

As the IT Consultant in this task, you will perform two primary steps:

- You will connect to Adatum’s IT Services team site to validate that you can access the site and authenticate your credentials.
- You will export the existing ticket data from the spreadsheet on LON-CL1 and upload it to a SharePoint list in the IT Services site that Adatum (Holly) created in the prior task. When the data is uploaded to the IT Services site, it will be uploaded as a SharePoint list (titled “Service Desk Requests”) on the site.

    **IMPORTANT:** There are two ways in which you can export the data from the spreadsheet and upload it to the SharePoint list on the IT Services site: through commands in the Excel spreadsheet, or by running a PowerShell script. Both options are presented in this task and you are free to choose whichever method you prefer. Using the Excel spreadsheet commands is probably the more common method, but for those of you who prefer to work in PowerShell, using the PowerShell script provides another experience to add to your personal repository of PowerShell tools.

**CAUTION:** In this task, whenever you access the URL of the IT Services site, you will use ***your*** tenant prefix (xxxxxZZZZZZ) in the URL (**<https://xxxxxZZZZZZ.sharepoint.com/sites/ITServices>**), since you created the site in your Adatum tenant in the prior task. When you access this site in your role as the IT Consultant, you will sign in using your fellow student's tenant admin username and password (which represents the IT Consultant); the username will be **admin@xxxxxZZZZZZ.onmicrosoft.com**, where the tenant prefix (xxxxxZZZZZZ) will be ***your fellow student’s*** tenant prefix that was assigned to you by your instructor.

1. On **LON-CL1**, you should still be logged in as the **Administrator** (Adatum\\Administrator) from the earlier lab in which you installed Microsoft 365 Apps for enterprise.
1. Select the **File Explorer** icon that is located on the taskbar at the bottom of the screen.
1. Maximize the **File Explorer** window, and then select the **Documents**.
1. If you will recall from the task description, you will be presented with two options for completing this task: through commands in the Excel spreadsheet, or by running a PowerShell script.
      - If you prefer to use Excel to accomplish this task, then proceed to **step 6**.
      - If you prefer to use PowerShell, then proceed to **step 25**.
1. **START HERE TO PERFORM THIS TASK USING EXCEL.**

    Since you are at this step, you have chosen to use Excel to export the table data into a SharePoint list in the IT Services site.

    Open **File Explorer** and under **This PC**, select **Documents** (this provides a shortcut that points to the actual path of C:\\Users\\Administrator.ADATUM\\Documents). Confirm the **Service Request System.xlsx** and **BackupFile.xlsx** files are present in the Documents folder. The **Service Request System** spreadsheet contains copies of the service request tickets from Adatum’s old ticketing system. The **Backup File** spreadsheet, which is simply a copy of the Service Request System file, was created for precautionary purposes (it will come into play in the next task). Note that there are two files with the name **Service Request System**; one is an Excel spreadsheet file with a .xlsx extension, and the other is a comma separated value file with a .csv extension. The Excel spreadsheet file is used in this section, whereas students that chose to use PowerShell will use the .csv file.

    Double-click the **Service Request System.xlsx** file to open it. Make sure you open the .xlsx file and not the .csv file.
1. If a **Sign in to set up Office** window appears, sign in using the tenant admin account (admin@xxxxxZZZZZZ.onmicrosoft.com, where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and tenant admin password.
1. If an **Accept the license agreement** window appears, select the **Accept** button.
1. If a **Your privacy option** window appears, select the **Close** button at the bottom of the window.
1. In the next several steps, you will verify that in your role as the IT Consultant, you can connect to the IT Services site and that you can authenticate access to the site using your tenant admin’s credentials. Even though you will use the Excel command to **Get Data** from another source and import it into your spreadsheet, you will actually NOT being doing that since you already have the data in the spreadsheet. You will simply use this **Get Data** command to verify that you can successfully access the IT Services site from your PC.

    In **Excel,** in the menu bar at the top of the screen, select **Data**.
1. In the ribbon, under the **Get and Transform Data** section, select the **Get Data** drop-down arrow. In the menu that appears, select **From Online Services**, and then in its menu, select **From SharePoint Online list**.
1. A new **SharePoint Online lists** window will open. In the **Site URL** field, enter **<https://xxxxxZZZZZZ.sharepoint.com/sites/ITServices>** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider, since the IT Services site is on your tenant).

    **Note:** Before you select **OK**, copy the site URL that you just entered as you will need to enter this in future steps. Copying it now will save you from having to manually enter it later.

    Select **OK**.
1. If a dialog box appears that allows you to select the type of authentication you want to use to access the IT Services site, it will display three options in the left-hand pane: Anonymous, Windows, and Microsoft account. Anonymous is displayed by default. However, in this case, select **Microsoft account**.

    The dialog box displays a message indicating **You aren’t signed in**. Select the **Sign in** button.

    On the **Pick an account** window, select **Use another account** because you want to sign in as the IT Consultant's tenant admin account (**admin@xxxxxZZZZZZ.onmicrosoft.com** where xxxxxZZZZZZ is **your fellow student’s tenant prefix that was assigned to you by your instructor**). In the **Enter password** window, enter your fellow student's tenant password and then select **Sign in**. If your sign in is successful, a message will be displayed in the window indicating you are signed in.

    Once you are signed in, select **Connect**.
1. When the **Navigator** window appears, this is your indication that you have established a connection between the IT Consultant’s external user account and Adatum’s IT Services site that Holly created in the prior task. Even though you used the **Get Data** command in Excel to do this, you will NOT import any data locally to the Excel spreadsheet (the data is already in the spreadsheet).

    Select **Cancel** to close the **Navigator** window.
1. Now that you have verified that the IT Consultant's external user account can access the IT Services site, you will export Adatum’s existing ticketing system data from the spreadsheet and upload it as a SharePoint list into the IT Services site.

    If you are already familiar with the use of table objects in Excel, **select a cell in the table and proceed to the next step.**

    However, if you are not that familiar working with tables in Excel, note how the final two menu bar options are **View** and **Help**. You are now going to select the table in the spreadsheet, and after doing so, you will note the changes to the menu bar.

    Before you can export an Excel table into a SharePoint list, the stationary list of data must be inserted into an Excel table object. This has already been done for you as the data in the spreadsheet has already been inserted into an Excel table object. All you must do now is select the table, which can be done by simply selecting any cell of data (for example, select cell **C3**).

    Because you have now selected the Excel table, note how the new menu bar option titled **Table Design** appears after **Help**.

    **Note:** If you select a cell outside of the table, note how the **Table Design** menu bar option disappears. If you once again select a cell inside the table, note how it reappears.
1. On the menu bar, select **Table Design**.
1. In the ribbon, under the **External Table Data** section, select the **Export** drop-down arrow. In the menu that appears, select **Export Table to SharePoint List**.
1. An **Export Table to SharePoint List – Step 1 of 2** window will appear. Enter the following information:
      - **Address:** If you copied the IT Services site URL from the earlier step, then paste that in now; otherwise, enter **<https://xxxxxZZZZZZ.sharepoint.com/sites/ITservices>** (where xxxxxZZZZZZ is **your tenant prefix** provided by your lab hosting provider).

        **Important:** By default, the Address field is prefilled with “http://”. If you manually enter the URL, you must change this to “https://”; otherwise, your connection to the IT Services site will fail.
      - **Name:** This is the name of the new distribution list that will be created in this site. For Adatum's new ticketing system, enter **Service Desk Requests**.
      - **Description:** (optional) – leave blank
1. Select **Next**.
1. An **Export Table to SharePoint List – Step 2 of 2** window will appear. Review the information and then select **Finish**.
1. A **Microsoft SharePoint Foundation** dialog box will appear that indicates the table was successfully published.

    **Important:** Do NOT select OK; instead, select the **link** to the site in which the table was published. This will take you to the IT Services site where it will display a list showing the data that was exported from the spreadsheet and uploaded into the site.

    **Note:** If a **Sign in** window appears, enter the MOD Administrator’s account for the IT Consultant’s tenant. In this case, enter **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is your fellow student's tenant prefix that was assigned to you by your instructor). Select **Next**, and then in the **Enter password** window, enter your fellow student's tenant password and then select **Sign in**.
1. On the taskbar at the bottom of the screen, select the **Excel** icon. In the **Microsoft SharePoint Foundation** dialog box that displayed the link to the published list in the IT Services site, select **OK** to close the window.
1. Close Excel.
1. Close your Edge browser.

    **Important:** This completes the steps involved in using Excel to export the table data into a SharePoint list (Service Desk Requests) in the IT Services site. **You should SKIP the remaining steps in this task and proceed to the next task.**

1. **START HERE TO PERFORM THIS TASK USING POWERSHELL.**

    Since you are at this step, you have chosen to use Windows PowerShell to export the table data into a SharePoint list in the IT Services site rather than using Excel to accomplish this task.

    Open **File Explorer** and under **This PC**, select **Documents** (this provides a shortcut that points to the actual path of C:\\Users\\Administrator.ADATUM\\Documents). Confirm the **Service Request System.csv** file is present in the Documents folder. This file contains copies of the service request tickets from Adatum’s old ticketing system. Note that there are two files with the name **Service Request System**; one is this comma separated value file with a .csv extension, and the other is an Excel spreadsheet file with a .xlsx extension. The .csv file is used in this section, whereas students that chose to use Excel to complete this task will use the .xlsx file. The **Backupfile.xlsx** spreadsheet, which is simply a copy of the Service Request System.xlsx file, was created for precautionary purposes (it will come into play in the next task).

    Confirm the **ImportCsvToSharepointList.ps1** script is also present in the **Documents** folder. This script contains the PowerShell commands you will run to export the table data from the **Service Request System.csv** file and import it into a SharePoint list in the IT Services site.
1. In the **Search** field on the taskbar at the bottom of the desktop, enter **PowerShell**.

    **Important:** Because you MUST run several of the commands within this script individually rather than running the entire script at once, you should select **Windows PowerShell ISE** (not Windows PowerShell); therefore, right-click on **Windows PowerShell ISE** and select **Run as administrator**.
1. If a **User Account Control** dialog box appears, select **Yes** to allow this app to make changes to your device.
1. In **Windows PowerShell ISE**, in the menu bar, select **File** and then select **Open**. In the **File Explorer** window, navigate to **This PC** and then to the **Documents** folder. Select the **ImportCsvFileToSharepointList.ps1** script and then select **Open**.
1. In the script, you will run the commands in lines **11-13** together; therefore, select these three lines in the script and then select the **Run Selection (F8)** icon on the menu bar. These lines will set your execution policy as Remote Signed and install both the SharePoint Online module as well as the SharePoint PNP module. The PNP module enables you to remotely sign into your SharePoint Online environment and manage your SharePoint lists.
1. If you are prompted to confirm an **Execution Policy Change**, select **Yes to All.**
1. If you are prompted to confirm a **NuGet provider is required to continue**, select **Yes**.
1. If you are prompted to confirm an **Untrusted repository**, select **Yes to All.**
1. If you are prompted a second time to confirm an **Untrusted repository** dialog box, select **Yes to All.**
1. At the command prompt, you will run the commands in lines **20-21** together; therefore, select these two lines in the script and then select the **Run Selection (F8)** icon on the menu bar.
1. In the **Windows PowerShell credential request** dialog box that appears, enter **admin@xxxxxZZZZZZ.onmicrosoft.com** in the **User name** field (where xxxxxZZZZZZ is the tenant prefix ***from your fellow student*** that was assigned to you by your instructor); this is the IT Consultant’s MOD Administrator (tenant admin) account.

    **Note:** Copy the value (Ctrl+C) that you entered in the **User name** field as you will have to enter it again in a couple of steps. By copying the value here, you can simply paste it in later on rather than re-entering it.

    Enter your fellow student's tenant admin password in the **Password** field, and then select **OK**.
1. On line **32** in the script, you MUST update the URL before you can run this command. In the URL, you must replace the xxxxxZZZZZZ with ***your tenant ID*** provided by your lab hosting provider (this is your Adatum tenant where the IT Services site was created earlier by Holly).
1. At the command prompt, you will run the command in line **32** by itself; therefore, select this line in the script and then select the **Run Selection (F8)** icon on the menu bar.
1. In the **Enter your credentials** dialog box, paste into the **User name** field the value that you copied in the earlier step. If you did not copy the User name value, then enter in the **User name** field **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix ***from your fellow student*** that was assigned to you by your instructor); this is the IT Consultant’s MOD Administrator (tenant admin) account.

    Enter your fellow student's tenant admin password in the **Password** field, and then select **OK**.
1. The commands in lines 41-51 in the script MUST be run individually. If you select all six commands and run them all together at one time, the commands will fail.

    Therefore, at the command prompt, select line **41** in the script and then select the **Run Selection (F8)** icon on the menu bar. **Note:** This command in row 41 creates a new column in the distribution list that does not exist in the Excel spreadsheet. For each record imported from the spreadsheet into this distribution list, the value of this column will be blank. The reason you must run this command is that this specific column is required to successfully import the data and create the distribution list using PowerShell. That being said, when you create new filtered views later on in Task 4, you will ignore this column and not include it in any of the views you create.

    Then select line **43** in the script and select the **Run Selection (F8)** icon on the menu bar.

    Repeat this process for the commands in lines **45, 47, 49,** and **51**.
1. At the command prompt, you will run the command in line **60** by itself; therefore, select this line in the script and then select the **Run Selection (F8)** icon on the menu bar.

    **Note:** This command displays the list of sites in the IT Services site. Verify the Service Desk Requests list appears in this list.
1. At the command prompt, you will run the command in line **66** by itself; therefore, select this line in the script and then select the **Run Selection (F8)** icon on the menu bar. This command displays all the records in the .csv file that were imported into the terminal.
1. In the script, lines **73-79** represent one command; therefore, all these lines must be selected together and run as one selection.

    At the command prompt, select lines **73-79** in the script and then select the **Run Selection (F8)** icon on the menu bar. This command will display a summary each of the rows that were imported from the .csv file.
1. At the command prompt, you have finished running the commands in this script. Close Windows PowerShell.
1. Open your Edge browser and enter the following URL in the address bar to navigate to the **IT Services** site: **<https://xxxxxZZZZZZ.sharepoint.com/sites/ITServices>** (where xxxxxZZZZZZ is ***your tenant prefix*** provided by your lab hosting provider).
1. In the **IT Services** site, in the left-hand pane, select **Site contents**. In the list of Site contents, select the **Service Desk Requests** item.
1. This displays the **Service Desk Requests** list. Review the 30 items in the list, which should match the 30 items in the .csv file.
1. Close Windows PowerShell.
1. Close your Edge browser and proceed to the next task.

### Task 3 - Add Additional Columns to the SharePoint list

In this task you will return to your role as Holly Dickson. You have just been informed by the IT Consultant that he or she finished exporting the existing ticketing system data and uploaded it to the new SharePoint site. However, as you reviewed the list of data that was imported into the Service Desk Requests list, you noticed that the **Customer** field and the **Assign to** fields were missing. The **Customer** field is the name of the person who entered the ticket, and the **Assign to** field is the name of the support engineer to whom the ticket was assigned. This is critical data for a service request system, so it is imperative that you add this information to the **Service Desk Requests** list.

1. On LON-CL1 you should have closed the Edge browser at the end of the prior task. If not, then do so now.
1. Since Holly will be using her PC to perform this task, you will use LON-CL1 in this role-playing exercise as Holly’s PC rather than the IT Consultant's PC as you did in the prior task.

    Select the **Microsoft Edge** icon on the taskbar to open your browser, and then enter the following URL in the address bar: **<https://portal.office.com>**.
1. In the **Pick an account** window, select Holly’s account if it appears; otherwise, select **Use another account** and then enter **holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix assigned to you by your lab hosting provider). In the **Enter password** window, enter **Pa55w.rd** and select **Sign in**.
1. After reviewing the data that was imported into the Service Desk Requests list, you noticed that the **Customer** field and the **Assign to** fields were missing. However, after reviewing the spreadsheet, you realized the missing data wasn’t an upload issue because the **Customer** and **Assign To** columns were missing from the spreadsheet.

    While you cannot explain what caused this, you remember making a backup of the original spreadsheet. If these missing columns are in your backup file, you plan to add the two columns from your backup file to the **Service Desk Requests** list that is displayed in the IT Services site.

    Select the **File Explorer** icon on the taskbar to return to the **Documents** folder that you opened in the prior task. Double-click on the **Backupfile.xlsx** file to open it.
1. Review the columns in the table and verify the **Assign to** and **Customer** columns appear. Since you have just verified that this data was captured in your backup file, you can proceed with adding these columns to the **Service Desk Requests** list.
1. In your Edge browser, in the **Office 365 home** page, select the **SharePoint** icon in the column of Microsoft 365 app icons on the left-side of the screen.

    If a **Pick an account** window appears, select Holly's account.
1. A **News from sites** window appears over top of the SharePoint admin center. Close this window.
1. On the **SharePoint admin center**, in the left-hand navigation pane, scroll down and under the **Recent** group, select **IT Services**.
1. On the **IT Services** site, near the bottom of the left-hand navigation pane, select the **X** above **Microsoft Teams** to hide this banner, and in the **Hide** dialog box, select **Yes** to confirm it.

    In the left-hand navigation pane, select **Site Contents**, and in the **Contents** list, select **Service Desk Requests**. You want to create a new column to display the **Customer** data that you will import from the **Backupfile.xlsx** spreadsheet.
1. On the menu bar at the top of the page, the option to the right of the **+New** button will either display **Edit in grid view** or **Exit grid view**. This option allows you to toggle in or out of grid view. You do NOT want to be in grid view to edit the list.

    If this option displays **Edit in grid view**, it means you are not in grid view, so proceed to the next step.

    If this option displays **Exit grid view**, then you are currently in grid view, which you do not want to be in. In this case, select **Exit grid view**.
1. At the end of the column heading row, select **+Add column**, and then in the drop-down menu that appears, select **Person**.
1. In the **Create a column** window that appears, enter **Customer** in the **Name** field.
1. In the **Type** field, verify it's already set to **Person or Group**.
1. Verify the **Allow selection of Groups** check box is NOT selected. Do NOT select this check box.
1. Select **More options**.
1. Select the **Require that this column contains information** toggle switch to change it to **Yes**.
1. Select **Save**.
1. The **Customer** column should appear in the list. All record entries for this column should be highlighted in yellow and **Required info** should appear in this column for each record (this is because you set the **Require that this column contains information** option to **Yes** in the previous step when you created this column).
1. Earlier, you were instructed to not be in grid view to add the Customer column. However, now that you have added the column, you must switch to grid view to copy and paste in the Column data from the Backupfile.xlsx spreadsheet.

    On the menu bar, select **Edit in grid view**. In the next few steps, you will copy the Customer data from the **BackupCopy** spreadsheet and paste it into this column in the SharePoint list.
1. Select the **Excel** spreadsheet icon on the taskbar to display the **BackupFile.xlsx** spreadsheet. Select all the items in the **Customer** column (start in row 2 so that you do not copy the column header), then right-click and select **Copy** from the menu (NOTE: Use the Copy option here instead of **Ctrl+C** to copy the column data; Ctrl+C sometimes results in an error when you attempt to paste in the copied cells in the next step).

    **Note:** If a window appears showing the progress of the Copy command, do NOT proceed until the pane disappears. This may take a minute or so for the copy process to complete. If a progress window does not appear, then proceed to the next step.
1. Select the **Edge** browser icon on the taskbar, which should return you to the grid view page for the **Service Desk Requests** list. Select all the empty fields in the **Customer** column and press **Ctrl+V**. All items will automatically appear in the appropriate row for the **Customer** column.
1. Select the **Exit grid view** option on the menu bar to see how the Customer data appears in normal display view.
1. Repeat steps **11-22** to add a column for the **Assign To** data and to copy the **Assign to** data from the **BackupFile.xlsx** spreadsheet and paste it into the **Service Desk Requests** list.
1. After reviewing the changes to the **Service Desk Requests** list, you realize that the data type of the **Description** column only supports a **single line of text**. While this is fine for the existing data, going forward you want your customer support engineers to be able to enter more detailed information. Therefore, you want to modify this column to change the data type to **multiple lines of text**.

    To make this change, select the **Description** column heading. In the menu that appears, select **Column Settings**, and then in the sub-menu, select **Edit**.
1. In the **Edit column** window, select the drop-down arrow in the **Type** field and select **Multiple lines of text**.
1. Select **More options**.
1. Change the **Require that this column contains information** option to **Yes**.
1. Select **Save**.
1. Leave the browser and all existing tabs open on LON-CL1 for the next task.

### Task 4 - Create filtered views for targeted viewing

In this task, you will continue in your role as Holly Dickson, Adatum’s Enterprise Administrator. You were just informed by your IT Consultant that while the default **All items** view in the **Service Desk Requests** list will display all the existing service tickets, this will not help the Customer Support Manager when she wants to focus on specific groups of cases. To address this issue, the IT Consultant has recommended that you create the following new filtered views to provide this visibility:

- Active cases by Support Agent
- Closed cases by Support Agent
- All Cases by Support Agent
- All Cases by Customer

1. You should still be signed into LON-CL1 as the **Administrator**, and you should be logged into Microsoft 365 as Holly Dickson. In your browser, you should still have the tab open from the prior task that displays the **Service Desk Requests** list. If not, then navigate to this list now.
1. You will begin by creating a view showing all active cases. On the **Service Desk Requests** page, select the **gear** (**Settings**) icon in the top right corner of the webpage. In the menu that appears, select **List settings.**
1. In the **Service Desk Requests \> Settings** page, scroll down to the bottom of the page and in the **Views** section, select **Create view.**
1. In the **Settings \> View Type** page, select **Standard view.**
1. In the **Settings \> Create View** page, enter the following information:
      - View Name: **Active Cases by Support Agent**
      - View Audience: **Create a Public View**
      - In the list of Columns, you must first uncheck all the columns currently selected. Then you MUST select the following columns **in the order they appear below**, which is in ascending **Position from left** sequence. If you select them as you progress from top to bottom in the list on the page, the system will automatically adjust the **Position from left** values to different values:
          - **Assign To** – Position from left: **1**
          - **Date** – Position from left: **2**
          - **Customer** – Position from left: **3**
          - **Location** – Position from left: **4**
          - **issueTitle** - Position from left: **5**
          - **Description** – Position from left: **6**
      - Sort section - First sort by the column: **Assign to** and **Show items in ascending order**
      - Then sort by the column: **Date** and **Show items in ascending order**
      - Filter section - **Show items only when the following is true**
      - Show the items when column section – select **Issue status** column
      - Operand field – **Is equal to**
      - Condition field – enter **Active**
1. Scroll to the bottom of the page and select **OK**.
1. You will now create a view showing all closed cases. On the **Service Desk Requests** page, select the **gear** (**Settings**) icon in the top right corner of the webpage. In the menu that appears, select **List settings.**
1. In the **Service Desk Requests \> Settings** page, scroll down to the **Views** section and select **Create view.**
1. In the **Settings \> View Type** page, select **Standard view.**
1. In the **Settings \> Create View** page, enter the following information:
      - View Name: **Closed Cases by Support Agent**
      - View Audience: **Create a Public View**
      - In the list of Columns, you must first uncheck all the columns currently selected. Then you MUST select the following columns **in the order they appear below**, which is in ascending **Position from left** sequence. If you select them as you progress from top to bottom in the list on the page, the system will automatically adjust the **Position from left** values to different values:
          - **Assign To** – Position from left: **1**
          - **Customer** – Position from left: **2**
          - **Location** – Position from left: **3**
          - **issueTitle** - Position from left: **4**
          - **Description** – Position from left: **5**
      - Sort section - First sort by the column: **Assign to** and **Show items in ascending order**
      - Filter section - **Show items only when the following is true**
      - Show the items when column section – select **Issue status** column
      - Operand field – **Is equal to**
      - Condition field – enter **Resolved**
1. Scroll to the bottom of the page and select **OK**.
1. You will now create a view showing all cases for each support agent. On the **Service Desk Requests** page, select the **gear** (**Settings**) icon in the top right corner of the webpage. In the menu that appears, select **List settings.**
1. In the **Service Desk Requests \> Settings** page, scroll down to the **Views** section and select **Create view.**
1. In the **Settings \> View Type** page, select **Standard view.**
1. In the **Settings \> Create View** page, enter the following information:
      - View Name: **All Cases by Support Agent**
      - View Audience: **Create a Public View**
      - In the list of Columns, you must first uncheck all the columns currently selected. Then you MUST select the following columns **in the order they appear below**, which is in ascending **Position from left** sequence. If you select them as you progress from top to bottom in the list on the page, the system will automatically adjust the **Position from left** values to different values:
          - **Assign To** – Position from left: **1**
          - **Customer** – Position from left: **2**
          - **issueTitle** - Position from left: **3**
          - **Location** – Position from left: **4**
          - **Issue Status** – Position from left: **5**
          - **Description** – Position from left: **6**
      - Sort section - First sort by the column: **Assign to** and **Show items in ascending order**
      - Then sort by the column: **Customer** and **Show items in ascending order**
      - Filter section - **Show all items in this view**
1. Scroll to the bottom of the page and select **OK**.
1. You will finish this task by creating a view showing all cases for each customer. On the **Service Desk Requests** page, select the **gear** (**Settings**) icon in the top right corner of the webpage. In the menu that appears, select **List settings.**
1. In the **Service Desk Requests \> Settings** page, scroll down to the **Views** section and select **Create view.**
1. In the **Settings \> View Type** page, select **Standard view.**
1. In the **Settings \> Create View** page, enter the following information:
      - View Name: **All Cases by Customer**
      - View Audience: **Create a Public View**
      - In the list of Columns, you must first uncheck all the columns currently selected. Then you MUST select the following columns **in the order they appear below**, which is in ascending **Position from left** sequence. If you select them as you progress from top to bottom in the list on the page, the system will automatically adjust the **Position from left** values to different values:
          - **Customer** – Position from left: **1**
          - **Date** – Position from left: **2**
          - **Assign To** – Position from left: **3**
          - **issueTitle** - Position from left: **4**
          - **Location** – Position from left: **5**
          - **Issue Status** – Position from left: **6**
          - **Description** – Position from left: **7**
      - Sort section - First sort by the column: **Customer** and **Show items in ascending order**
      - Then sort by the column: **Date** and **Show items in ascending order**
      - Filter section - **Show all items in this view**
1. Scroll to the bottom of the page and select **OK**.
1. In your Edge browser, close all tabs EXCEPT for the **Microsoft Office Home** tab and the **Microsoft 365 admin center** tab.

**Congratulations! You have completed the building blocks for your new Service Desk Ticketing system. You will add additional functionality to the ticketing system in later labs.**

## Proceed to Lab 3 - Exercise 4
