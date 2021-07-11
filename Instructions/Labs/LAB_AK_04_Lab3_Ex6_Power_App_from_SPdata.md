# Module 4 - Lab 3 - Exercise 6 - Create a Power App from a SharePoint data source

In an earlier exercise in this lab, Holly created a Service Request Ticketing system to manage service desk requests. The ticketing system consisted of a SharePoint team site titled **IT Services** and a SharePoint list within this site titled **Service Desk Requests**. Holly populated this list with the service request tickets from Adatum’s old ticketing system. 

Rather than having Adatum’s Support team use SharePoint to enter and manage new service tickets, Holly envisions using a Power App to perform this function. Therefore, in this exercise, you will create a Power App that utilizes the **Service Desk Requests** SharePoint list as the data source for the app. Holly will then publish and share the app with the IT Consultant for testing purposes as part of Adatum’s pilot project.
 

### Task 1:  Review the Service Desk Requests list

Start by familiarizing yourself with the SharePoint list which will serve as the data source for your Power App.

1. You should still be logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**; if not, then do so now.

2. You should still have Microsoft Edge and the **Microsoft 365 admin center** open from the prior lab in which you were logged in as Holly Dickson. If so, proceed to the next step; otherwise, open Microsoft Edge, navigate to **https://portal.office.com/**, log in as **Holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and **Pa55w.rd**, and then in the **Microsoft 365 Home** page, select the **Admin** icon to open the Microsoft 365 admin center.

3. In the **Microsoft 365 admin center**, select **Show all** (if necessary), then scroll down to **Admin centers** and select **SharePoint**. This will open the **SharePoint admin center.**

4. In the **SharePoint admin center**, in the left-hand navigation pane, select **Sites**, and then select **Active sites**. 

5. In the list of **Active sites**, locate the **IT Services** site and select the **…/sites/ITServices** value that appears in the URL column.

6. In the **IT Services** site, in the left-hand navigation pane, select **Site contents**.

7. In the list of site contents, select **Service Desk Requests**.

8. Review the columns in this list that you added in the earlier lab exercise. These columns will be used by the Power App that you create.

9. Keep this browser tab open and proceed to the next task.

 

## Task 2:  Create a Power App from a Data Source

Adatum’s IT Consultant has informed Holly that by building a Power App from a data source, she will see how easy it is to create a fully functioning app because Power Apps will do all the work for her. In this task, Holly wants to test this out by creating a Power App for entering and managing service tickets using the existing Service Desk Requests SharePoint list as the app’s data source. 

You can create a Power App through either the Power App portal or through SharePoint. In this task, you will use the Power App portal so that you can become familiar with it. Once you create the Power App, you will add a new record to the Service Desk Requests list using the app, you will edit an existing record using the app, and you will delete a record through the app. In each case, you will verify the corresponding activity occurred in the Service Desk Requests list in the IT Services site in SharePoint. Once you have added, edited, and deleted a record using the Power App, you will save the Power App for Adatum's users to access.

1. You should still be logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**; if not, then do so now.

2. In Microsoft Edge, the **Power Apps** tab should still be open from the prior exercise; if not, open a new tab in your browser and enter the following URL in the address bar: **https://make.powerapps.com** 

3. In the **Power Apps** studio, in the left-hand navigation pane, select **+Create**.

4. On the **Three ways to make an app** page, scroll down to the **Start from data** section and select **SharePoint**. 

5. A new browser tap opens that displays the available Connections. A **Hi Holly** dialog box will appear over top of this page. Since your country/region is the United States, select **Get started**.

6. In the **Power Apps** studio, on the **Connections** page, the details pane displays the **SharePoint** connection page. Under the **How do you want to connect to your data?** option, select **Connect directly (cloud services)** and then select the **Create** button.

7. On the left side of the screen, under **Connections**, you will see an available connection for SharePoint. In the detail pane, in the list of **Recent sites**, the **IT Services**– **https://xxxxxZZZZZZ.sharepoint.com/sites/ITservices** site should be displayed (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provided).   
‎  
‎Select the **IT Services** – **https://xxxxxZZZZZZ.sharepoint.com/sites/ITservices** site.

