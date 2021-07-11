# Module 4 - Lab 3 - Exercise 10 - Build a Power BI report and dashboard

Holly Dickson is nearing the end of her excursion into the Microsoft Power Platform environment. She has built two Power Apps and a Power Automate Flow, all based on the Service Desk Ticketing system she created earlier in SharePoint. 

She is now interested in building and sharing a Power BI report and dashboard based on the SharePoint ticketing system as well. Adatum’s IT Consultant has suggested that she use Power BI Desktop, which is a free application that she can install locally that will let her connect to, transform, and visualize the ticketing system data. She can then use Power BI Desktop to create reports, and then use the Power BI service to share her reports with others. 

In your role as Holly Dickson, you will use this exercise to create some basic visualizations for a Power BI report; the visualizations will be based on the **Service Desk Requests** list in the SharePoint team site titled **IT Services**.


### Task 1:  Create a Power BI report

In this task, you will download and install the Microsoft Power BI Desktop. Once installed, you will create a Power BI report based on the new Service Desk Ticketing system that you created earlier in SharePoint.

1. After having completed the prior lab exercise in which you created a Power Automate flow, you should still be logged into LON-CL1 as the **Administrator** and a password of **Pa55w.rd**; if not, then do so now.

1. In your Edge browser, make sure that your new Service Desk Ticketing system is open in a tab. The tab should be titled **IT Services – Service Desk Requests – All Items**. If you do not have this tab open, then go to the **SharePoint admin center**, select **Active Sites**, select **IT Services** from the **Active Sites** list, select **Site contents**, and then select the **Service Desk Requests** list. 

1. In your browser, open a new tab and enter the following URL in the address bar: **https://aka.ms/pbiSingleInstaller**

1. This opens the **Microsoft Download Center** for **Microsoft Power BI**. Scroll down to the **Microsoft Power BI Desktop** section and select **Download.**

1. In the **Choose the download you want** window, select **PBIDesktopSetup_x64.exe** then select **Next** on the bottom of the screen. The status of the download will display on the notification bar at the bottom of the screen.

1. On the notification bar at the bottom of the screen, select **Open file** once the download of **PBIDesktopSetup_x64.exe** is complete.

1. The **Microsoft Power BI Desktop (x64) Setup** wizard will begin. On the **Welcome to the Microsoft Power BI Desktop (x64) Setup Wizard** page select your language and then select **Next.** Another **Welcome** page will appear; select **Next** on this page as well. 

1. On the **Microsoft Software License Terms** page, select the check box to accept the license terms and then select **Next.** 

1. On the **Destination Folder** page, accept the default location and select **Next.** 

1. On the **Ready to install Microsoft Power BI Desktop (x64)** page, select **Install**.

1. On the **Completed the Microsoft Power BI Desktop Setup Wizard** page, select **Finish.** This will launch the Power BI Desktop.

1. When the **Power BI Desktop** opens, a window will appear in the middle of the screen that has three panes. The left-hand pane is a **Power BI Desktop** pane that enables you to **Get data**, view **Recent sources**, and **Open other reports**. The middle pane is a **Collaborate and share** pane in which you can select **Get started** to use Power BI. The right-hand pane provides free tutorial videos and links to **What’s New**, **Forums**, **Power BI Blog**, and **Tutorials**. Feel free to review any of this information. 

	When you are ready to proceed, select the **X** in the upper right-hand corner to close this window. 

1. If you are already signed into Microsoft 365, then you may automatically be signed into Power BI Desktop as the same user that is signed into Microsoft 365. However, if the **Sign in** option appears in the upper-right corner of the screen, then select it now to sign in.

	Assuming you must sign in, select the **Sign in** option. On the **Enter your email address** dialog box, enter **Holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) in the email address field and then select **Continue**. 
	
	In the **Pick an account** window that appears (which may take a minute or so to appear), select **Holly@xxxxxZZZZZZ.onmicrosoft.com**. In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in**.  

1. In the **Power BI Desktop**, you want to create a new report based on the Service Desk Ticketing system you created earlier. You must begin by naming the report, so select **File** from the menu bar, select **Save as,** and enter **ServiceRequestPowerBI** in the **File name** field. By default, the file will be saved in the **Documents** folder as a Power BI file (.pbix). Select **Save**.

1. In the ribbon that appears at the top of the screen below the menu bar, select **Get data**. In the drop-down menu that appears, select **More…** 

