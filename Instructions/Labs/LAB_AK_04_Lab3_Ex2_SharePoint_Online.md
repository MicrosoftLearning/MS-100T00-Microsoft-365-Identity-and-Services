# Module 4 - Lab 3 - Exercise 2 - Review Key Features of SharePoint Online

Adatum's CTO has heard a lot about Microsoft SharePoint and is interested in implementing it at Adatum. However, security is of the utmost concern to the CTO, who is concerned whether new sites created within the company can be kept secure. The CTO has tasked Holly with reviewing some of the basic administrative functions in SharePoint Online to determine whether it can meet their security requirements.

### Task 1 – Site Management

A team site includes a group of related web pages, a default document library for files, lists for data management, and web parts that can be customized to meet your collaboration needs. Holly is excited about the possibility of using team sites in SharePoint Online to improve collaboration between team members when working on specific projects. As part of Adatum's pilot project, Holly wants to create a team site for the IT department so that IT personnel can work on projects and share information from anywhere and on any device.

1. You should still be logged into LON-DC1 as **Administrator** and password **Pa55w.rd**; if not, then do so now.

1. You should still have Microsoft Edge and the **Microsoft 365 admin center** open from the prior lab, and you should be logged in as Holly Dickson. If so, proceed to the next step; otherwise, open Edge, navigate to **<https://portal.office.com/>**, log in as **Holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and **Pa55w.rd**, and then in the **Microsoft Office Home** page, select **Admin** to open the Microsoft 365 admin center.

1. In the **Microsoft 365 admin center**, in the left-hand navigation pane, select **Show all** (if necessary), then scroll down to **Admin centers** and select **SharePoint.** This will open the SharePoint admin center.

1. In the **SharePoint admin center**, in the left-hand navigation pane, select **Sites**, and then select **Active sites.**

1. In the **Active sites** window, select the **+Create** option on the menu bar.

1. Depending on the team or company need, there are several templates that can be used when creating a new site. The Team site tile would create a site connected to a Microsoft 365 Group. For the purpose of this lab, we want to create a site without a connected Microsoft 365 group. In the **Create a site** window, select the **Other Options** tile.

