# Module 3 - Lab 2 - Exercise 1 - Manage Administration Delegation

In this exercise, you will continue in your role as Holly Dickson, Adatum's Enterprise Administrator. As part of Adatum's Microsoft 365 pilot project, you will manage administration delegation by assigning Microsoft 365 administrator roles to several of the Microsoft 365 user accounts that were created by your lab hosting provider. You will assign these roles using both the Microsoft 365 admin center and Windows PowerShell; this will give you the added experience of using PowerShell to perform these administrative functions. Once you have assigned Microsoft 365 admin roles to several of the existing user accounts, you will then test those assignments by verifying the users have the permissions to act in accordance with their roles. 

### ‎Task 1 - Assign Delegated Administrators in the Microsoft 365 Admin Center

As Holly Dickson, Adatum’s Enterprise Administrator and Microsoft 365 Global Admin, you will use the Microsoft 365 admin center to assign administrator rights to several users. 

1. If you’re not logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**, then please do so now.

2. In the **Microsoft 365 admin center** in your Edge browser, you should still be logged in as Holly Dickson. In the left-hand navigation pane, select **Users** and then select **Active Users**. 

3. In the **Active users** list, select **Diego Siciliani**. 

	**Note:** Select Diego’s name; do not select the circle to the left of his name. The circle with the check mark is typically used for selecting multiple users when you want to perform one of the user-related actions on the menu bar that appears above the list of users, such as **Manage product licenses** and **Manage roles**. Selecting a user’s name opens a detail pane specifically for that user.

4. In the **Diego Siciliani** pane that appears, the **Account** tab is displayed by default. In this tab, scroll down to the **Roles** section and select **Manage roles**. 

5. In the **Manage roles** window, the **User (no admin center access)** option is currently selected by default. Now that you want to assign Diego an administrator role, select the **Admin center access** option. This enables the admin roles for selection. 

6. Diego has been promoted to Billing administrator, but since the Billing admin role does not appear in the list of commonly used roles, scroll down and select **Show all by category**. 

7. In the list of roles that are sorted by category, scroll down to the **Other** category, select **Billing admin**, and then select **Save changes**. 

8. On the **Manage roles** window, select the **X** in the upper-right corner of the screen to close it. This returns you to the **Active users** list. 

9. Repeat steps 3-8 for **Lynne Robbins.** Assign Lynne to both the **Helpdesk admin** role and the **User Administrator** role under the **Identity** category. <br/>

	**Note:** Both roles are in the list of commonly used admin roles that appear under the **Admin center access** option; therefore, you do not have to select **Show all by category**. 

10. Remain logged into LON-CL1 and the Microsoft 365 admin center as Holly Dickson.


### Task 2 - Assign Delegated Administrators with Windows PowerShell  

This task is similar to the prior one in that you will assign administrator rights to users; however, in this case, you will use Windows PowerShell to perform this function rather than the Microsoft 365 Admin Center. This will give you experience performing this management function in PowerShell, since some administrators prefer performing maintenance such as this using PowerShell. In addition, PowerShell enables you to display all the users assigned to a specific role, which can be very important when auditing your Microsoft 365 deployment. In this task, you will learn how to use PowerShell to display all the users assigned to a specific role. 

1. On LON-CL1, select the Windows PowerShell icon on the taskbar that you left open from the previous lab. If you closed the PowerShell window, then open an elevated instance of it using the same instruction as before. 

2. You should begin by connecting your PowerShell session to the Microsoft Online Service. At the command prompt, type the following command, and then press Enter:  <br/>

		Connect-MsolService
	
3. In the **Sign in** dialog box that appears, log in as **Holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) with password **Pa55w.rd**. 

4. PowerShell's execution policy settings dictate what PowerShell scripts can be run on a Windows system. Setting this policy to **Unrestricted** enables Holly to load all configuration files and run all scripts. At the command prompt, type the following command, and then press Enter:   <br/>

		Set-ExecutionPolicy unrestricted

	‎If you are prompted to verify that you want to change the execution policy, enter **A** to select **[A] Yes to All.** 

5. To view all the available roles in Microsoft 365, enter the following command in the Windows PowerShell window and then press Enter:
	
	
		Get-MsolRole |Select-Object -Property Name,Description |Out-GridView