1. In the **Get Data** window that opens, type **SharePoint** in the Search box that appears above the left-hand navigation pane. In the detail pane on the right, three SharePoint options will appear. Since you used the on-premises version of SharePoint to create the Service Request Ticketing system, select **SharePoint Online List**, and then select **Connect**.

1. In the **SharePoint Online lists** window that appears, enter the following URL for the Service Request Ticketing system in the **Site URL** field: **https://xxxxxZZZZZZ.sharepoint.com/sites/ITservices** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting partner). Select **OK.**  

1. In the pop-up window that appears that displays the SharePoint site URL at the top and three authentication options on the left-hand navigation pane (Anonymous, Windows, and Microsoft Account), select **Microsoft Account**. A message will be displayed indicating you are not signed in. Select the **Sign in** button. In the **Pick and account** window, repeat the previous steps to sign in as **Holly**.

	The message that indicated you were not signed in will now change to indicate that you are currently signed in. Select **Connect**.

1. A **Navigator** window opens that provides a list of tables from the SharePoint data source that is used by the Service Desk Ticketing system. In the list of tables that appear in the left-hand pane, select the check box to the left of **Service Desk Requests**. The details for this table will then appear on the right side of the window. If the details for this table do not appear, select the **Refresh** icon on the top right corner of the navigator window.  
‎  
‎**Note:** If you select **Service Desk Requests** but do NOT select the check box, the details for the table will display in Preview mode on the right, and the buttons at the bottom of the screen will be disabled. Since you want the buttons enabled, you must select the check box to the left of **Service Desk Requests**.   
‎  
‎**Important:** Even though the **Load** button is highlighted by default, **do NOT select it or press Enter - in fact, do NOT select any of the buttons at the bottom of the page at this time!!** There are a couple of fields that need to be manipulated first before you load them into the Power Query editor. You will do that in the next step.

1. In the detail pane on the right side of the **Navigator** window, select the scroll bar at the bottom of the window and scroll to the right to view the data. While you will scroll past many fields that you will probably not recognize, look for the fields that are part of your SharePoint list.   
‎  
‎Also note that the names of some of the fields will not map to the names used in the SharePoint list. This is due to the fact that some SharePoint fields are predefined, and in SharePoint sites, you rename them to map to whatever actual value you have in the site. For example, as you scroll to the right, note that the **Title** column displays the **Issue Status** that appears in the ticketing system.   
‎  
‎What you will not see in the list of fields are the **Customer** and **Assign To** fields that display the users’ names. Instead, you will see a **CustomerId** field and an **AssigntoId** field, both of which contain numerical values rather than the actual persons’ names. This reason for this is that name fields are a special type of lookup field. The numerical values stored in these fields actually point to the record associated with the person, and each record stores more information for that person than just his or her name (even though the SharePoint list displays only the name).   
‎  
‎Therefore, you must instruct Power BI as to what specific information you want retrieved from the **Customer** and **Assign To** records. For the Power BI report, you only want to display each person’s name, just as you do on the SharePoint list.   
‎  
‎You will do this in the next few steps when you use the **Power Query Editor** to select the person’s name from the **Customer** and **Assign To** records. 

1. Now that you understand how the Customer and Assign To fields are handled, you are ready to proceed. At the bottom of the window, select the **Transform Data** button, which opens the **Power Query Editor**. Maximize this window.

1. The **Power Query Editor** provides a great deal of functionality that enables you to transform data, clean data, create relationships between tables, and so on. For this exercise, you will use the Power Query Editor to focus on the simplest way of getting the persons’ names to appear in the Customer field and the Assigned To field.   
‎  
‎In the **Power Query Editor**, use the scroll bar to scroll to the right until you find the column labeled **FieldValuesAsText** (this column is in the middle of a bunch of columns whose rows display the word **Record** in orange-colored font; so you can quickly scroll to the right until you come upon the orange colored Record rows and then locate the **FieldValuesAsText** column). Select the icon to the right of the **FieldValuesAsText** column name.

1. This opens a new window that shows all the columns that associated with this data type. In the top right corner of this window, select the "A thru Z" sort box that appears to the right of the Search field, and in the menu that appears, select **Name**. In the list of columns, the first check box is **(Select All Columns),** and since it is selected, all the columns below it are selected. You want to unselect this check box, which unselects all the other columns. The reason for doing this is that you only want to select the **Customer** and **Assignto** columns, which you will do in the next two steps.