8. In the **Choose a list** window that appears, you should select the list that you want to use as the data source for your Power App. In this case, select **Service Desk Requests** and select the **Connect** button at the bottom of the screen.

9. Power Apps will connect directly to that SharePoint list and build a fully functional application using the **Service Desk Requests** list as its data source. When it is finished, a **Welcome to Power Apps Studio** dialog box will appear. Select **See a preview of this app** to preview the app from your browser. 

10. A preview of the app will appear as **BrowseScreen1** (see the BrowseScreen1 pane on the right-side of the screen). If the size of the screen is so small that you cannot read it, move the slider at the bottom of the screen to increase the image to a legible size.

11. Now that you have seen how the app will appear, you want to test the app by running it. To run the app, press **F5.**  
‎   
‎**Note:** If your SharePoint list is already populated with entries, you will see them listed here. In this task, you should see a summary of the 30 records in the Service Desk Requests lists. If you were working with a list that was empty, you would see nothing listed under **Search items**.

12. You now want to test how to add a record to the list. To create a new item, select the **plus (+)** sign that appears at the top right corner of the **Service Desk Requests** app. This opens a data entry form that contains fields mapping to each of the columns in the Service Desk Requests list. 

13. In the Service Desk Requests data entry form that apears, enter the following information:

	- Title – **Power App test** (this field only appears if you used PowerShell to create the Service Desk Requests list; it does not appear if you created the list using Excel).
	
	- Issue Status – **Active**

	- Date - **June** 

	- Description – **Test record for the new ticketing system Power App**

	- Location – **Main Office**

	- Issue Title – **Power App test**

	- Customer – leave blank

	- Assign To – enter **Allan**, then select **Allan Deyoung** from the user list that appears

14. To save the record that you just added, select the **check mark** icon that appears at the top right corner of the **Service Desk Requests** app.   
‎  
‎However, instead of the record being saved, note the following error message that is displayed below the **Customer** field, which is also highlighted in a red outline: **An entry is required or has an invalid value. Please correct and try again.**   
‎  
‎Note how the **Customer** field has an asterisk to the left of the field name. This indicates it is a required field, which is why you received the error when you left the field blank. 

15. In the **Customer** field, enter **Megan**, then select **Megan Bowen** from the user list that appears. 

16. Select the **check mark** icon to save your changes. If the record is accepted, the list of records will be displayed. Scroll down the list and locate your record to verify that it appears. 

17. You should now verify that the record has been added in the Service Desk Requests list in the IT Services site. In your Edge browser, select the **IT Services – Service Desk Requests** tab in your browser, and then select the **Refresh** icon on the left side of the address bar. Scroll to the bottom of the list and verify the record appears.

18. Switch back to the **App – Power Apps** tab in your brows. The app should still be running in preview mode; if not, press **F5** on your keyboard to run the app. 

