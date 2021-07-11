# Module 3 - Lab 2 - Exercise 3 - Manage a Microsoft 365 Apps for enterprise installation

You have taken on the persona of Holly Dickson, Adatum's Enterprise Administrator, and you have Microsoft 365 deployed in a virtualized lab environment. In this exercise, you will perform the tasks necessary to manage a user-driven Microsoft 365 Apps for enterprise installation. Performing a user-driven Microsoft 365 Apps for enterprise installation is a two-step process: 1) configuring the user account so the user is eligible to download and install the Office 365 deployment tool, and 2) performing the installation.

In the first two tasks in this exercise, you will verify the following conditions that affect whether a user can be blocked from downloading the Microsoft 365 Apps for enterprise suite:

- The user does not have an appropriate Office 365 license (which you will verify in Task 1).

- An admin turns off the global Office download setting that controls the downloading of mobile and desktop apps for all users (which you will verify in Task 2).

In the final task in this exercise, you will install the Microsoft 365 Apps for enterprise suite for one of Adatum's users.

### Task 1 – Verify how licensing affects installing Microsoft 365 Apps for enterprise

In this task, Holly will test whether a user who has not been assigned an appropriate Office 365 license can download Microsoft 365 Apps for enterprise. For this test, you cannot use any of the existing users that appear in the **Active Users** list in the Microsoft 365 admin center. These users only have Microsoft 365 accounts (xxxxxZZZZZZ.onmicrosoft.com accounts); they do not have corresponding on-premises accounts in the adatum domain. Without an on-premises account, you cannot log into the Client 1 (LON-CL1) VM as any of these users to install Microsoft 365 Apps for enterprise on the client machine.

Therefore, you must use one of Adatum's on-premises user accounts that has been loaded in its on-premises domain (adatum.com) by your lab hosting provider. For this test, you will use **Laura Atkins**. You will create a Microsoft 365 account for Laura, but you will not assign her an Office 365 license.

1. You should still be logged into LON-CL1 as **Administrator** and password **Pa55w.rd**.

1. The **Microsoft 365 admin center** should still be open in your Edge browser from the prior lab, where you should be logged into Microsoft 365 as Holly Dickson. In the left-hand navigation pane, select **Users** and then select **Active users**.

1. You will begin by testing whether a user **without** an appropriate Office 365 license can install Microsoft 365 Apps for enterprise. For this test, you will use **Laura Atkins**. Your lab hosting provider has already created an on-premises user account for Laura, but she does not have a Microsoft 365 user account. You will create a Microsoft 365 account for Laura, but you will not assign her an Office 365 license.

   At the top of the **Active users** window, select **Add a user** on the menu bar.

1. In the **Set up the basics** window, enter the following information:
   - First name: **Laura**
   - Last name: **Atkins**
   - Display name: When you tab into this field, Laura Atkins will appear.
   - Username: **Laura**

   **IMPORTANT:** To the right of the Username field is the domain field. You want this value to be Adatum's **xxxxxZZZZZZ.onmicrosoft.com** domain (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). However, if the custom domain that you added in a prior lab is set as the default domain, then this field will be prefilled with the custom **xxxUPNxxx.xxxCustomDomainxxx.xxx** on-premises domain (where xxxUPNxxx is your UPN number and xxxCustomDomainxxx.xxx is the custom domain). If the custom domain is displayed in this field, you must select the drop-down arrow and select the **xxxxxZZZZZZ.onmicrosoft.com** cloud domain instead.

   After configuring this field, Laura’s **Username** should appear as: **Laura@xxxxxZZZZZZ.onmicrosoft.com**

   - Password settings: deselect the **Automatic create a password** option
   - Password: **Pa55w.rd**
   - Clear (uncheck) the **Require this user to change their password when they first sign in** check box

1. Select **Next**.

1. In the **Assign product licenses** window, select the **Create user without product license (not recommended)** option, and then select **Next**.

1. In the **Optional settings** window, select **Next**.