1. Scroll down through the list of columns until you locate the **Assignto** column and then select its check box. 

1. Then scroll down to the **Customer** column and select its check box. 

1. Select **OK**.

1. Note how the **FieldValuesAsText** column is replaced with two **FieldValuesAsText**-related columns, one titled **FieldValuesAsText.Customer** and the other **FieldValuesAsText.Assignto.** The names associated with these fields are displayed for each record from the SharePoint list. 

1. On the far-left end of the ribbon at the top of the **Power Query Editor**, select **Close &amp; Apply**. In the drop-down menu that appears, select **Close &amp; Apply**. 

	An **Apply query changes** window appears that shows the progression of applying the data from the SharePoint list to the report. It will take a few seconds for the query changes to apply.

1. Once the query process completes, a **Fields** pane should appear on the far right of the screen. If the **Fields** pane is not expanded to show the actual fields, select the left pointing arrow **(&lt;)** that appears above **Fields** to open the pane.   
‎  
‎The **Fields** pane should display the fields associated with the **Service Desk Requests** list. If you only see the Search field and the table name **Service Desk Requests**, then select the down arrow that appears to the right of **Service Desk Requests** to display all the fields. 

1. You will now create visualizations for your Power BI report. Power BI Desktop treats visualizations similar to how Microsoft Excel treats workbooks. Notice the Page tabs at the bottom of the desktop; these are similar to the workbook tabs used in Excel. Whereas Excel refers to each tab/workbook as a Sheet, Power Bi refers to each tab as a Page. And just as you can rename a workbook in Excel, so too can you rename a visualization in Power BI - simply right-click on a Page tab and rename it. 
‎  
‎There is one major difference between an Excel sheet and a Power Bi page. An Excel sheet only contains one workbook; however, a Power BI page can have multiple visualizations on the page.  
‎  
‎For this visualization, right-click on **Page 1** and select **Rename Page** in the menu that appears. Enter **Service Request Tickets** as the new name and press Enter to change the page name.

1. The **Visualizations** pane (which appears to the left of the **Fields** pane) includes a series of icons that represent the different types of visualizations that you can create. If you do not select an icon from the **Visualizations** pane, the default visualization type will be applied, which is a **Table**.   
‎  
‎The first visualization that you create will use the default **Table** visualization. While you do not have to select an icon for the Table visualization, it is recommended that you do so to see how it will appear in the report canvas. When you hover your mouse over each icon, the visualization type is displayed. Select the **Table** icon (fifth row, second from the left; hover your mouse over it to verify this is the correct icon before selecting it). 

1. Now that you have selected the type of visualization that you want to create, you must select the fields that you want displayed in the visualization. As you select each field, note how they appear in the table visualization in the report canvas. Do not worry about the order in which they appear; you will change the order once all the fields are selected.  
‎  
‎In the **Fields** pane, select the check boxes next to the following fields (note – actual field names are not always the same as the field name displayed in the SharePoint list):

	- Created – select the **Created** check box

	- Customer – select the **FieldValuesAsText.Customer** check box

	- Assigned To – select the **FieldValuesAsText.Assignto** check box 

	- Issue Title - select the **issueTitle** check box 

	- Location – select the **Location** check box

	- Issue Status – select the **Title** check box

1. You can change the size of the table visualization in the report canvas by selecting the bottom right corner of the table and dragging it diagonally down to the right. Keep in mind that you will be adding a second visualization to this page, so leave enough room in the report canvas to add another visualization. 

1. The columns will appear in the visualization in the same order in which they were selected. In the prior step, the column names were simply listed in the sequence in which they appeared in the list; this made it easier to select them as you scrolled down through the list.   
‎  
‎However, now you want to rearrange the columns to appear in the order that you want. In the **Visualizations** pane, below the six rows of icons is a row of three tabs that are represented by icons: **Fields**, **Format**, and **Analytics.** The **Fields** tab, which is selected by default, displays the list of fields in the order in which they will appear in the table. To move a field to the left, select the field and drag and drop the field up in the list until it appears where you want. To move a field to the right, select the field and drag and drop it down in the list until it’s in the correct location.  
‎  
‎**Note:** Alternatively, you can select the down arrow in the field, and in the menu that appears, select **Move**, and then select **Up** or **Down**. Since you would have to repeat this process multiple times to move a field multiple positions to the left or right, it is much simpler to just drag and drop the field in the list of **Values**.   
‎  
‎Take this opportunity to arrange the columns in whatever order you want.