6. This displays a window that shows all the Microsoft 365 roles. Notice how the "official" name of all roles within Microsoft 365 includes the complete spelling of the word "administrator"; whereas, in the Microsoft 365 admin center, "administrator" is abbreviated to "admin" simply for display purposes. When using PowerShell to perform role-related commands in the following steps, you must spell out the entire word "administrator". If you enter "admin" instead of "administrator", the command will return an error indicating that it cannot find the role. <br/>

	Close the window displaying the Microsoft 365 roles.

7. Holly now wants to assign **Patti Fernandez** to the **Service support administrator** role. In the Windows PowerShell window, at the command prompt, type the following command (don't forget to replace xxxxxZZZZZZ with the tenant prefix provided by your lab hosting provider), and then press Enter:  <br/>

	Add-MsolRoleMember -RoleName "Service support administrator” –RoleMemberEmailAddress PattiF@xxxxxZZZZZZ.onmicrosoft.com  

8. You now want to verify which users have been assigned to certain roles. Displaying the users assigned to a role is a two-step process in PowerShell.<br/>

	‎**Important:** Do NOT perform the following commands just yet – this is an informational step whose purpose is to describe what you will be doing in the remaining steps in this task. 
	
	- You will begin by running a command that creates a macro command ($role) that states that anytime $role is used in a cmdlet, it should retrieve all users assigned to whichever role name you are validating.  <br/> 
		
		&dollar;role = Get-MsolRole -RoleName "enter name of role here"
			
	- After creating the macro in the prior step, you will then run the following command that directs PowerShell to display all object IDs for the users who have been assigned to the name of the role that you invoked in the previous $role macro.  <br/>
	
		Get-MsolRoleMember -RoleObjectId $role.ObjectId
			
9. You should now run the following two commands as described in the previous step to verify that Patti Fernandez was assigned the Service support administrator role:  <br/> 

		$role = Get-MsolRole -RoleName "Service support administrator"

		Get-MsolRoleMember -RoleObjectId $role.ObjectId
	
10. Verify that **Patti Fernandez** is in the list of users who have been assigned the **Service support administrator** role. 

11. You should now run the following two commands to verify which Adatum users have been assigned to the **Billing administrator** role.  <br/>

		$role = Get-MsolRole -RoleName "Billing administrator"

		Get-MsolRoleMember -RoleObjectId $role.ObjectId

12. Verify that **Diego Siciliani** is in the list of users who have been assigned the **Billing administrator** role (you assigned Diego to this role in the prior task using the Microsoft 365 admin center). 
	
13. Leave your Windows PowerShell session open for future lab exercises; simply minimize it before going on to the next task.


### Task 3 - Verify Delegated Administration  

In this task, you will begin by examining the administrative properties of two users, Allan Deyoung and Lynne Robbins. You will then log into the Office 365 home page on the Client 1 VM (LON-CL1) as each user to confirm several of the changes that you made when managing their administrative delegation in the prior tasks. Finally, as Lynne Robbins, you will perform several user account maintenance tasks, such as resetting passwords and blocking a user account.

**Password Note:** When logging into Microsoft 365 as any of the existing user accounts that were created for you in the Microsoft 365 tenant (for example, Allan Deyoung, Lynne Robbins, and so on), you must use the same Tenant Password that you used in Lab 1 when you signed in using the tenant email account (admin@xxxxxZZZZZZ.onmicrosoft.com) to set up your organization profile. All the existing Microsoft 365 user accounts in your tenant have been assigned this same Tenant Password, which your instructor will provide for you.

1. In LON-CL1, you should still be logged into the Microsoft 365 admin center as Holly Dickson. If not, then do so now.

1. In the **Microsoft 365 admin center**, if you are not displaying the **Active Users**, then navigate to there now.  

1. In the **Active users** list, select **Allan Deyoung**. 

1. In **Allan Deyoung's** properties window, the **Account** tab is displayed by default. Under the **Roles** section, it should indicate that Allan has **No administrator access**. Select the **X** in the upper right corner to close Allan's properties window.

1. In the **Active users** list, select **Lynne Robbins**. 

1. In **Lynne Robbins's** properties window, it should indicate that Lynne has been assigned the **User admin** and **Helpdesk admin** roles. Close Lynne's properties window.

1. Select the user icon for **Holly Dickson** (the **MA** circle) in the upper right-hand corner of your browser, and in the **Holly Dickson** window that appears, select **Sign out.**
 
 **Important:** When signing out of one user account and signing in as another, you should close all the browser tabs except for your current tab (which will be the **Sign out** tab). This is a best practice that helps to avoid any confusion by closing the windows associated with the prior user. Take a moment now and close all other browser tabs except for the **Sign out** tab.
 
1. In your Microsoft Edge browser, in the **Sign out** tab, enter the following URL in the address bar to sign back into Microsoft 365: **<https://portal.office.com>**

1. In the **Pick an account** window, select **Use another account**.

1. You will begin by signing into Microsoft 365 as **Allan Deyoung**. In the **Sign-in** window, enter **AllanD@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). In the **Enter password** window, enter the Tenant Password provided by your instructor.  If you are signed in to another account, sign out and sign back in using **Allan Deyoung** credentials .

