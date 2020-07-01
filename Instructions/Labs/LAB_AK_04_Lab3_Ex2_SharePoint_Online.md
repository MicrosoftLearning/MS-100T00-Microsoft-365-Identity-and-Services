# Module 4 - Lab 3 - Exercise 2 - Review Key Features of SharePoint Online

In this exercise you will review some of the basic administrative functions in SharePoint Online.

### Task 1 – Site Management

A team site includes a group of related web pages, a default document library for files, lists for data management, and web parts that can be customized to meet your collaboration needs. Adatum is excited to use team sites in SharePoint Online to improve collaboration between team members when working on specific projects. As part of Adatum's pilot project, Holly Spencer has been asked to create a team site for the IT department so that the IT team can work on projects and share information from anywhere and on any device. 

1. You should still be logged into your Domain Controller VM (LON-DC1) as **Administrator** and password **Pa55w.rd**; if not, then do so now.

2. You should still have Internet Explorer and the Microsoft 365 admin center open from the prior lab. If so, proceed to the next step; otherwise, open Internet Explorer, navigate to **https://portal.office.com/**, log in as **Holly@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your tenant ID provided by your lab hosting provider) and **Pa55w.rd**, and then in the **Microsoft Office Home** page, select **Admin** to open the Microsoft 365 admin center.

3. In the **Microsoft 365 admin center**, in the left-hand navigation pane, select **Show all** (if necessary), then scroll down to **Admin centers** and select **SharePoint.** This will open the SharePoint admin center.

4. In the **SharePoint admin center**, in the left-hand navigation pane, select **Sites**, and then select **Active sites.** 

5. In the **Active sites** window, select the **+Create** option on the menu bar.   

6.  Depending on the team or company need, there are several templates that can be used. For the purposes of this lab, in the **Create a site** window, select **Team site.**

7. In the **Get a team site connected to Office 365 Groups** window, enter the following information.

	- Site name: **IT Services**

	- Group email address: this is the alias for the group email address. As you typed in **IT Services** in the **Site name** field, the same text automatically prefilled in this field, although the blank space was removed so that it appears as one word. Do not change this default value.

	- Group owner: type **Diego**, and in the window that appears displaying the users whose first name starts with Diego, select **Diego Siciliani**.

	- Select a language: Leave this as English

	- Select **Advanced settings** to expand this section and then enter the following information:

		- Privacy settings: Given the confidential nature of much of the IT department's information, select **Private – only members can access this site**

		- Time zone: since this group is in Adatum’s Redmond, WA location, select **Pacific Time (US and Canada)**

		- Site Description: **This site is used by the IT department** 

8. Select **Next**.

9. In the **Add group members** window, in the **Add additional owners** field, enter **Holly**. As you enter Holly, a window appears listing users whose first name starts with Holly. Select **Holly Spencer**.

10. You now want to add **Patti Fernandez** and **Nestor Wilke** as members of this group. 

	In the **Add members** field, enter **Patti**. As you enter Patti, a window appears listing users whose first name starts with Patti. Select **Patti Fernandez**. 

11. Repeat the previous step for **Nestor Wilke**.

12. Select **Finish**. The **IT Services** site should now appear in the list of **Active sites**.

13. You’re now going to test the process of deleting a team site and then restoring it. In the list of **Active sites**, select the circle to the left of the **IT Services** site name (do not select the IT Services site name, as this will open a properties window for the site).

14. In the menu bar at the top of the page, select **Delete**. 

15. In the **Delete Office 365 group** window, select the **Delete the group “IT Services” and all its resources** check box, and then select **Delete.** Note that the IT Services site disappears from the **Active sites** list. 

16. In the left-hand navigation pane on the **SharePoint admin site**, under **Sites**, select **Deleted sites.** Note how the IT Services site that you just deleted appears in the list of deleted sites. 

17. In the **Deleted sites** window, select the circle to the left of the **IT Services** site name (do not select the IT Services site name).

18. In the menu bar at the top of the page, select **Restore**.

19. In the **Restore Office 365 group** window, select **Restore**.  Note that the IT Services site disappears from the **Deleted sites** list. 

20. In the left-hand navigation pane on the **SharePoint admin site**, under **Sites**, select **Active sites.** The IT Services site should once again appear in the **Active sites** list. 

21. In the **Active sites** list, select the circle to the left of the **IT Services** site name. If you scroll to the right, you will see that the information that you previously entered for this site has been restored.

22. Remain in the SharePoint admin center for the next task.

 
### Task 2 – Hierarchical Permissions