1. Next, you want to rename the columns so that they map to the user-friendly column names used in the SharePoint list rather than their database field names. To rename a field, under the **Fields** tab in the **Visualizations** pane, select the drop-down arrow for the field, select **Rename for this visual** in the menu that appears, and then enter the new name and press Enter.   
‎  
‎Change the names of the following fields:

	- FieldValuesAsText.Customer – rename to **Customer**

	- FieldValuesAsText.Assignto – rename to **Assigned To**

	- issueTitle – rename to **Issue Title** 

	- Title – rename to **Issue Status**  
‎  
‎This completes the **Table** visualization. 

1. You will now create a second visualization for this page; this will be a **Stacked Column Chart** visualization that displays the total count of service tickets by **Location** and **Issue Status**.  
‎  
‎You will create this visualization on the same page as the **Table** visualization. To do so, you must ensure that the **Table** visualization you just created is NOT selected. Move your mouse to a white space on the report canvas and left-click on the white space where you want your new visualization to appear.   
‎  
‎**Important:** If you select a new visualization while the current visualization is selected, the current visualization will be deleted. If this occurs, press **Ctrl-Z** to undo the deletion.

1. In the **Visualizations** pane, select the **Stacked column chart** icon (top row, second from left; verify by hovering your mouse over the icon to see its name). Note the visualization of the chart that appears on the report canvas. Increase the size of the chart by dragging its bottom-right corner down diagonally.

1. You now want to define the chart’s horizontal axis. In the **Fields** pane, select the **Location** field, and holding your left mouse button down, drag the field into the **Add data fields here** box for the **Axis** option in the **Visualizations** pane.

1. In the **Fields** pane, select the **Title** field (this is the Issue Status in the SharePoint list) and drag it into the **Add data fields here** box for the **Legend** box in the **Visualizations** pane.

1. In the **Fields** pane, select the **Title** field again and drag it into the **Add data fields here** box for the **Value** box in the **Visualizations** pane.

1. Since the Title field is referred to as the Issue Status in the SharePoint list, you want to rename it here to reflect this name in the chart.

	- In the **Legend** field, select the **drop-down arrow** next to **Title**, and in the menu, select **Rename for this visual**. Enter **Issue Status** as the new name of the **Legend**.

	- In the **Value** field, select the **drop-down arrow** next to **Count of Title**, and in the menu, select **Rename for this visual**. Enter **Count of Issue Status** as the new name of the **Value**.

1. To change formatting of the chart, ensure the chart is selected. If the chart is not already selected, click your mouse inside the area of where the chart had previously appeared; this will display the chart outline. 

1. In the **Visualizations** pane, select the **Format** tab (its icon appears to the right of the Values icon).

1. In the **Format** tab, all the objects that you can format (General, Legend, X axis, Y axis, and so on) appear below the **Search** field. Select the **down-arrow** key next to **Legend.** This displays all the values that can be formatted for the **Legend.**

1. The first Legend object is **Position**. In the **Position** field, select the drop-down arrow and select **Right center**. Note how the legend now appears centered on the right side of the chart.

1. Select the **up-arrow** key next to the word **Legend** to collapse the Legend options.

1. On the **Data labels** option, the toggle button is currently set to **Off**. Select this toggle button to turn it **On.**

1. Scroll down past the **Data labels** option and locate **Title**, then select its **down-arrow** to display the **Title** options. Within the **Title** object, update the following options:

	- Enter **Ticket Count by Location and Issue Status** in the **Title text** field. 

	- Scroll down to the **Font color** option and select the color of your choice for the Title. 

	- Scroll down to the **Alignment** option. The **Left**-aligned icon is currently selected. Change this by selecting the **Center**-aligned icon.

	- Note the changes to the Title – the Title text, the color, and the alignment.

1. Scroll back up in the list of options until you get back to **Title**. Select the **up-arrow** to collapse the **Title** options. 

1. From the **Title** option, scroll down and locate the **Border** option and then update the following settings:

	- The toggle button is currently set to **Off**. Select this toggle button to turn it **On**, which will display a border around the chart.

	- Select the down-arrow next to **Border** to see the available border options. In the **Color** option, change the color of the border to the color of your choice.   <br/>
	
	This completes the stacked chart visualization.  