19. Now that you have added a record into the Service Desk Ticketing system using the Power App, you want to test how the app works in editing an existing record.   
‎  
‎Select the **right arrow (&gt;)** for any item. This displays the **Details** screen for that item. On this screen, you can either edit the record by selecting the **pencil icon** at the top of the form, or you can delete the record by selecting the **trash can icon**.  
‎  
‎For this record, select the **pencil icon** to edit it. Change any of the fields (**Hint:** to easily identify your change in the Service Desk Requests list, change the **Issue Title** value to **Edit Test** or some other easily identifiable text. When you are done, select the **check mark** icon to save your change. 

20. On the **Details** screen that appears, verify the change you made is reflected on the screen.

21. You should now verify that the record has been updated in the Service Desk Requests list in the IT Services site. Select the **IT Services – Service Desk Requests** tab in your browser, and then select the **Refresh** icon on the left side of the address bar. Scroll down through the list and verify the record has been updated.

22. Switch back to the **App – Power Apps** tab in your browser. The app should still be running in preview mode; if not, press **F5** on your keyboard to run the app. 

23. You should still be on the **Details** screen for the record that you just updated. Select the **left arrow (&lt;)** that appears at the top of the form. This will return you to the browse screen for the app.   
‎  
‎**Note:** Depending on the field that was modified, you may or may not see the change on the browse screen.

24. Now that you have added and changed records in the Service Desk Ticketing system using the Power App, you want to test how the app works in deleting an existing record.   
‎  
‎Scroll down through the list and select the **right arrow (&gt;)** for the record that you added at the start of this task. This displays the **Details** screen for that item. 

25. To delete this record, select the **trash can** icon.

26. Once the record is deleted, the browse screen should be displayed. Scroll down through the record list to verify that the record no longer appears. 

27. You should now verify that the record has been deleted from the Service Desk Requests list in the IT Services site. Select the **IT Services – Service Desk Requests** tab in your browser, and then select the **Refresh** icon on the left side of the address bar. Scroll down through the list and verify the record no longer appears.

28. Switch back to the **App – Power Apps** tab in your browser. The app should still be running in preview mode; if not, press **F5** on your keyboard to run the app. 

29. You should still be on the browse screen for the app. To stop running the app and return to preview mode, select the **X** in the circle that appears in the upper right corner of the screen. 

30. If a **Did you know?** dialog box appears, select the **Don’t show me this again** check box and then select **Ok**. 

31. Now that you have validated that the Power App can successfully add, edit, and delete records in the Service Desk Requests list in the IT Services site, you want to save the app so that your users can access it.   
‎  
‎You should be back in preview mode in the **Power Apps Studio**. In the menu bar at the top of the page, select **File** on the top left side of the screen

32. On the **Settings** page, you should enter the following information:

	- Name - **Service Request Ticketing App** 

	- Icon – You can optionally change the icon for your app by scrolling down through the list of preformatted icons and selecting a different one

	- Background color – You can change the background color for the icon by scrolling down though the available background color samples and selecting a new one

	- Description – **This app maintains service request tickets in Adatum’s new Service Request Ticketing system** 

33. In the left-hand navigation pane (to the left of the Settings pane), select **Save.**

34. In the **Save as** window that appears, select the **Save** button that appears at the bottom of the screen. 

35. On the **Service Request Ticketing** app page, select the **Share** button so that you can share this app with the IT Consultant. 

36. On the **Share Service Request Ticketing app** window, in the **Enter a name, email address, or Everyone** field, enter **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix for **your fellow student that was assigned to you by your instructor**). Select the **MOD Administrator (guest)** user account that is displayed in the user list below this field, and then select **Share**.

37. Close the **Share Service Request Ticketing app** window by selecting the **X** in the upper right corner of the window. 

38. This returns you to the **Apps &gt; Service Request Ticketing app** window. Close this tab in your browser. 

39. You should have two Power Apps tabs open in your browser – the **Power Apps** tab that displays Power Apps Studio, and the **Service Request Ticketing app** tab that displays the browse screen for the new app you just created.   
‎  
‎**Leave both tabs open in your browser as they will be used in the next task.** 
 

### Task 3 – Review the Power App Studio

Now that Holly Dickson has built her first Power App and has used it to successfully manage data in Adatum’s new Service Request Ticketing system, she wants to spend more time familiarizing herself with the contents of Power Apps Studio. In your role as Holly, you will use this task to review Power Apps Studio so that you can learn how the app works and view all the details behind each component.


1. You should still be logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**; if not, then do so now.

2. In you Microsoft Edge browser, the **Service Request Ticketing app** tab should still be open from the prior task; if not, repeat the steps from the prior task to create a new app using the **Service Desk Requests** list in SharePoint as your data source. Once you reach the point of previewing the app, then stop and move on to the next step in this task.  

3. In **Power Apps Studio**, the navigation pane on the left side of the screen shows the **Tree view** for the screens contained in the application. There are two menu tabs in this Tree view – **Screens** and **Components**. The **Screens** tab is underlined, indicating that it’s the tab currently being displayed (it is displayed by default). Select the **X** that appears to the right of **Tree View** to close this pane.

4. By closing the Tree View pane, you see a vertical ribbon on the left-side of the screen that displays multiple icons. Hover your mouse over each icon to see what they are called.   
‎  
‎Select the first icon (the three horizontal lines) to expand the pane to show the names of the remaining icons. If you select this same icon again, the pane contracts and only shows the icons. 

