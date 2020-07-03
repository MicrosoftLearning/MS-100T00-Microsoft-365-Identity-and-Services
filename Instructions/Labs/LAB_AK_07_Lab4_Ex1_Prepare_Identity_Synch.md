# Module 7 - Lab 4 - Exercise 1 - Prepare for Identity Synchronization  

As in the previous lab exercises you will take on the role of Holly Spencer, Adatum Corporation’s Enterprise Administrator. Adatum has recently subscribed to Microsoft 365, and you have been tasked with deploying the application in Adatum’s virtualized lab environment. In this lab, you will perform the tasks necessary to manage your Microsoft 365 identity environment using both the Microsoft 365 admin center and Windows PowerShell. 

During this exercise you will set up and manage Azure AD Connect. You will create on-premises users and validate the sync process so that their identity is moved to the cloud. Some of the steps may feel familiar from previous exercises; however, in this case they are needed to validate the synchronization process.

### Task 1: Configure your UPN suffix

In Active Directory, the default User Principal Name (UPN) suffix is the DNS name of the domain where the user account was created. The Azure AD Connect wizard uses the UserPrincipalName attribute, or it lets you specify the on-premises attribute (in a custom installation) to be used as the user principal name in Azure AD. This is the value that is used for signing into Azure AD. 

If you recall, your VM environment was created by your lab hosting provider with an on-premises domain titled **adatum.com**. This domain included a number of on-premises user accounts, such as Holly Spencer, Laura Atkins, and so on. Then in the first lab in this course, you created a custom, accepted domain for Adatum titled **XXYYZZa.xxxCustomDomainxxx.xxx** (where XXYYZZa was the unique UPN name assigned to your tenant, and xxxCustomDomainxxx.xxx was the name of your lab hosting provider's custom domain).

In this task, you will use PowerShell to change the user principal name of the domain for the entire Adatum Corporation by replacing the originally established **adatum.com** domain with the custom **XXYYZZa.xxxCustomDomainxxx.xxx** domain. In doing so, you will update the UPN suffix for the primary domain and the UPN on every on-premises user account in AD DS with **@XXYYZZa.xxxCustomDomainxxx.xxx**. 

A company may change its domain name for a variety of reasons. For example, a company may purchase a new domain name, or a company may change its name and it wants its domain name to reflect the new company name, or a company may be sold and it wants its domain name to reflect the new parent company’s name. Regardless of the underlying reason, the goal of changing a domain name is typically to change the domain name on each user’s email address. 

For this lab, Adatum has purchased a new domain (provided by your lab hosting provider); therefore, it wants to change the domain name of all its users’ email addresses from @adatum.com to @ XXYYZZa.xxxCustomDomainxxx.xxx.

1. On your Domain Controller VM (LON-DC1), make sure you’re logged in as **ADATUM\Administrator** and password **Pa55w.rd**. 

2. If **Windows PowerShell** is still open, then select the **PowerShell** icon on your taskbar; otherwise, you must open **Windows PowerShell** by selecting the magnifying glass (**Search**) icon on the taskbar, typing **powershell** in the Search box that appears,  right-clicking on **Windows PowerShell**, and selecting **Run as administrator** in the drop-down menu. 

3. Using **Windows PowerShell**, you must replace the on-premises **adatum.com** domain with the **XXYYZZa.xxxCustomDomainxxx.xxx** domain (where you will replace XXYYZZa with the unique UPN name assigned to your tenant, and you will replace xxxCustomDomainxxx.xxx with your lab hosting provider's custom domain). In doing so, you will update the UPN suffix for the primary domain and the UPN on every user in AD DS with **@XXYYZZa.xxxCustomDomainxxx.xxx**. <br/> 

	‎In the following Powershell command, the **Set-ADForest** cmdlet modifies the properties of an Active Directory forest, and the **-identity** parameter specifies the Active Directory forest to modify. To perform this task, run the following command to set the **UPNSuffixes** property for the **adatum.com** forest (remember to change XXYYZZa to your unique UPN name and xxxCustomDomainxxx.xxx to your lab hosting provider's custom domain name):<br/>
	
	‎**Set-ADForest -identity adatum.com -UPNSuffixes @{replace="XXYYZZa.xxxCustomDomainxxx.xxx"}**

4. You must then run the following command that changes all existing adatum.com accounts to the new UPN @XXYYZZa.xxxCustomDomainxxx.xxx domain (remember to change XXYYZZa to your unique UPN name and xxxCustomDomainxxx.xxx to your lab hosting provider's custom domain name): <br/>

	‎**Get-ADUser -Filter * -Properties SamAccountName | ForEach-Object { Set-ADUser $_  -UserPrincipalName ($_.SamAccountName + "@XXYYZZa.xxxCustomDomainxxx.xxx" )}**

5. You will continue using PowerShell on your Domain Controller VM in the next task.


### Task 2: Prepare problem user accounts   

Integrating your on-premises Active Directory with Azure AD makes your users more productive by providing a common identity for accessing both cloud and on-premises resources. However, errors can occur when identity data is synchronized from Windows Server Active Directory (AD DS) to Azure Active Directory (Azure AD). 

For example, two or more objects may have the same value for the **ProxyAddresses** attribute or the **UserPrincipalName** attribute in on-premises Active Directory. There are a multitude of different conditions that may result in synchronization errors. Organizations can correct these errors by running Microsoft's IdFix tool, which performs discovery and remediation of identity objects and their attributes in an on-premises Active Directory environment in preparation for migration to Azure Active Directory. 

In this task, you will run a script that breaks various Adatum on-premises user accounts. As part of your Adatum pilot project, you are purposely breaking these identity objects so that you can run the IdFix tool in the next task to see how it fixes the broken accounts. 

1. On your Domain Controller VM (LON-DC1), in the Windows PowerShell window, run the following command to change the root source to **C:\labfiles** so that you can access any files from that location: <br/>

	‎<strong>CD C:\labfiles\ </strong>

2. PowerShell's execution policy settings dictate which PowerShell scripts can be run on a Windows system. Setting this policy to **Unrestricted** enables Holly to load all configuration files and run all scripts. At the command prompt, type the following command, and then press Enter:   <br/>

	‎**Set-ExecutionPolicy Unrestricted**

3. You will then be prompted to confirm the execution policy change. Type **A** and press Enter to select the **[A] Yes to All** option.

4. Enter the following command that runs a PowerShell script that creates problem user accounts. This script is stored in the C:\labfiles folder. The users that are included in this script purposely have issues with their user accounts; this will enable you to troubleshoot these accounts in the next task using the IdFix tool.  <br/>

	‎<strong>.\CreateProblemUsers.ps1 </strong> <br/>
	
	**Note:** Wait until the script has completed before proceeding to the next task. This Windows PowerShell script will make the following changes in AD DS:

	- **Klemen Sic**. Update the UserPrincipalName for Klemen to include an extra "@" character. 

	- **Lara Raisic**. Update the emailAddress attribute for Lara to **lara@adatum.com**. 

	- **Logan Boyle**. Update the emailAddress attribute for Logan to **logan@adatum.com**.

	- **Holly Spencer**. Update the emailAddress attribute for Holly to **holly @adatum.com**. Note: this includes a blank space between “holly” and “@adatum.com”; the blank space has been purposely inserted.

	- **Maj Hojski**. Update the emailAddress attribute for Maj to blank characters (“ “).  

5. Close PowerShell.


### Task 3: Run the IdFix tool and fix identified issues 

In this task you will download and use the IdFix tool to fix the user accounts that were broken in the previous task. Running the IdFix tool will correct any user account errors prior to synchronizing identity data between your on-premises environment and Azure AD.

1. Switch to the Client 1 VM (LON-CL1). You should still be logged in as **Administrator** from the prior lab. If necessary, log in as the **Administrator** account with a password of **Pa55w.rd**.

2. In **Microsoft Edge**, enter the following URL in the address bar to access the Microsoft Download Center page for the IdFix Directory Synchronization Error Remediation Tool: <br/>

	<strong>https://www.microsoft.com/en-us/download/details.aspx?id=36832 </strong>

3. Scroll down on the **Download Center** page to the **IdFix Directory Synchronization Error Remediation Tool** section and select the **Download** button. 

4. In the notification bar that appears at the bottom of the page, select **Save**.

5. Wait for **IdFix.zip** to finish downloading, and then in the notification bar, select **Open**. 

6. In the **File Explorer** window that appears, it should already be displaying the **Downloads** folder (if not, select the Downloads folder). Right-click **IdFix.zip** and select **Extract All...**  <br/>

	‎**Note:** When you selected **Open** in the prior step, it may automatically extract all files and take you to the next step. If it doesn't, then select the **Extract All...** menu option. 

7. In the **Select a Destination and Extract Files** dialog box, in the **Files will be extracted to this folder** field, type **C:\Deployment Tools\IdFix**, and then select **Extract**. 

8. In **File Explorer**, it should display the **C:\Deployment Tools\IdFix** folder. Right-click **IdFix.exe**, and then select **Run as administrator**. 

9. If a dialog box appears asking **Do you want to allow this app from an unknown publisher to make changes to your device?**, select **Yes**.

10. In the **IdFix Privacy Statement** message box, select **OK**. 

11. In the **IdFix** window that appears, on the menu bar at the very top of the screen, select **Query** to query the directory. After a short wait, you should see several errors. <br/>

	**Note:** If a dialog box appears indicating an unhandled exception has occurred, select **Continue**. 

12. Select the **ERROR** column heading to sort the records by error in alphabetical error; in doing so, the **character** errors will appear at the top of the list.   <br/>

	‎**Note:** If any **topleveldomain** errors appear, then ignore them as they cannot be fixed by the IdFix tool.  

13. In the **Holly Spencer** row, select the drop-down arrow in the **ACTION** field and select **EDIT**. 

14. In the **Maj Hojski** row, select the drop-down arrow in the **ACTION** field and select **EDIT**. 

15. In the **Klemen Sic** row, select the drop-down arrow in the **ACTION** field and select **EDIT**. 

16. On the menu bar at the top of the window, select **Apply**. 

17. In the **Apply Pending** dialog box that appears, select **Yes**. <br/>

	‎**Note:** Notice that the value in the **Action** column changed from **EDIT** to **COMPLETE** for these three users; this indicates that IdFix updated the three user objects and corrected the errors. 

18. Select the **File Explorer** icon on the taskbar. 

19. In the **C:\Deployment Tools\IdFix** folder, double-click the **Verbose {date} {time}.txt** file to open **Notepad** and view the updated transactions in the transaction log. Maximize the **Notepad** window and locate the three **Update** transactions that appear at the bottom of the file; these transactions reflect the updates you just initiated. When you have finished reviewing this log file, close Notepad. 

20. Select the **IdFix tool** icon on the taskbar. 

21. On the menu bar at the top of the window, select **Query** to refresh the query results. <br/>

	**Note:** If a dialog box appears indicating an unhandled exception has occurred, select **Continue**. 

22. In the query results, note how two of the three users who you just fixed no longer appear in the results (Holly and Klemen). The exception is **Maj Hoski**. When you originally broke Maj's account by running the script in the prior task, it replaced her email address with blank characters. Then when you flagged her account to be edited in the earlier step, the IdFix tool replaced the blank characters with Maj's name. Now you need to fix this value by replacing her name with her actual email address. <br/>

	Find the **Maj Hoski** row. Note how the **VALUE** for Maj is her name rather than her email address. To fix this email attribute for Maj, you must first select the **MajHojski** value in the **UPDATE** column and then replace it by typing **maj@adatum.com**. Then select the drop-down arrow in the **ACTION** field and select **EDIT**. 

23. Find the **Logan Boyle** row. Note how the **VALUE** for Logan was incorrectly entered as **Lara@adatum.com**, which resulted in a duplicate error because this is the same email address as Lara Raisic, which appears above it. <br/>

	To fix this email attribute for Logan, you must first select the **[E]Lara@adatum.com** value in the **UPDATE** column for Logan and then replace it by typing **logan@adatum.com**. Then select the drop-down arrow in the **ACTION** field and select **EDIT**. 

24. On the menu bar at the top of the window, select **Apply**. 

25. In the **Apply Pending** dialog box that appears, select **Yes**.  <br/>

	‎**Note:** This will update the two user objects and correct their UPN. 

26. On the menu bar, select **Query**. In the query results, note how the two users who you just fixed no longer appear in the results. <br/>

	**Note:** If a dialog box appears indicating an unhandled exception has occurred, select **Continue**. <br/>

	As you can see, there are two users whose errors you have not fixed (**An Dung Dao** and **Ngoc Bich Tran**). We are purposely leaving these errors alone so that you can see what happens during the synchronization process using the Azure AD Connect tool in the next exercise when it processes users with these conditions. <br/>

	**Important:** When there are format and duplicate errors for distinguished names, the **UPDATE** column either contains the same string as the **VALUE** column (which is the case for these two final users), or the **UPDATE** column entry is blank. In either case, this means that IdFix cannot suggest a remediation for the error. You can either fix these errors outside IdFix, or manually remediate them within IdFix. You can also export the results and use Windows PowerShell to remediate many errors.  

27. Close the IdFix and File Explorer windows. 


### Task 4: Prepare for Directory Synchronization    

Azure Active Directory Connect synchronization service is a main component of Azure AD Connect. It's responsible for processing all operations related to synchronizing identity data between your on-premises environment and Azure AD. The sync service consists of an on-premises component (Azure AD Connect sync) and a cloud service component (Azure AD Connect sync service).

Before you can run Azure AD Connect, you must first configure several settings that control the synchronization process, which you will do in this task. Once you have completed the preparation process, you will then run the Azure AD Connect tool in the next exercise. 

1. Switch to you Domain Controller VM (LON-DC1). If you’re not already logged on as the **Administrator** and password **Pa55w.rd**, then please do so now.

2. If necessary, select the **Internet Explorer** on the taskbar to open your browser. In your browser, select the **gear (Tools)** icon in the upper-right corner of the screen, and then in the drop-down menu select **Internet options**.  

3. In the **Internet Options** window, select the **Security** tab. The **Internet** zone should be selected by default. Towards the bottom of the window, select the **Custom Level...** button. 

4. In the **Security Settings – Internet Zone** window, scroll down to the **Downloads** section. The first option in this section is **File download**; verify this option is set to **Enable** and then select **OK**. 

5. This takes you back to the **Internet Options** window. Select the **Trusted sites** zone.

6. In the **Trusted Sites** zone, you must add several sites. Select the **Sites** button. 

7. In the **Trusted sites** window, in the **Add this website to the zone** field, enter the following URL and then select **Add**: **https://outlook.office365.com/** 

8. Repeat step 7 to add the following site: **https://outlook.office.com/**  

9. Repeat step 7 to add the following site: **https://portal.office.com/**  

10. Select **Close** once you have added these three sites.

11. In the **Internet Options** window, select **OK** to close the window.

12. In your **Internet Explorer** browser, enter the following URL in the address bar to open the **Microsoft Office Home** page: **https://portal.office.com/** 

13. You should still be signed into Office 365 as Holly Spencer (the circle in the upper-right corner displays **HS**). If so, then proceed to the next step; otherwise, sign into Office 365 as **Holly@M365xZZZZZZ.onmicrosoft.com** with the password **Pa55w.rd** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider). <br/>

	**Note:** As a best practice, close all other open tabs in your browser. 

14. In the **Microsoft Office Home** page, select **Admin**. 

15. In the **Microsoft 365 admin center**, in the left-hand navigation pane, select **Users**, and then select **Active users**.  

16. In the **Active users** list, select **Holly Spencer**. 

17. In Holly Spencer’s properties window, the **Account** tab is displayed by default. Under the **Username** section, select **Manage username**.

18. In the **Manage username** window, click the pencil on Holly's name and select the drop-down arrow in the **domain** field and then select the **XXYYZZa.xxxCustomDomainxxx.xxx** domain (where XXYYZZa is your unique UPN Name provided by your lab hosting provider and xxxCustomDomainxxx.xxx is your lab hosting provider's custom domain name).   <br/>

	‎**Important:** This step will break Holly’s account. You are purposely doing this to introduce a common problem that many organizations face today – they will correctly create the same UPN’s for a user’s on-premises and cloud accounts, but they accidentally (and incorrectly) point each account to a different domain.   <br/>
	
	‎As a result of creating this domain mismatch, the synchronization process will create two accounts for Holly in the Microsoft 365 Active User list instead of just one account. Each account will have its own mailbox because the mailboxes will have different domain and routing addresses. In a normal situation in which the user’s on-premises and cloud accounts have the same UPN and domain, the synchronization process will create one user account in the Microsoft 365 Active User list that has multiple SMTP addresses in the email address property chain. <br/>

	Read the warning that appears at the top of the window and then select **Save changes**. 

19. Since you are signed into Office 365 as Holly, and because you just changed her username, you need to signe out of Office 365 and to sign back in. Sign out from Holly's account and in your browser, enter the following URL in the address bar: **https://portal.office.com**    

20. In the **Pick an account** window, you want to log in using Holly’s **Holly@XXYYZZa.xxxCustomDomainxxx.xx** account. Note that her **Holly@M365xZZZZZZ.onmicrosoft.com** account appears in the list, but not her **Holly@XXYYZZa.xxxCustomDomainxxx.xxx** account. Therefore, select **Use another account.** 

21. In the **Sign in** window, enter **Holly@XXYYZZa.xxxCustomDomainxxx.xxx** (where XXYYZZa is your unique UPN Name provided by your lab hosting provider and xxxCustomDomainxxx.xxx is your lab hosting provider's custom domain name) and then select **Next**. 

22. In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in**.

23. In the **Stay signed in?** window, select **Yes**.

24. Close Internet Explorer, then select the **Internet Explorer** icon on the taskbar to open it again. 

25. In your Internet Explorer browser, enter the following URL in the address bar to open the **Microsoft Office Home** page: **https://portal.office.com/** 

26. In the Office 365 home page, you should still be signed into Office 365 as Holly Spencer (the circle in the upper-right corner displays **HS**). Select the circle that displays **HS**. This opens the **My Account** pane. <br/>

	In Holly's **My Account** pane, note how her username displays the **XXYYZZa.xxxCustomDomainxxx.xxx** domain rather than her **M365xZZZZZZ.onmicrosoft.com** domain. 

27. Close the **My Account** pane.

28. Proceed to the next exercise. You are now ready to install the Azure AD Connect tool and enable synchronization. 
  

# Proceed to Lab 4 - Exercise 2
 