1. Now that both visualizations are complete, note the data displayed for each. Both visualizations are based on ALL the records stored in the **Service Desk Requests** SharePoint List. Now let’s see what happens when you create data filters that filter the records viewed in each visualization. For example, if you created a filter for a specific customer, only the records for that customer would be processed by each visualization (as opposed to all customers that would be displayed by default).   
‎  
‎By creating a filter for the page, all visualizations on the page will be updated based on that filter. On the **Filters** pane, notice there are two options: **Filters on this page** and **Filters on all pages**. Each filter option enables you to add data fields that will apply to that option. For this lab, you are going to update the **Filters on this page** option by creating two filters – one by **Customer** and the other by **Issue Status**.  
‎  
‎In the **Fields** pane, select **FieldValuesAsText.Customer** and drag it into the **Add data fields here** box that’s under the **Filters on this page** option. This filter will show you the list of customers from the records in the SharePoint list, and it will display the number of records for each customer. If there are tickets that have no customer assigned to it, the filter option will appear as a number until a person is assigned. If you select one or more of these customers, the visualizations will only reflect the records for those customers. By default, all customers are displayed in the visualizations.

1. Now add a second filter based on the Issue Status of each service request ticket. Scroll down in the **Filters** pane until you are past the list of customers. Note that another **Add data fields here** box now appears. From the **Fields** pane, locate the item labeled **Title** (this is the **Issue Status** in the SharePoint list) and drag it into the **Add data fields here** box that’s under the **Filters on this page.**

1. Now test out the filters that you just defined for this page. Select **Megan Bowen** in the **Customer** filter. In the Table visualization, note how it eliminated all service request tickets except for those with **Megan Bowen** as the **Customer**. Also note the change to the stacked chart visualization since it only applies to the tickets in which Megan is the Customer. For the stacked chart visualization, it still counts the records with any of the three issue statuses.

1. Now let’s implement the second filter. In the **Title** (Issue Status) filter, select **Active.** Note how the number of records changed in the **Table** visualization; these are the service request tickets with Megan as the Customer and an Active status. Note also how the stacked chart only includes the records with Megan as the Customer and an Active status.

1. Now change the value(s) selected in the **Title** (Issue Status) filter to see how the visualizations change as the values selected change. Unselect **Active** and select **New**. Note the change to the list. Then unselect **New** and select **Resolved**. Note the changes to both visualizations as you change the selected filter value. Next select both **New** and **Resolved** and note the change.

1. Set each filter back to display all the records by selecting **Select all** for each filter; this clears all the check boxes for each filter.

1. Save your work by selecting the **Save** icon in the top left corner of the screen.

1. To publish your Power BI report, select Home on the menu bar, and then on the ribbon, select **Publish.**

1. From the **Publish to Power BI** window that appears, select **My workspace** and then press **Select**. 

1. Once published, a green check mark will appear next to the word **Success!** Select **Got it** to close the window.

1. Close the Power BI Desktop by selecting **X** icon in the top right corner of the screen.
 

### Task 2 - Create a Dashboard and view from Mobile device

Adatum’s IT Consultant has explained to Holly that once she has created a report that contains one or more visualizations, she can then create a dashboard based on that report. In fact, she could create a dashboard from a report, from scratch, from a dataset, or by duplicating an existing dashboard. Since pinning visualizations from a report that's already been built onto a dashboard is the quickest and easiest way to create a dashboard, Holly has decided that this is the route she is going to take. For her pilot project, Holly has decided to create a dashboard from the report that she created in the prior task.

Dashboards can only be created in Power BI Online because they are a feature of the Power BI service; they cannot be created in Power BI Desktop. Unlike Power BI reports, which are based on a single dataset and can created in both the Power BI Service and Power BI Desktop, dashboards can be based on one or more datasets and are a feature of just the Power BI Service. 

**Note:** At the end of this task are steps on how to use your mobile device to view the dashboard that you created. These steps are strictly optional. 

1. After having completed the prior task, you should still be logged into LON-CL1 as the **Administrator** and a password of **Pa55w.rd**; if not, then do so now.

1. In your Edge browser, open a new tab and then enter the following URL in the address bar: **https://powerbi.microsoft.com** 