5. Select the second icon, which is the **Tree view**. This opens the **Tree view** pane that you started with. We will return to this pane later, so for now, select the **X** to close it. 

6. Select the third icon, the plus (+) sign, to display the **Insert** pane. The **Insert** pane displays different components that can be added to an app. Scroll down through the list of components to familiarize yourself with what can be added, but do not add anything at this time. When you are done, select the **X** to close the pane.

7. Select the fourth icon, the database icon, to display the **Data** pane. This pane displays the source used in the current app, which is the **Service Desk Requests** list. From here you can add additional data sources to your app if you desire (you will not do so for the Service Request Ticketing app). Select the **X** to close the pane. 

8. Select the fifth icon to display the **Media** pane. This pane enables you to upload images, video, and audio files to use in your app. Select the **X** to close the pane. 

9. Select the final icon to display the **Advanced Tools** pane. This pane enables you to monitor activity within your app and write tests to validate the app. Select the **X** to close this pane.

10. Select the **Tree view** icon to re-open the **Tree view** pane. 

11. From the **Tree view**, notice on the bottom bar on the screen that **BrowseScreen1** is currently being displayed. This object is also highlighted in the **Tree view**, where it’s currently expanded. Select **BrowseScreen1** in the **Tree view** to contract this tree. 

	Note that there are three screen objects available for this app – the browse screen (**BrowseScreen1**), the detail screen (**DetailScreen1**), and the edit screen (**EditScreen1**).   
‎  
‎**Note:** If necessary, use the slider bar at the bottom of the screen to enlarge the image to make it more legible.  
‎  
‎Select the **right arrow (&gt;)** next to **BrowseScreen1** to expand it again.

12. Under the **BrowseScreen1** tree, select **BrowseGallery1** and notice what gets selected on the app screen - the area in the app where the data records are displayed; this area is known as the Gallery. Also notice the pane that is displayed on the right-hand side of the screen. This is known as the **Properties** pane. It displays the properties of the item that you selected in the **Tree view**. 

13. In the **Tree view** pane, under the **BrowseGallery1** tree, select **IconNewItem1**. Notice how the **plus sign (+)** icon on the top right corner of the app screen gets selected. The app screen is displayed on what is called the **canvas pane**. 

	**Important:** Every component viewed in your app screen has a corresponding component in the **Tree view**. 

14. Select different components under the **BrowseGallery1** tree and notice which portion of the app screen is selected. Also review the available properties for the selected item in the **Properties pane**.

15. In the **Tree view**, select the **Components** tab that appears to the right of the **Screens** tab. This tab is used for adding additional components; that is, you can add an item from the **Insert** pane or connect to another data source. You can import components and export components as well. This is an advanced feature that is beyond the scope of this course. 

16. Select the **Screens** tab to return to the app screen.

17. Leave this tab open in your browser for the next task.

 

### Task 4 - Customize the Power App

The app that Holly created in the earlier task is known as a canvas app. It was developed entirely by PowerApps based on a data source, which in this case was the Service Desk Requests list in SharePoint. One of the benefits of canvas apps is that they are customizable, even if they were not built from a blank canvas. In this section, you will make a small customization to the existing app. 
 

1. You should still be logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**; if not, then do so now.

2. In your Microsoft Edge browser, the **Service Request Ticketing app** tab should still be open from the prior task. If the **Tree view** pane is not open, then open it now. 

3. In the **Tree view** pane, under the **Screens** tab, expand **BrowseScreen1** (if necessary) and select **BrowseGallery1**.

4. In the **Properties** pane, notice that on the top of the window it says **Gallery.** This indicates the type of component and underneath it shows the name given to the gallery component, **BrowseGallery1**. 

5. In the **Properties** pane, locate the **Layout** property for the gallery, which displays **Title, subtitle, and body.** Select the drop-down arrow for this field to see the available layout values in a **List** window. If you wanted to, this is where you would modify the layout of the gallery. Select the **Title, subtitle, and body** layout option to return to the **BrowseGallery1** window. 