1. On the **Review and finish** window, review your selections. If anything needs to be changed, select the appropriate **Edit** link and make the necessary changes. Otherwise, if everything looks good, select **Finish adding**.

1. On the **Laura Atkins added to active users** page, select **Close**. If a survey form appears, select **Cancel**.

1. You want to log in as **Laura Atkins**. Since you want to log on as Laura Atkins, select the **Ctrl+Alt+Delete** function for your VM environment. On the menu screen that appears, select **Switch user**.

 The lower-left portion of the desktop displays the **Administrator** and **Other user** options. Select **Other user**.

1. In the **Other user** log in, enter **adatum\laura** in the **Username** field, enter **Pa55w.rd** as the **Password**, and then select the forward arrow to log in. After logging in, the desktop should indicate the logged on user is **adatum\laura**.

1. Select the **Microsoft Edge** icon on the taskbar.

1. In **Microsoft Edge**, maximize your browser, then go to the **Microsoft Office Home** page by entering the following URL in the address bar: **<https://portal.office.com/>**

1. In the **Sign in** window, enter **Laura@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and then select **Next**.

1. In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in.**

1. In the **Stay signed in?** window, select the **Don't show this again** check box and then select **Yes.**

1. In the **Microsoft Office Home** page for Laura, notice that no column of Microsoft 365 app icons appears on the left-side of the screen; this is because Laura does not have an Office 365 license assigned.

   Select the **Install Office** button, and then in the drop-down menu that appears, select **Install software**. This opens the **My account** window for Laura.

1. In Laura's **My account** window, under the **Office apps &amp; devices** section, select **View apps &amp; devices**. Note the message that appears at the top of page. Laura has not been assigned an Office license that includes the Office desktop apps, so she’s unable to install Microsoft 365 Apps for enterprise.

   ‎**Important:** You have just verified that a user cannot download Microsoft 365 Apps for enterprise if he or she has not been assigned an appropriate Office 365 license.

1. Leave LON-CL1 open and remain signed into Microsoft 365 as Laura Atkins for the next task.

### Task 2 – Verify how the global Office download setting affects installing Microsoft 365 Apps for enterprise

Holly is now going to test whether users can be prohibited from downloading Microsoft 365 Apps for enterprise if an admin such as herself turns off the global Office download setting that controls the downloading of mobile and desktop apps for all users.

1. Select the **Ctrl+Alt+Delete** function for your VM environment. On the menu screen that appears, select **Switch user**.

   The lower-left portion of the desktop displays the **Administrator** and **Laura Atkins** options. Select **Administrator**.

1. In the **Administrator** log in, enter **Pa55w.rd** as the **Password**, and then select the forward arrow to log in.

1. To turn off the global Office download setting, select the **Microsoft 365 admin center** tab in your browser, and then if necessary, select **...Show all** in the left-hand navigation pane. Select **Settings**, and then within the group, select **Org Settings**.

1. In the **Settings** window, the **Services** tab is displayed by default. Scroll down through the list of services and select **Office installation options**.

1. In the **Office installation options** pane that appears, under the **Apps for Windows and mobile devices** section, the **Office (includes Skype for Business)** check box is currently selected. Select this check box so that it’s blank, which turns this feature **Off**.

1. Select **Save**.

1. Scroll to the top of the **Office installation options** pane. Once you receive a message indicating the changes are saved, select the **X** in the upper-right corner of this window to close it.

1. You should now test whether turning off this global download setting affects a **licensed** user from installing Microsoft 365 Apps for enterprise. In this case, you’re once again going to use **Laura Atkins**, so you must first assign Laura an Office 365 license.

 In the **Microsoft 365 admin center**, under **Users** in the left-hand navigation pane select **Active users**, and then in the in the **Active users** list, scroll down to **Laura Atkins**. The value in the **Licenses** column for Laura currently indicates that she is **Unlicensed**. Select **Laura Atkins**.

1. In Laura Atkins’ account window, the **Account** tab is displayed by default. Select the **Licenses and Apps** tab. In the **Licenses** section, select the **Office 365 E5** check box and then select **Save changes**. You can then close Laura’s account window. In the **Active users** list, note how the value in the **Licenses** column for Laura now displays **Office 365 E5**.