1. This opens the **Microsoft Power BI service**, which is required to create a dashboard. On the right-hand side of the top row, select **Sign in**. In the **Pick an account** window, select Holly’s account (**holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in**. In the **Stay signed in?** window, select **Yes**.

1. In the left-hand navigation pane, select **My workspace.**  
‎  
‎**Note:** Since Holly is the same user who created the report that she now wants to pin to a dashboard, she should select **My workspace** (this will show just her work). However, if she was going to use a report created by another Adatum user, she would select **Workspaces** and then select **Adatum Corporation** (or if she was collaborating with a user from another organization that had shared a report with her, she would select that organization instead). 

1. At the top of the **My workspace** page you will see 3 tabs: **All**, **Content**, and **Datasets + dataflows**. On the **All** tab, which is displayed by default, two **ServiceRequestPowerBI** objects are displayed - one is the report that you just published and the other is a dataset (see the **Type** column). Select the **ServiceRequestPowerBI** report.

1. In the top-right corner of each visualization are several icons. Depending on the visualization size, they may not appear until you hover your mouse over the top right of the visualization (the icons may also appear on the bottom right corner if the visualization is flush with the top of the screen). Hover your mouse over the top right of the **Table** visualization and the four icons will appear. Then hover your mouse over each icon to display the tool tip for each.   
‎  
‎For the **Table** visualization, select the **Pin visual** icon. 

1. In the **Pin to dashboard** window, select **New dashboard,** enter **ServiceRequestDashboard** in the **Dashboard name** field, then select **Pin**. 

1. A **Pinned to dashboard** pop-up window will appear that allows you to create a phone view that will optimize your dashboard for phone views. For now, select **Go to dashboard**.   
‎  
‎**Note:** If you do not select anything when this pop-up window appears, it will close after a few seconds and you will remain in the report window. If this happens to you (for example, you were reading this instruction and the pop-up window suddenly closed), then in the left-hand navigation pane, select **My workspace**, and then under the **All** tab select the **ServiceRequestDashboard** you just created.

1. On your Dashboard page, notice at the top of the page how you can ask a question about your data. Select **Ask a question about your data**, which displays a Q&A screen with several predefined questions related to the data displayed in your dashboard. Select one of the available questions. If you enter your own question, Power BI will show a list of available questions that map to the text that you are typing.   
‎  
‎If you select **Exit Q&amp;A** on the top left corner of the screen, you will return to the dashboard. However, in the next step you want to pin the stacked column visualization to the dashboard, so you need to return to the report view.  
‎  
‎The top row of the page displays the **My workspace &gt; ServiceRequestDashboard &gt; Q&amp;A** navigation thread. Select the **My workspace** portion of this thread. 

1. In your **My workspace** page, in the **All** tab, select the **ServiceRequestPowerBI** report.

1. For the stacked column visualization, select the **Pin visual** icon. In the **Pin to dashboard** window that appears, the **Existing dashboard** option is selected by default, and the dashboard name is selected by default in the **Select existing dashboard** field. Since this is the dashboard you want to pin the visualization to, select **Pin**. 

1. In the **Pin to dashboard** pop-up window, select **Go to Dashboard**. If this window disappears before you can make this selection, then in the left-hand navigation pane, select **My workspace**, in the **All** tab, select **ServiceRequestDashboard**.

1. At this point you may be wondering why you created the dashboard since you have the same information in your report. In this lab exercise, you only have one report, but a dashboard can be made up of visualizations from many different reports. A dashboard provides a one-page view of your most important metrics, from one or many reports, and provides an entry way to the underlying reports and datasets.   
‎  
‎Select either visualization on your dashboard and note how you are taken back to the underlying report.

1. On the left-hand navigation pane, select **My workspace**.

1. On the main screen, under the **All** tab, hover your mouse over the name of the dashboard you created. This will display several icons to the right of the dashboard name, one of which is a **star** icon. You can mark this dashboard as one of your favorites by selecting this icon. Select the **star** icon. 

   Notice that when you select the star, it changes to a solid star rather than the outlined star that it originally appeared as. Select the **star** icon  again so that is no longer a Favorite; notice how it returns to its original unfilled state.   
‎  
‎Select the star icon again to make it one of your favorites.

1. In the left-hand navigation pane, select **Favorites**. You should see this dashboard in your list of favorites. Select the **ServiceRequestDashboard** to open it. 

   **THE REMAINING STEPS IN THIS TASK ARE OPTIONAL.**   
‎  
‎If you do not perform these remaining steps, leave the Power BI service open in your browser and proceed to the next task.

1. Now that you have created your dashboard, you can view it on a mobile device if you wish. In the menu bar at the top of the dashboard, select **Edit**. In the menu that appears, select **Mobile view**. 

1. If a **Phone Version** dialog box appears, select **Continue**.

1. An **Edit phone view** screen will appear that shows how the dashboard will appear on your mobile device. If you hover your mouse over each visualization, a border will appear. You can select a border and drag it to change the size of the visualizations.

1. To run the app from your mobile device, you must first download and install **Power BI** from the **App Store** or **Google Play**.

1. Once you have downloaded and installed the **Power BI** app to your phone, open the app and sign-in as **holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is  tenant prefix provided by your lab hosting provider).