SharePoint Online uses hierarchical permissions to set authorization and access of sites. In other words, when a site is created (known as the parent site) any sites that are later created under that site (known as children sites) will, by default, inherit the main site permissions of the parent site. Since you just created a team site for IT Services, you now plan to configure site permissions to meet the IT team's security requirements.

In this task, you will create the following hierarchical permission structure for Adatum:

- When you created the IT Services team site in the prior task, you assigned Diego Siciliani as the group owner of the site, and you assigned Patti Fernandez and Nestor Wilke as group members for the site. In doing so, the default team site permission levels were assigned to Diego, Patti, and Nestor. Diego was assigned Full Control permission (as group owner), and Patti and Nestor were assigned Edit permissions (as group members). In this task, you will verify these default team site permission levels were automatically assigned to Diego, Patti, and Nestor.

- You want to assign a different set of permissions for a different group of users, so you will follow best practices by creating a group of users and assigning the group a custom permission level (as opposed to assigning custom permissions to each individual user). In this case, you will create a new **Information Technology** group, you will assign Isaiah Langer and Joni Sherman to this group, and will you assign the group Full Control permissions. 

- You will then create a permission level titled **Designer**, which will be used for Adatum’s web specialists who will design SharePoint sites upon request. They need to be assigned permission levels that provide complete editing and administrative capabilities. While you will not do it in this lab, you can later create a group for your web designers and assign that group this Designer permission level.  

Since you created a *Team Site*, you created more than a simple Sharepoint site : you created an Office 365 group. The security behaviour of this group is not entirely managed by Sharepoint. You must first connect to the site with a user before Sharepoint Online is aware of this user's permissions.

1. In Internet Explorer use the **Tools** icon to open a new Inprivate window (**Tools/safety/InPrivate Browsing**)

1. In the InPrivate Windows, navigate to **https://portal.office.com/**, log in as **DiegoS@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your tenant ID provided by your lab hosting provider) and use the *Mod Administrator*'s password, and then in the **Microsoft Office Home** page, select **Sharepoint** to open the Sharepoint online home page.

1. In the "*Search in Sharepoint*" bar, type "**IT services**" and click "**Show more results**"

1. Click on the "**IT services**" link, a new page labelled "*It Services - Home*" opens.

1. Close the InPrivate Internet Explorer session and return to the previous Internet Explorer session (logged in as Holly).

1. In the **SharePoint admin center**, you should still be displaying **Active sites**.

2. Select the **IT Services** site that you created in the prior task (do not select the circle to the left of it as you did in the prior task; instead, select the site name like you normally would).

3. In the **IT Services** window that appears, select the URL (**.../sites/ITServices**) that is displayed under **URL.** 

4. A new tab will open in Internet Explorer that displays the **IT Services** site.

5. In the upper right-hand corner of the **IT Services** site, select the **gear (Settings)** icon.

6. In the **Settings** pane that appears, select **Site permissions.**

7. At the bottom of the **Permissions** pane, select **Advanced permissions settings**, which opens a **Permissions: IT Services** page.

8. In the ribbon that appears at the top of the screen, the **PERMISSIONS** tab is displayed be default. Under the **Check** section, select **Check Permissions.**  

	**Note:** This option enables you to check access permissions for users and groups. In this case, you will check the permissions that were assigned to Diego Siciliani, Nestor Wilke, and Patti Fernandez. In the prior task, you assigned Diego as an owner of the IT Services site, and Nestor and Patti as site members. The following steps will enable you to check what default team site permissions they were assigned in these roles. 

9. In the **IT Services: Check Permissions** window that appears, in the **User/Group** field, type **Diego**. As you type Diego, a window appears listing users whose first name starts with Diego. Select **Diego Siciliani** and then select **Check now**. Since Diego is an owner of this site, this confirms that he was automatically assigned **Full Control** permissions.

10. In the **User/Group** field, select the **X** next to Diego’s name to remove it from the field. In the **User/Group** field, type **Nestor**. As you type Nestor, a window appears listing users whose first name starts with Nestor. Select **Nestor Wilke** and then select **Check now.** Since Nestor is member of this site, this confirms that he was automatically assigned **Edit** permissions.

	If you repeat this step for **Patti Fernandez**, you will confirm that as a site member, she also has **Edit** permissions.

11. Repeat the prior step and check the permission for **Alex Wilber**. You will see that Alex's permission level is set to **None**, which means he does not have permission to access or update the site since he has not been assigned as a site member.

12. In the **IT Services: Check Permissions** window, select **Close.**