1. You should now check whether Laura can download Microsoft 365 Apps for enterprise on to her client PC when the global Office download setting has been turned Off.

 To do this, you must first switch back to **adatum\Laura**.

1. In **LON-CL1**, your Edge browser should still be open, and you should still be logged into Microsoft 365 as Laura Atkins. The **My account** window should be displayed, and the **Apps and devices** section should still be displayed along with the error message that you received in the prior task that indicated Laura was not assigned an Office license.

 Select the **Refresh icon** that appears to the left of the address bar at the top of your browser. This will refresh the **Office apps &amp; devices** page.

 **Note:** Refreshing the **Office apps &amp; devices** page does not re-verify Laura's licensing status as it still returns the same error message as before when Laura was unlicensed. You were asked to refresh this page to show you this condition. Therefore, proceed to the next step to log out of Microsoft 365 and log back in as Laura.

1. Select the Laura Atkins icon (the circle with **LA** in it) in the upper-right corner of the screen, and in the **Laura Atkins** window that appears, select **Sign out**.

 **Important**: As a best practice to avoid any confusion when logging out as one user and logging in as another, close all other tabs that are open in your Edge browser except for this **Sign out** tab.

1. In **Microsoft Edge**, in the **Sign out** tab, go to the **Microsoft Office Home** page by entering the following URL in the address bar: **<https://portal.office.com/>**

1. In the **Pick an account** window, select **Laura@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider).

1. In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in.**

1. In the **Stay signed in?** window, select the **Don't show this again** check box and then select **Yes.**

1. In the **Microsoft Office Home** page for Laura, notice that the column of Microsoft 365 app icons now appears on the left-side of the screen because Laura has been assigned an Office 365 license.

 Select the **Install Office** button, and then in the drop-down menu, select **Install software**.

1. In the **My account** window, under the **Office apps &amp; devices** section, select **View apps &amp; devices**.

1. In the **Apps &amp; devices** window, a message is displayed under the **Office** section that indicates the admin has turned off Office installs.

 ‎**Important:** You have just verified that a licensed user is unable to download Microsoft 365 Apps for enterprise if the global Office download setting has been turned Off.

1. At this point Holly wants to turn the global Office download setting back On so that Laura can download Microsoft 365 Apps for enterprise.

 To do this, switch back to **Administrator**.

1. On **LON-CL1**, you should still be logged into Microsoft 365 as Holly Dickson. In the **Microsoft 365 admin center**, under the **Settings** section in the left-hand navigation pane, select **Org Settings**.

1. In the **Settings** window, the **Services** tab is displayed by default. Scroll down through the list of services and select **Office installation options**.

1. In the **Office installation options** pane, under the **Apps for Windows and mobile devices** section, the **Office (includes Skype for Business)** check box is currently blank. Select this check box so that it displays a check mark, which now turns this feature back On.

1. Select **Save**.

1. Once you receive a message indicating the changes are saved, select the **X** in the upper-right corner of this window to close it.

1. Now that this global Office download option is turned back On, you should see if it affects Laura’s ability to download Microsoft 365 Apps for enterprise.

 To do this, switch back to **adatum\Laura**.

1. On **LON-CL1**, Laura's Edge browser should still be open, and the **Office apps and devices** page should be displayed along with the error message that indicated your admin has turned off Office installs. Since you just turned this global option back On, you need to refresh this page to see how it affects Laura’s ability to download Microsoft 365 Apps for enterprise.

 **Note:** Unlike the previous time when you refreshed this page and it did not reflect Laura's updated Office 365 license status, refreshing this page after updating the global download setting works.

 Select the **Refresh icon** that appears to the left of the address bar at the top of your browser.

1. In the **My account** window that appears, under the **Office apps &amp; devices** section, an **Install Office** button appears along with a message indicating you can install Office on up to 5 PCs or Macs, 5 tablets, and 5 smartphones.

 ‎**Important:** You have just verified that a user with an Office license is able to download Microsoft 365 Apps for enterprise if the global Office download setting is turned On.