1. You will see the dashboard and report listed on under **Recents.** 

1. The dashboard will also show up in your Favorites. Select the favorites icon on your mobile device (on the bottom of the screen for an iPhone), then select your dashboard.

1. Leave the Power BI service open in your browser and proceed to the next task.


### Task 3:  Share a Power BI Dashboard

As part of her pilot project, Holly wants to share the dashboard that she just created with Laura Atkins.

1. After having completed the prior task, you should still be logged into LON-CL1 as the **Administrator** and a password of **Pa55w.rd**; if not, then do so now.

1. You should also have the Power BI Service open in your Edge browser; if not, then open a new browser tab, enter **https://app.powerbi.com** in the address bar, and sign in as **Holly.**

1. In the **Power BI** tab in your browser, in the left-hand navigation pane, select **My Workspace.**

1. On the main screen, select the **Dashboards** tab (if necessary)**.** To the far right of the dashboard name are a series of icons that appear under the **Actions** column heading. Hover your mouse over each icon to see their tool tip.   
‎  
‎Select the **Share** icon. 

1. In the **Share dashboard** pane that appears, under the **Share** tab, you will enter the name of the person with whom you want to share the dashboard.  
‎  
‎In the **Enter email addresses** field, enter **Laura**, and then in the list of Adatum users whose first name starts with Allan, select **Laura Atkins.**

1. Towards the bottom of the Share dashboard pane, review the options that are already selected with a check mark. Leave the boxes checked and select **Grant access**. Once the dashboard is shared, you will see a message that says **Success!! Access has been granted.**

1. Log out of Microsoft 365 by selecting the user icon for **Holly Dickson** (the circle with Holly's icon in the upper right-hand corner), and in the **Holly Dickson** window that appears, select **Sign out**.

1. As a best practice, close all your browser tabs except for the **Sign out** tab once you have been signed out. 

1. Open your Edge browser and enter the following URL in the address bar: **https://app.powerbi.com**

1. In the **Sign in** window, scroll down on the page until you reach the **Sign up and get started today** pane, enter **Laura@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider) in the **Enter your work email address** field, and then select **USE IT FREE**.

1. If a **You have an account with us** window appears that indicates Laura is already using another Microsoft service, then select **Sign in** to enter your existing password. In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in**.

1. In the **Almost there** window, leave the check box blank so that Microsoft does not share Laura’s information with partners, and then select **Get started**.

1. In the **Invite more people** window, scroll to the bottom and select **Skip**.

1. If the **Pick an account** window reappears, select Laura’s account.

1. In the **Power BI** window, in the left-hand navigation pane, select **Shared with me.** Verify that the shared **ServiceRequestDashboard** is listed. Select the dashboard to verify that it opens and displays the report information.  

   **Note:** You would perform similar steps if you shared a report with another user; sharing within Power BI is not limited to just dashboards.

### Task 4:  Explore the Power BI Admin Portal

Now that Holly has created a report and dashboard and shared it with another Adatum user, she wants to explore the administrative functionality within Power BI that’s available in the Power BI Admin Portal.