6. On the **Properties** pane, locate the **Fields** property (it appears above the Layout property). Select **Edit**, which appears to the right of the **Fields** property. A new **Data** window opens which shows the fields from the SharePoint list that are mapped to the Body, Subtitle, and Title fields that appear for each record displayed in the browse screen.   

7. Holly has decided to customize the browse screen to change the **Body1** field so that it maps to the **Assigned To** column of the SharePoint list. Select the drop-down arrow for the **Body1** field and scroll up and select **Assign To**. 

8. In the **Data** window, notice two changes - the value in **Body1** is now **Assign To**, and a **Display value** field has appeared below the **Assign To** value. Select the drop-down arrow for the **Display value** field, and in the menu list, select **DisplayName**. 

	Notice how the records displayed in the gallery have been updated to reflect the **Assign To** field. 

9. Close the **Data** window by selecting the **X** in the upper right corner.

10. Holly now wants to customize the browse screen to change the **Title1** field so that it maps to the **Issue Title** column of the SharePoint list. Select the drop-down arrow for the **Title1** field, select **Issue Title**, and then close the **Data** window. 

11. You are now ready to save your changes to the app. Select **File** from the top menu bar of the PowerApps screen, and then select **Save** from the navigation pane that appears on the left side of the screen. In the body of the screen, in the **Service Request Ticketing app** window, select the **Save** button. 

12. In the **Service Request Ticketing app** window, it should display a message indicating that all changes were saved. However, to propagate the saved changes to the live version of the app, you must publish the app. To do so, select the **Publish** button. 

13. In the **Publish** dialog box that appears, select **Publish this version**. The changes are saved and published so the next time you preview the app, it will include the update.

14. Now that the changes have been saved and published, you can share the app with additional users if you wish. However, at the time you created the app in the previous task, you only shared it with the IT Consultant’s **MOD Administrator** account. Since you don’t want to share it with any other users at this time, you will just ignore this **Share** option. 

15. In your Edge browser, close **all** the Power Apps-related tabs that are open. In this next exercise, you will open a new Power Apps session to start fresh.
 

### Task 5 - Add the Ticketing System app to Microsoft Teams

In your role as Holly Dickson, you have created the new Service Desk Ticketing system in SharePoint, and you just created a Power App that can access this system and maintain service desk tickets within it. At this point, you thought your work with the new ticketing system was done. 

However, the IT Consultant has just informed Holly that there’s another way in which she can make the ticketing system available to Adatum’s users. By adding the Power App that she just created to Microsoft Teams, Adatum’s employees can work directly from Teams to access the app and submit their service request tickets. Holly is very excited to test this out. In your role as Holly Dickson, you will perform this task to add the new Power App to Microsoft Teams.
 

1. You should still be logged into LON-CL1 as **ADATUM\Administrator** and password **Pa55w.rd**; if not, then do so now.

2. You will first verify whether Teams is configured to allow the use of PowerApps.   
‎  
‎In your Edge browser, select the **Microsoft 365 admin center** tab if it’s still open; if not, open the **Office 365 home** page and select the **Admin** icon. If required, log into Microsoft 365 as **holly@xxxxxZZZZZZ.onmicosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) and a password of **Pa55w.rd**. 

3. In the **Microsoft 365 admin center**, select the **…Show all** option in the navigation pane to display the admin centers, and then select **Teams**.

4. In the **Microsoft Teams admin center**, in the left-hand navigation pane, select **Teams Apps**, and then select **Manage apps**. 

5. In the **Manage apps** window, since there are so many apps in the apps list, you will use the **Search** feature to quickly locate PowerApps. Enter **Power Apps** in the **Search by name** field. This field is on the right-side of the menu bar, above the row of column headings.

6. In the list of apps, select **Power Apps.** 

7. In the **Power Apps** window, verify the **App status** is set to **Allowed**. If this is set to **Blocked**, then select this toggle switch to change it to **Allowed**.