13. You are now back in the **Permissions: IT Services** tab in your browser. You have been asked to create a new group of users and assign them permission to access the IT Services site. In the ribbon that appears at the top of the page, under the **Grant** section, select **Create Group.**  

	‎**Best Practice:** It’s a best practice that you should use Groups to assign access permissions rather than assigning access to individual user accounts for two important reasons: Assigning individual users access to a site makes it difficult to track user access when the user leaves your organization, and direct permissions can override security groups permissions.

14. In the **People and Groups &gt; Create Group** window, enter the following information:   

	- Name: **Information Technology**

	- About me: **This group is used for members of the IT staff**

	- Group owner: If Holly Spencer appears as the owner, select the **X** to the right of her name to remove her, and then enter **MOD**. As you type MOD, a window appears listing users whose first name starts with MOD. Select **MOD Administrator**.  
	
		‎**Best Practice:** When you create groups make sure the group owner is either a generic Administrator account or an Administrator group. Giving ownership of groups to individuals can cause editing issues because only the owners can make changes to groups.

	- Group Settings:

		- Who can view the membership of the group: **Groups Members**

		- Who can edit the membership of the Group: **Group Owner**

		- Allow requests to join/leave this Group: **Yes**

		- Auto-accept requests: **No**

		- Send membership requests to the following e-mail address: If Holly Spencer’s email appears, select in the field and then select the **X** that appears to the right of her address to remove it, and then enter **admin@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider)

		- Choose the permission level group members get on this site: **Full Control – Has full control**

15. Select **Create**. 

16. This displays the **Information Technology** group information. The users displayed in the list are the members of this group. Since Holly Spencer created the group, she is listed as the sole member.

17. In the menu bar that appears above the user list, select **New**, and then in the drop-down menu, select **Add users to this group.**

18. In the **Share ‘IT Services’** window, the **Invite people** tab is selected in the left-hand pane by default. In the **Enter names or email addresses** field, enter **Isaiah**. As you type Isaiah, a window appears listing users whose first name starts with Isaiah. Select **Isaiah Langer**. 

	Repeat this step for **Joni Sherman** (type **Joni** next to Isaiah Langer's name in the **Enter names or email addresses** field).

19. Below the personal message field, select **SHOW OPTIONS.**

20. Uncheck the **Send an email invitation** option.

21. Select **Share** to share the IT Services site with the members of this Information Technology group.

22. In the **People and Groups** window that appears, the **Information Technology** group information will appear. The members of the group (Holly, Isaiah, and Joni) should be displayed.

23. Close this **Peoples and Groups** tab in Internet Explorer. This will return you to the **SharePoint admin center** and the **Active sites** list, with the **IT Services** pane open on the right-hand side. 

24. In the **IT Services** window that appears, select the URL (**.../sites/ITServices**) that is displayed under **URL.** 

25. A new tab will open in Internet Explorer that displays the **IT Services** site.

26. In the upper right-hand corner of the **IT Services** site, select the **gear (Settings)** icon.

27. In the **Settings** pane that appears, select **Site permissions.**

28. At the bottom of the **Permissions** pane, select **Advanced permissions settings**, which opens the **Permissions: IT Services** tab for the IT Services site.

29. On the ribbon that appears at the top of the page, under the **Manage** section, select **Permission Levels**.  

	‎**Note:** This option enables you to customize permission levels to better fit your organization.

30. In the **Permission Levels** window, in the menu bar at the top of the page, select **Add a Permission Level.**

31. You want to create a permission level for your team’s web specialists who will be designing SharePoint sites upon request. They need to be assigned permission levels that provide complete editing and administrative capabilities. In the window that appears, enter the following information:

	- Name: **Designer**
	
	- About Me: **This level restricts the level of use for web designers**

	- List Permissions – select the following permission levels:

		- **Add Items**

		- **Edit Items**

		- **Delete Items**

		- **View Items**

		- **Open Items**

		- **View Versions**

	- Site Permissions – select the following permission levels:

		- **Create Subsites**

		- **Add and Customize Pages**

		- **Apply Themes and Borders**

		- **Apply Style Sheets**

		- **Browse Directories**

		- **View Pages**

		- **Enumerate Permissions** 

		- **Browse User Information**

		- **Use Remote Interfaces**

		- **Use Client Integration Features**

		- **Open**

32. Scroll to the bottom of the page and select the **Create** button to save your changes.

33. The **Permission Levels** window now displays the permissions that you just added.

34. In Internet Explorer, close the **Permission Levels** tab and the **SharePoint admin center** tab.


# Proceed to Lab 3 - Exercise 3