1. Log out of Microsoft 365 by selecting the user icon for **Holly Dickson** (the circle with Holly's icon in the upper right-hand corner), and in the **Holly Dickson** window that appears, select **Sign out**.

1. In your **Edge** browser, enter the following URL in the address bar: **https://app.powerbi.com**

1. In the **Pick an account** window, select Holly’s account (**holly@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting provider). In the **Enter password** window, enter **Pa55w.rd** and then select **Sign in**. In the **Stay signed in?** window, select **Yes**.

1. At the top side of the **Power BI** **service screen**, to the right of the **Search** field, select the **gear (Settings)** icon, and in the menu that appears, select **Admin portal**.

1. In the navigation pane for the **Power BI Admin portal**, select **Tenant Settings**. Under **Workspace settings,** select **Create workspaces (new workspace experience)**. Under this option it should display a message that says: **Unapplied changes**. This indicates that you have settings that have not been applied towards creating new workspaces.
‎  
‎Select **Unapplied changes**. There are two settings on this page that you need to be aware of. The first is an Enabled/Disabled option that controls whether users in the organization can create app workspaces. Verify this setting is **Enabled**; if not, then select the toggle so that it’s Enabled. The second option indicates how you want to apply the permission to create workspaces. If **The entire organization** option is not selected, then select it now. 

1. Select **Apply**. Note the message indicating that it may take 15 minutes to apply these permission changes. However, proceed ahead and hopefully you will not have to wait this time to create a new workspace. 

1. Note that the Power BI Service’s navigation pane and the Admin portal’s navigation pane both have a **Workspace** option. However, you can only create a workspace through the Power BI Service. You can add members to a workspace using either one, but you can only create a workspace through the Power BI Service.   
‎  
‎In the left-hand navigation pane for the **Power BI Service**, select **Workspaces**.

1. If a **You have unapplied changes** window appears, select **Apply all**.

1. In the **Workspaces** pane that opens, select the **Create a workspace** button at the bottom of the pane.

1. In the **Create a workspace** pane that opens, enter **Test Workspace** as the workspace name and then select **Save**.

1. You just created the workspace using the Power BI Service, so now let’s see what workspace functionality is available in the Power BI Admin Portal.  
‎  
‎After you saved the workspace in the prior step, it took you to the workspaces page for the workspace that you just created (the **Welcome to the Test Workspace** page). You can return back to the **Admin portal** by selecting the back arrow (to the left of the address bar) twice, or by selecting the **gear (Settings)** icon and then selecting **Admin portal**. 

1. Select **Workspaces i**n the **Admin portal’s** navigation pane. **Test Workspace** should appear in the list of Workspaces. Select the **Test Workspace** name, which displays a check mark to the left of the name. In the menu bar that appears above the list, select **Details**. Review the information in the **Details pane** and then close it. 

1. With the **Test Workspace** still selected, select **Edit** on the menu bar. In the **Edit workspace pane**, note how you can change the workspace name and description even though you could not add a workspace using the **Power BI Admin portal**. Close the **Edit workspace pane**.

1. With the **Test Workspace** still selected, select **Access** on the menu bar. In the **Access pane**, note how you can add members to this workspace (you can do this through the **Workspaces** option in the **Power BI Service** as well). In the Enter email addresses field, enter **Patti**. In the list of users whose first name starts with Patti, select **Patti Fernandez** and then select **Add**. As you can see in the bottom portion of the pane, Patti now has **Member** permissions to this workspace. Close the **Access pane**. 

1. In the **Admin portal’s** navigation pane, select **Tenant settings**. Scroll down through the **Settings** page and review the settings that are available.

1. Scroll to the **Custom Branding** section at the very bottom of the **Settings** page. The **Theme Color** field controls the color scheme for the **Power BI Service**, which by default is set to black and gold. Go ahead and change the color to see the color scheme change in the Power BI Service.   
‎  
‎To change the color scheme, select the **black box** in the **Theme color** field to display the color palette. Drag the circle in the slider bar to the right until you locate a color combination that you like. Locate the circle that appears in the large colored square. Select this circle and drag it around the gradient colors. Note how the hex color codes change as you drag the circle. Once you find a color that you prefer, release your left-mouse button and select anywhere on the screen outside the color box to change the **Theme color**. Then scroll to the bottom of the page and select **Publish**.

1. In the **Publish your changes?** dialog box that appears, select **Publish**. 

1. In the **Published!** dialog box, select **OK**. 

1. Select the **Refesh** icon that appears on the address bar and note the color scheme change when the **Power BI Service** page refreshes itself. You can repeat this process until you find a color combination that you prefer.

1. Select any of the other options in the **Admin portal’s** navigation pane that are of interest to you. 

1. When you are done, close the **Power BI** tab in your Edge browser. 


# End of Lab 3