1. Remain on LON-CL1 and continue to the next task to perform the user-driven installation for Laura Atkins.

### Task 3 – Perform a User-Driven Installation of Microsoft 365 Apps for enterprise

In the prior task, you logged into Laura Atkins’ client PC, and you verified that she could download Microsoft 365 Apps for enterprise once she was assigned an Office 365 license and the global Office download setting was turned On. In this task, you will continue the process by having Laura perform a user-driven installation of the Microsoft 365 Apps for enterprise suite from the Microsoft 365 portal.  

1. On **LON-CL1**, you should still be logged in as Laura Atkins.

1. You should still be in Laura’s **My account** window since this is where you left off at the end of the prior task. Under the **Office apps &amp; devices** section, the **Install Office** button now appears since Laura is assigned an Office 365 E5 license and the global Office download setting is turned On.

 ‎**Important:** Selecting this **Install Office** button will install the 64 bit, English version of Microsoft 365 Apps for enterprise. However, if you want to install a different language or version, then select **View apps &amp; devices**, which opens the **Apps &amp; devices** page; this enables you to select a different language and version of Microsoft 365 Apps for enterprise to install.

 Since Laura wants to install the 64-bit English version of Microsoft 365 Apps for enterprise, select the **Install Office** button.
  
1. In the **Just a few more steps** window that appears, select **Close**.

1. In the notification bar that appears at the bottom of the page, select **Save** to download the 64-bit Microsoft 365 Apps for enterprise installation wizard to the client PC.

1. Once the Microsoft 365 Apps for enterprise installation file has finished downloading, select **Run** in the notification bar that appears at the bottom of the page.

1. If a **Do you want to allow this app to make changes to your device?** dialog box appears, enter **adatum\administrator** in the **username** box, type **Pa55w.rd** in the **Password** box, and then select **Yes**.

1. You may receive a **Continuing could be expensive** dialog box that displays a warning message indicating that it may be expensive to continue downloading because you're connected to a network that limits downloads every month.

 **Important:** If you receive this dialog box, it may appear in the taskbar but not on the desktop. If this occurs, hover your mouse over the **Office** icon on the taskbar, and then select the **Continuing could be expensive** dialog box if it appears. If you do receive this dialog box, the Office install will NOT proceed until you select **Continue** (the Office window will just keep displaying the **We’re getting things ready** message, but it won’t actually do anything).

 In the **Continuing could be expensive** dialog box, select **Continue**.

1. The installation may take several minutes to complete. Once the installation finishes, select **Close** in the **You're all set! Office is installed now** window.

1. To validate Laura's Microsoft 365 Apps for enterprise installation, select the **Start** icon in the lower-left corner of the taskbar. Below the **Recently added** section (at the top of the **Start** menu) select **Expand** to display all the Microsoft 365 enterprise apps that were just installed. This should include Word, PowerPoint, OneNote 2016, Outlook, Publisher, Access, Skype for Business, and Excel.

1. In the **Start** menu, select **Word**.

1. On the **Sign in to set up Office** page, sign in as **Laura@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) with a password of **Pa55w.rd**.

1. On the **Accept the license agreement** window, select **Accept**.

1. On the **Your privacy option** window, select **Close**.

1. Verify that Word is functioning properly by opening a blank Word document, entering some text, and saving the document to the **Documents** folder.

1. Close Word.

1. Now that you have completed this lab exercise by installing Microsoft 365 Apps for enterprise, you should log out of LON-CL1 as Laura Atkins and log back in as the Adatum administrator. This will prepare LON-CL1 for the next lab.

 On LON-CL1, select the **Ctrl+Alt+Delete** function in your VM lab environment.

1. On the desktop menu, select **Switch user**.

1. On the desktop, the **Administrator** is selected by default. Enter **Pa55w.rd** in the **Password** field and then select the forward arrow.

 The desktop should now display the logged on user as **adatum\administrator**. LON-CL1 is now ready for the next lab.

# End of Lab 2