1. On the **Stay signed in?** window, select the **Don't show this again** check box and then select **Yes**.

1. If a **Get your work done with Office 365** window appears, select the **X** to close it.

1. In the **Office 365 Home** page, note how the **Admin** option is not available in the column of app icons on the left side of the screen since Allan was never assigned an administrator role. 

1. You will now sign out of Microsoft 365 as Allan. In **Microsoft Edge**, at the top right of the **Office 365 home** page, select the user icon for **Allan Deyoung** (the circle in the upper right-hand corner with Allan's picture in it), and in the **Allan Deyoung** window that appears, select **Sign out.**

1. You will now sign into Microsoft 365 as **Lynne Robbins**. In your current **Edge** browser tab, it should display a message indicating **Allan, you're signed out now**. In this window, it gives you the option of signing back in as Allan, or signing in as a different user. Select **Switch to a different account**, and in the **Email address** field that appears, enter **LynneR@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and then select **Sign in**. In the **Enter password** window, enter the Tenant Password provided by your instructor.

1. If a **Get your work done with Office 365** window appears, select the **X** to close it.

1. In the **Office 365 home** page, note how the **Admin** icon appears in the column of app icons on the left side of the screen; this is because Lynne was assigned to a Microsoft 365 administrator role. Select the **Admin** icon to open the Microsoft 365 admin center.

1. In the **Microsoft 365 admin center**, select **Users** on the left-hand navigation pane and then select **Active users**. 

1. As the **Helpdesk administrator**, Lynne has permission to change user passwords. Lynne was recently contacted by **Diego Siciliani** and **Allan Deyoung**, who each reported that their passwords may have been compromised. Per Adatum's company policy, Lynne must reset their passwords to a temporary value, and then force them to reset their password at their next login.   <br/>

	‎In the **Active users** list, as you move your mouse from one user account to another, notice the **key (Reset a password)** icon that appears to the right of each user's name. Select the key icon that appears to the right of **Diego Siciliani's** name.

1. In the **Reset password** window for Diego, if the **Automatically create a password** check box displays a check mark, then select this box to clear it. This will enable Lynne to manually assign Diego a password. Enter **diego** in the **Password** field. Note to the right of the password, the system displays a message indicating this is a **Weak** password. Also note the message that appears below the field indicating the requirements for a strong password. Finally, note how the **Reset password** button at the bottom of the pane is not enabled; this button will only be enabled once you enter a strong password. 

	To correct this situation, enter **P@$$w0rd** in the **Password** field. Note how **Strong** now appears next to this password, and the **Reset password** button at the bottom of the pane is now enabled.
	
	**Note:** This is just a temporary password because Lynne wants to force Diego to change it the next time he logs in. Therefore, verify the **Require this user to change their password when they first sign in** check box displays a check mark; if the box is clear, then select it so that it displays a check mark.

1. Select **Reset password**.

1. You should receive an error message indicating that you cannot reset Diego’s password because he has been assigned an admin role. In Diego’s case, he was assigned to the Billing Admin role. Since only Global admins can change another admin’s password, and because Lynne is not a Global admin, she will have to ask Holly Dickson to make this change. Select **Close**. 

1. If a survey request window appears, select **Cancel**.

1. In the **Active users** list, select the **key (Reset a password)** icon for **Allan Deyoung**. 

1. In the **Reset password** window for Allan, if the **Automatically create a password** check box displays a check mark, then select this box to clear it. Lynne wants to manually assign Allan a password, so enter **P@$$w0rd** in the **Password** field. 

	This is just a temporary password because Lynne wants to force Allan to change it the next time he logs in. Therefore, verify the **Require this user to change their password when they first sign in** check box displays a check mark; if the box is clear, then select it so that it displays a check mark.

1. Select **Reset password**.

1. On the **Reset password** window, you should receive a message indicating the password was successfully reset. Select the **Email the sign-in info to me** check box. This displays a **Your email** field, which displays Lynne Robbins' email address. Since you also want to email this temporary password to Allan, you should enter Allan's email address following Lynne's. </br>

	If you enter multiple email addresses in this field, they must be separated by a semicolon and a space. Therefore, enter a semicolon and a space following Lynne's email address, enter Allan's email address of **AllanD@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the prefix provided by your lab hosting provider), and then select **Send email and close**.