1. In the **Outher Options** window, enter the following information.
   - Choose a template: **Team site**
   - Site name: **IT Services**
   - Site address: In the dropdown, choose **../sites/**. Beside the dropdown, make sure **ITServices** is entered.
   - Primary administrator: type **Diego**, and in the window that appears displaying the users whose first name starts with Diego, select **Diego Siciliani**.
   - Select a language: Leave this as **English**
   - Select **Advanced settings** to expand this section and then enter the following information:
   - Time zone: since this group is in Adatum’s Redmond, WA location, select **Pacific Time (US and Canada)**

1. Select **Finish**. The **IT Services** site should now appear in the list of **Active sites**.

1. Select the **IT Services** site (do not select the circle to the left of it as you did in the prior task; instead, select the site name like you normally would).

1. In the **IT Services** window that appears, select the tab **Permissions**, then, under **Site Admins**, select **Manage**.

1. In the **Manage admins** window that appears, unter **Add an admin**, type **Holly**, and in the window that appears displaying the user whose first name starts with Holly, select **Holly Dickson**. Click **Save**.

1. In the window **IT Services**, select the tab **General**. Select the URL (**.../sites/ITServices**) that is displayed under **URL.**

1. A new tab will open in your Edge browser that displays the **IT Services** site. In the upper right-hand corner of the **IT Services** site, select **Share**.

1. In the **Share site** window, in the **Add users, Microsoft 365 Groups, or security groups to give them access to the site** field, enter **Patti**. As you enter Patti, a window appears listing users whose first name starts with Holly. Select **Patti Fernandez**.

1. Patti Fernandez is added with Read permissions. Click the **Read** dropdown below Patti Fernandez, and change it to **Edit**.

1. You now want to add **Nestor Wilke** as member of this site. Repeat the previous two steps for **Nestor Wilke**.

1. Select **Share**. Close the tab with the IT Services site.

1. You’re now going to test the process of deleting a team site and then restoring it. You should be back in the browser tab with the **SharePoint admin center**. In the list of **Active sites**, select the circle to the left of the **IT Services** site name (do not select the IT Services site name, as this will open a properties window for the site).

1. In the menu bar at the top of the page, select **Delete**. If not seen click on the three horizontal elipses **...** and in the drop down menu select **Delete**.

1. In the **Delete Microsoft 365 group** window, select the **Delete the group “IT Services” and all its resources** check box and then select **Delete.** Note that the IT Services site disappears from the **Active sites** list.

1. In the left-hand navigation pane on the **SharePoint admin site**, under **Sites**, select **Deleted sites.** Note how the IT Services site that you just deleted appears in the list of deleted sites.

1. In the **Deleted sites** window, select the circle to the left of the **IT Services** site name (do not select the IT Services site name).

1. In the menu bar at the top of the page, select **Restore**.

1. In the **Restore Microsoft 365 group** window, select **Restore**.  Note that the IT Services site disappears from the **Deleted sites** list.

1. In the left-hand navigation pane on the **SharePoint admin site**, under **Sites**, select **Active sites.** The IT Services site should once again appear in the **Active sites** list.

1. In the **Active sites** list, select the circle to the left of the **IT Services** site name. If you scroll to the right, you will see that the information that you previously entered for this site has been restored.

1. Remain in the SharePoint admin center for the next task.

### Task 2 – Hierarchical Permissions

SharePoint Online uses hierarchical permissions to set authorization and access of sites. In other words, when a site is created (known as the parent site) any sites that are later created under that site (known as children sites) will, by default, inherit the main site permissions of the parent site. Since you just created a team site for IT Services, you now plan to configure site permissions to meet the IT team's security requirements.

In this task, you will create the following hierarchical permission structure for Adatum:

- When you created the IT Services team site in the prior task, you assigned Diego Siciliani as the group owner of the site, and you assigned Patti Fernandez and Nestor Wilke as group members for the site. In doing so, the default team site permission levels were assigned to Diego, Patti, and Nestor. Diego was assigned Full Control permission (as site owner), and Patti and Nestor were assigned Edit permissions (as site members). In this task, you will verify these default team site permission levels were automatically assigned to Diego, Patti, and Nestor.

- You want to assign a different set of permissions for a different group of users, so you will follow best practices by creating a group of users and assigning the group a custom permission level (as opposed to assigning custom permissions to each individual user). In this case, you will create a new **Information Technology** group, you will assign Isaiah Langer and Joni Sherman to this group, and will you assign the group Full Control permissions.

- You will then create a permission level titled **Designer**, which will be used for Adatum’s web specialists who will design SharePoint sites upon request. They need to be assigned permission levels that provide complete editing and administrative capabilities. While you will not do it in this lab, you can later create a group for your web designers and assign that group this Designer permission level.  

1. In the **SharePoint admin center**, you should still be displaying **Active sites**.

1. Select the **IT Services** site that you created in the prior task (do not select the circle to the left of it as you did in the prior task; instead, select the site name like you normally would).

1. In the **IT Services** window that appears, select the URL (**.../sites/ITServices**) that is displayed under **URL.**

1. A new tab will open in your Edge browser that displays the **IT Services** site. In the upper right-hand corner of the **IT Services** site (to the left of Holly Dickson's name and initials), select the **gear (Settings)** icon.

1. In the **Settings** pane that appears, select **Site permissions.**

1. In the **Permissions** pane that appears, select **Advanced permissions settings**, which opens a new **Permissions: IT Services** tab in your Edge browser.

1. In the ribbon that appears at the top of the screen, two tabs are available - a **BROWSE** tab and a **PERMISSIONS** tab, the latter of which is displayed by default.

   Select the **BROWSE** tab and note how the Permissions ribbon disappears. This also reveals the name of this page, which is **Site Settings > Permissions**.

1. Select the **PERMISSIONS** tab, which displays the Permissions ribbon. In the ribbon, under the **Check** section, select **Check Permissions**.

   **Note:** This option enables you to check access permissions for users and groups. In this case, you will check the permissions that were assigned to Holly Dickson. In the prior task, you assigned Holly as an owner of the IT Services site. The following steps will enable you to check what default team site permissions were assigned in this role.

1. In the **IT Services: Check Permissions** dialog box that appears, in the **User/Group** field, type **Holly**. As you type Holly, a window appears listing users whose first name starts with Holly. Select **Holly Dickson** and then select **Check now**. Since Holly is an owner of this site, this confirms that she was automatically assigned **Full Control** permissions.

1. In the **User/Group** field, select the **X** next to Holly’s name to remove it from the field. In the **User/Group** field, type **Nestor**. As you type Nestor, a window appears listing users whose first name starts with Nestor. Select **Nestor Wilke** and then select **Check now.** Since Nestor is member of this site, this confirms that he was automatically assigned **Edit** permissions.

1. Repeat the prior step and check the permission for **Alex Wilber**. You will not find Alex, because he is not a member of the site.

1. In the **IT Services: Check Permissions** window, select **Close.**

1. You are now back in the **Permissions: IT Services** tab in your browser. You have been asked to create a new group of users and assign them permission to access the IT Services site. In the ribbon that appears at the top of the page, under the **Grant** section, select **Create Group.**  

   ‎**Best Practice:** It’s a best practice that you should use Groups to assign access permissions rather than assigning access to individual user accounts for two important reasons: Assigning individual users access to a site makes it difficult to track user access when the user leaves your organization, and direct permissions can override security groups permissions.

1. In the **People and Groups \> Create Group** window, enter the following information:

   - Name: **Information Technology**

   - About me: **This group is used for members of the IT staff**

   - Group owner: If Holly Dickson appears as the owner, select the **X** to the right of her name to remove her, and then enter **MOD**. As you type MOD, a window appears listing users whose first name starts with MOD. Select **MOD Administrator**.  

     ‎**Best Practice:** When you create groups make sure the group owner is either a generic Administrator account or an Administrator group. Giving ownership of groups to individuals can cause editing issues because only the owners can make changes to groups.

   - Who can view the membership of the group: **Group Members**

   - Who can edit the membership of the Group: **Group Owner**

   - Allow requests to join/leave this Group: **Yes**

   - Auto-accept requests: **No**

   - Send membership requests to the following e-mail address: If Holly Dickson’s email appears, replace her email with the MOD Administrator's email, which is **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider)

   - Choose the permission level group members get on this site: **Full Control – Has full control**

1. Select **Create**.

1. This displays the **Information Technology** group information. The users displayed in the list are the members of this group. Since Holly Dickson created the group, she is listed as the sole member.

1. In the menu bar that appears above the user list, select the drop-down arrow that appears next to **New**, and then in the drop-down menu, select **Add users to this group.**

1. In the **Share ‘IT Services’** window, the **Invite people** tab is selected in the left-hand pane by default. In the **Enter names or email addresses** field, enter **Isaiah**. As you type Isaiah, a window appears listing users whose first name starts with Isaiah. Select **Isaiah Langer**.

   Repeat this step for **Joni Sherman** (type **Joni** next to Isaiah Langer's name in the **Enter names or email addresses** field).

1. Below the personal message field, select **SHOW OPTIONS.**

1. Uncheck the **Send an email invitation** option.

1. Select **Share** to share the IT Services site with the members of this Information Technology group.

1. In the **People and Groups \> Information Technology** window that appears, the members of the group (Holly, Isaiah, and Joni) should be displayed.

1. Close this **Peoples and Groups** tab in your Edge browser. This will return you to the **SharePoint admin center** and the **Active sites** list, with the **IT Services** pane open on the right-hand side.

1. In the **IT Services** window that appears, select the URL (**.../sites/ITServices**) that is displayed under **URL.**

1. A new tab will open in your Edge browser that displays the **IT Services** site.

1. In the upper right-hand corner of the **IT Services** site, select the **gear (Settings)** icon.

1. In the **Settings** pane that appears, select **Site permissions.**

1. At the bottom of the **Permissions** pane, select **Advanced permissions settings**, which opens the **Permissions: IT Services** tab for the IT Services site.

1. On the ribbon that appears at the top of the page, under the **Manage** section, select **Permission Levels**.  

   ‎**Note:** This option enables you to customize permission levels to better fit your organization.

1. In the **Permission Levels** window, in the menu bar at the top of the page, select **Add a Permission Level.**

1. You want to create a permission level for your team’s web specialists who will be designing SharePoint sites upon request. They need to be assigned permission levels that provide complete editing and administrative capabilities. In the window that appears, enter the following information:

   - Name: **Designer**

   - Description: **This level restricts the level of use for web designers**

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

1. Scroll to the bottom of the page and select the **Create** button to save your changes.

1. The **Permission Levels** window now displays the permission level that you just added.

1. In your Edge browser session, close the **Permission Levels** tab. Leave the **SharePoint admin center** tab open as you will use it in the next lab exercise.

# Proceed to Lab 3 - Exercise 3