8. You will now enable the Power App for your Service Desk Ticketing system within Teams.   
‎  
9. Since Holly created the Service Request Ticketing system app, you must be logged into Teams as Holly to add this Power App to Teams.  
‎  
‎If the **Teams** app is not open on your taskbar, then enter **Teams** in the **Search** box on the taskbar, select **Microsoft Teams** from the menu, and if prompted, sign in as **holly@xxxxxZZZZZZ.onmicosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider).   
‎  
‎If you are not prompted to sign in, then check to see who the Teams apps is signed in under. If the user icon is **Holly Dickson**, then skip to the next step; otherwise, select the user icon and in the menu, select **Sign out**, sign back in as **holly@xxxxxZZZZZZ.onmicosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) with a password of **Pa55w.rd**, and then select **OK** if a **Stay signed in to all your apps** window appears.

10. If an **Enjoy the team and the teamwork!** window appears, select **Let's go!**. 

	In the **Teams** window, towards the bottom of the left-hand navigation pane, select **Apps**. 

11. In the **Apps** window, enter **Power Apps** in the **Search all apps** field at the top of the left-hand navigation column.

12. In the search results in the body of the window, select **Power Apps**. 

13. In the **PowerApps** window, select the drop-down arrow to the right of the **Add** button. In the drop-down menu that appears, select **Add to a team**.

14. In the **Set up Power Apps for a team** window, select inside the **Search** field; this will display the **General** channel for Adatum Corporation. Select **General.** 

15. The system will display **Adatum Corporation &gt; General** in the **Search** field. Select the **Set up a tab** button at the bottom of the page. 

16. After processing for a short period, a **Choose from existing apps** window will appear. The **Service Request Ticketing app** that Holly just finished creating should appear in the list. Select this app.   
‎  
‎**Important:** Note the message that appears at the bottom of the window: **Make sure your team can use this app. If you’re its owner, share access.** Since you shared this app with the IT Consultant’s MOD Administrator account at the time you published the app, you do not need to share it with anyone else at this time for the purpose of this lab. However, in a real-world scenario, once you were ready to make an app available to other users within the organization, you would need to share the app with them either at the time you published it, or at this point in the process when adding the app to Teams. 

17. Select **Save.**

18. This opens the **General** channel. Note how a new tab was created at the top of the page for the **Service Request Ticketing app**, which is currently selected. The app is running in the window, which enables you to access and maintain service tickets in the **Service Desk Requests** list in SharePoint. 

19. Since the Power App was shared with your IT Consultant’s MOD Administrator account, you can test this feature by either requesting that your fellow student log into Teams in his or her VM environment using LON-CL1, or testing it yourself by signing out of Teams as Holly and logging back in as the IT Consultant’s MOD Administrator account (**admin@xxxxxZZZZZZ.onmicrosoft.com**, where xxxxxZZZZZZ is **your fellow student’s tenant prefix that was assigned to you by your instructor**).  
‎  
‎In either case, once Microsoft Teams is open, select **Teams** from the navigation pane. The **General** channel will appear by default, so select the **Service Request Ticketing app** tab at the top of the form to initiate the Power App within Microsoft Teams.
 

### Task 6 – Run the app from a mobile device (optional)

This task, which is strictly optional, provides instruction on how to run an app from a mobile device. While you can test this out if you would like with the **Service Request Ticketing app**, these instructions are simply provided for your benefit for future use with any Power Apps that you wish to use.  

1. To run the app from your mobile device, download and install **Power Apps** from the **App Store** or **Google Play** onto an iPhone, iPad, or Android device.

2. The app will be available in the list of published Power Apps. Open the app and sign-in as **holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix that was provided by your lab hosting provider). Enter your tenant password as the Password.

3. Tap on the **Service Request Ticketing app** to run it. 

4. The first time you open PowerApps on your mobile device you may see some instructions on how to close the app (swipe left on an iPhone). 

5. To pin the app, close out of the app (swipe left on an iPhone), select the **ellipses** icon, select **Pin to Home** from the menu, and then follow the instructions on the screen for your particular device.
 

**Congratulations! You have created a Power App from a SharePoint data source, which in this case was the new Service Desk Ticketing system that you earlier created in SharePoint.** 

# Proceed to Lab 3 - Exercise 7