1. Management has recently discovered that Alex Wilber's username may have been compromised. As a result, Lynne has been asked to block Alex's account so that no one can sign in with his username until management is able to determine the extent of the issue. In the **Active users** list, select the circle to the left of **Alex Wilber's** name (do NOT select Alex’s name itself). 

	**Note:** Since you are going to run a global command on Alex's account rather than a command associated with his account, you only want Alex's account selected in the list of active users. If any other user account is selected, you must unselect that user account before proceeding. Examine Allan Deyoung's account, since you just reset his password; uncheck his account if necessary (select the check mark to unselect it). Only Alex's account should be selected. 

1. In the menu bar at the top of the page, select the **ellipsis icon (...)** to display a drop-down menu of additional options. In the menu that appears, select **Edit sign-in status**.

1. In the **Block sign-in** window, verify Alex's email address appears below the window heading. Select the **Block this user from signing in** check box, and then select **Save changes.** 

1. The **Block sign-in** window should display a message indicating that Alex is now blocked from signing in (and no one can sign in with Alex's username in the event that his username was actually compromised). In addition, Alex will automatically be signed out of Microsoft services within 60 minutes. Select the **X** in the upper right-hand corner of the window to close it. 

1. Lynne has just been informed that **Nestor Wilke's** username has also been potentially compromised. Repeat steps 30 through 33 to block Nestor from signing in (and to block anyone else from using his username to sign in). 

1. When you tried to block Nestor's sign in, you should have received an error message indicating **Changes could not be saved**. The reason that you received this error is that Nestor is a Global Admin, and Lynne is not. Only a Global Admin can block another Global Admin from being able to sign in. Lynne will need to ask Holly Dickson to make this change.

   Close the **Block sign-in** window.

1. You previously blocked Alex Wilber from being able to sign in. To verify whether he is blocked, you will attempt to sign in as Alex. Log out of Microsoft 365 by selecting the user icon for **Lynne Robbins** (the circle with Lynne's picture in the upper right-hand corner), and in the **Lynne Robbins** window that appears, select **Sign out.** 

1. As a best practice, close all your browser tabs except for the **Sign out** tab once you have been signed out. On the **Sign out** tab, navigate to **https://portal.office.com**. 

1. In the **Pick an account** window, select **Use another account**. In the **Sign in** window, enter **AlexW@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). In the **Enter password** window, enter the Tenant Password provided by your instructor.

   The **Pick an account** window should appear, and it should display an error message indicating **Your account has been locked. Contact your support person to unlock it, then try again.** You have just verified that Alex (or someone who has obtained Alex's username and password) cannot log in.

1. In the **Pick an account window**, select the **Holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). In the **Enter password** window, enter **Pa55w.rd**.

1. In the **Office 365 home** page, select the **Admin** icon to open the Microsoft 365 admin center.

1. In the **Microsoft 365 admin center**, select **Users** on the left-hand navigation pane and then select **Active users**.

1. Upon further investigation, Adatum's CTO has determined that Alex Wilber's account has, in fact, not been compromised; therefore, the CTO has asked Holly to remove the block on Alex's sign in. Repeat steps 21 through 24 to unblock his account. Note how the **Block sign-in** window from step 23 now displays the **Unblock sign-in** window instead.

	In the **Unblock sign-in** window, the **Block this user from signing in** check box is currently selected. Select this check box to clear it, select **Save changes**.
	
	Note the warning message that's displayed indicating it can take up to 15 minutes before Alex can sign in again. As such, you will **NOT** try to log back in as Alex. Instead, simply close the **Unblock sign-in** window.
	
1. On LON-CL1, leave your browser and all tabs open and proceed to the next exercise. 


# Proceed to Lab 2 - Exercise 2

