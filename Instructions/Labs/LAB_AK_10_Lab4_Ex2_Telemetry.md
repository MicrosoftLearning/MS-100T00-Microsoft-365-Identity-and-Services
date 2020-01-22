# Module 10 - Lab 4 - Exercise 2 - Implement Office Telemetry Components 

In this exercise, you will configure the Microsoft 365 Telemetry engine to gather information about the Adatum’s Microsoft 365 client. You will log in as Adam Hobbs in order to install the Telemetry engine.

### Task 1 – Prepare to Deploy Office Telemetry Components 

Before you can install the Telemetry Processor in the next step, you must first prepare your LON-CL1 VM for the installation. You will create a folder on the C Drive for storing the Telemetry components, and you will add Adam Hobbs as a Local Administrator on the VM. If Adam is not set up as a local admin, then when you run the Microsoft Office Telemetry Processor Setup Wizard in the next step, you will be prompted three different time as to whether you want to allow this app to make changes to your device, and you will have to enter the adatum\administrator account and password each time. By making Adam a local admin, you will not receive this message repeatedly throughout the wizard.

1. After having completed the previous task, you should still be on the Client 1 VM (LON-CL1) and logged in as **Adam Hobbs**. You need to log in as the **adatum\administrator** account to make Adam a local admin. <br/>

	‎Select the **Actions** field at the top of the VM, and in the drop-down menu select **Ctrl+Alt+Delete**.

2. In the menu that appears, select **Sign out**.

3. On the log-in screen, select **Other User**. 

4. On the **Other user** log in screen, enter **adatum\administrator** in the **User name** field, and enter **Pa55w.rd** in the **Password** field. 

5. You now want to add Adam Hobbs as a local administrator on LON-CL1. In the **Search** field on the taskbar at the bottom of the screen, enter **computer**, and then in the menu that appears, select **Computer Management**.

6. In the **Computer Management** window, in the file explorer pane on the left, under the **Computer Management** and then **System Tools** folders, expand **Local Users and Groups** and then select **Groups**. 

7. In the list of groups in the detail pane on the right, double-click **Administrators**. 

8. In the **Administrators Properties** window, select **Add**. 

9. In the **Select Users, Computers, Service Accounts, or Groups** window, in the **Enter the object names to select** field, type **Adam** and then select **Check Names**. The system will verify that Adam is a valid user and it will display **Adam Hobbs** in the field. Select **OK**. 

10. In the **Administrators Properties** window, select **OK**.

11. Close the Computer Management window.

12. You now must sign out as the adatum\administrator and sign back in to the LON-CL1 VM as Adam Hobbs in order to run the Telemetry Setup Wizard in the next step. <br/>

	‎Select the **Actions** field at the top of the VM, and in the drop-down menu select **Ctrl+Alt+Delete**.

13. In the menu that appears, select **Sign out**.

14. On the log-in screen, select **Other User**. 

15. On the **Other user** log in screen, enter **adatum\adam** in the **User name** field, and enter **Pa55w.rd** in the **Password** field. 

16. On the desktop, select the **File Explorer** icon on the taskbar. 

17. In the **File Explorer** window, under **This PC**, right-click on **Local Disk (C:)** and in the menu that appears, select **New**, and then select **Folder**. 

18. In the **New folder** field, enter **Telemetry** as the folder name and then press Enter.

19. Minimize the **File Explorer** window as you will use it in a later task. 

20. You have now completed the prerequisites needed to install the Telemetry Processor. Proceed to the next step. 


### Task 2 - Install the Telemetry Processor  

The Office Telemetry Processor runs on one or more computers and collects inventory, usage, and health data from a shared folder and imports the data to a SQL Server database controlled by your organization (the data is NOT sent to Microsoft). The processor is installed as a Windows service named "Office Telemetry Processor."

In this task, you will continue to be logged into LON-CL1 as Adam Hobbs, and you will install the Telemetry Processor so that Adatum can begin collecting data as part of its Office Telemetry pilot project. 

1. After having completed the previous task, you should still be on the Client 1 VM (LON-CL1) and logged in as Adam Hobbs. 

2. On the taskbar, type **Telemetry** in the **Search** box.

3. Select **Telemetry Dashboard for Office**. This opens a **TelemetryDashboard1.xlsx** file in **Microsoft Excel**.

4. In **Microsoft Excel**, if an **Activate Office** dialog box appears, then close it now.

5. Select the **Getting started** worksheet. 

6. Select **step 1 - Set up prerequisites**. 

7. Review the prerequisite information. You will use Microsoft SQL Server 2017 that is already installed on LON-CL1 for this lab. Select **Set up prerequisites** to collapse step 1. 

8. Select **step 2 - Install Telemetry Processor**. In this step, select the **Install Telemetry Processor on This Computer** button. 

9. This starts the **Microsoft Office Telemetry Processor (x64) Setup Wizard**. Select **Next** on the **Welcome** page.

10. In the **Completed the Microsoft Office Telemetry Processor (x64) Setup Wizard** page, select **Finish**.

11. This initiates the **Office Telemetry Processor settings** wizard. The **Getting Started** window opens, but it may stay minimized on the taskbar. If so, select the icon to maximize the **Getting Started** window. On the **Getting Started** window, select **Next.**

12. On the **Database Settings** page, select the **SQL Server** menu, select **(local)** in the SQL Server menu, and then select **Connect**. 

13. In the **SQL database** box, type **Dashboard**, and then select **Create**. 

14. Select **Next**. 

15. In the **Office Telemetry Processor settings wizard** dialog box, select **Yes**. 

16. On the **Shared Folder** page, in the **Path** box, type **C:\Telemetry**, and then select **Next**. 

17. In the **Office Telemetry Processor settings wizard** dialog box, read the information provided for sharing permissions and then select **Yes**.

18. On the **Microsoft Customer Experience Improvement Program** page, select **the I don’t want to sign up for the program at this time** option and then select **Next**. 

19. Finish proceeding through the wizard. 
 

### Task 3 - Manage the Office 2019 Group Policy Administrative Templates  

In this task, you will download the Office 2019 Group Policy Administrative Template files (ADMX/ADML). These files are used by Group Policy to configure installations of Office 365 products, such as Office 365 ProPlus, and volume licensed versions of Office 2019 and Office 2016. You will perform this task as part of your Office Telemetry pilot project for Adatum.

1. On **LON-CL1**, you should be back on the **Telemetry Dashboard (Excel)**; if necessary, return to the **Telemetry Dashboard.**

2. On the **Getting started** worksheet, note that you will not run **step 3 Deploy Telemetry Agent.** The reason this step is skipped is that the Telemetry Agent is included in Office 2013 and later client computers. <br/>

	‎Select **step 4 Configure Telemetry Agent**. 

3. In the **Configure Telemetry Agent** window, select the **Download Office 2016 Administrative templates files** link. Scroll down and select the **Download** button. On the **Choose the download you want** page, select the check box for the **admintemplates_x64_4711-1000_en-us.exe** file, and then select **Next**. Select **Save** to download the file to the **Downloads** folder.

4. Switch to the Domain Controller VM (**LON-DC1).** You should still be signed in as **ADATUM\Administrator**. 

5. On **LON-DC1**, on the taskbar, type **Run** in the **Search** box. Open a **Run** window and run **\\LON-CL1\C$\Users\Adam\Downloads**. 

6. In **File Explorer**, double-click **admintemplates_64_4444-1000_en-us.exe** and select **Run**. 

7. In **The Microsoft Office 2016 Administrative Templates** window, accept the license terms and proceed through the wizard. 

8. In the **Browse For Folder** window, select the **Documents** folder. 

9. In the **Files extracted successfully** dialog box, select **OK**. 

10. In **File Explorer**, browse to **C:\Users\Administrator\Documents\admx**. 

11. Press **Ctrl+A** to select all files in the folder and then press **Ctrl+C** to copy all files. 

12. Browse to **C:\Windows\PolicyDefinitions**, and then press **Ctrl+V** to paste the copied files into the **PolicyDefinitions** folder. 

13. Close File Explorer. 

14. On **LON-DC1**, on the taskbar, type **Group Policy** in the **Search** box.

15. Select **Group Policy Management**. 

16. In the **Group Policy Management Console**, expand **Forest: adatum.com.**, expand **Domains**, expand **adatum.com**, and then select **IT**. 

17. Right-click **IT** and select **Create a GPO in this domain, and Link it here.** 

18. In the **New GPO** dialog box, in the **Name** box, type **Office 2016 Telemetry Agent Settings** and then select **OK**. 

19. Expand **IT**, and then select **Office 2016 Telemetry Agent Settings**. 

20. If a **Group Policy Management Console window** appears indicating you have selected a link to a GPO, select **Do not show this message again** and then select **OK**.

21. Right-click **Office 2016 Telemetry Agent Settings** and then select **Edit**. 

22. In the **Group Policy Management Editor** window, in **User Configuration**, expand **Policies**, expand **Administrative Templates**, expand **Microsoft Office 2016**, and then select **Telemetry Dashboard**. 

23. Right-click **Turn on telemetry data collection** and select **Edit**. 

24. In the **Turn on telemetry data collection** window, select **Enabled**, and then select **OK**. 

25. Right-click **Turn on data uploading for Office Telemetry Agent** and select **Edit**. 

26. In the **Turn on data uploading for Office Telemetry Agent** window, select **Enabled**, and then select **OK**. 

27. Right-click **Specify the UNC path to store Office telemetry data** and select **Edit**. 

28. In the **Specify the UNC path to store Office telemetry data** window, select **Enabled**. 

29. In the **UNC path to store Office telemetry data** box, type **\\LON-CL1\Telemetry** and then select **OK**. 

30. Right-click **Specify custom tags for Office telemetry data** and select **Edit**. 

31. In the **Specify custom tags for Office telemetry data** window, select **Enabled**. 

32. In the **Tag 1** box, type **Pilot** and then select **OK**. 

33. Close the Group Policy Management Editor console. 

 

### Task 4 - Force Group Policy Update and Verify Policy Settings  

In this task, you will update the group policy templates that you downloaded and configured in the prior task. Updating the templates will expedite the data collection process by enforcing it on the LON-CL1 PC. You will then schedule and run a task that collects Office Telemetry Agent logon information.

1. Switch to **LON-CL1.** You should still be signed in as Adam Hobbs. 

2. On the desktop, point to the lower left corner, right-click **Start**, and then select **Run**. 

3. In the **Open** box, type **gpupdate /force**, and then select **OK**. 

4. Wait for the group policy update to complete. 

5. On the **Start** screen, open **Word 2016**. 

6. Skip if the activation dialog appears, select **Accept and start Word**. 

7. Type in the following text: <br/>

	**=rand(10,20)**

8. Wait for the text to generate and save the document as **Acquisition Strategy.docx** in the **Documents** folder. 

9. Close the open document and close File Explorer. 

10. Select **Start**. 

11. On the **Start** screen, type **Schedule tasks**. 

12. In the **Results** pane, select **Schedule tasks.** <br/>

	‎**Note:** Since you are logged in as Adam is a local administrator, you do not have to right-click on **Schedule tasks** and select **Run as administrator.** 

13. In the console tree, expand **Task Scheduler Library**, expand **Microsoft**, and then select **Office**. 

14. In the **Results** pane, right click **OfficeTelemetryAgentLogOn2016** and then select **Run**. You may need to expand the **Name** column to see the task names. 

15. Run the scheduled task again to ensure the data has been collected. 

16. Close the Task Scheduler. 
   

### Task 5 - Review Telemetry Data   

In this task, you will review the Telemetry data that has been collected at Adatum. 

1. On **LON-CL1**, you should still be signed in as Adam Hobbs.

2. In the **Telemetry Dashboard**, select **step 5 Connect to the database to view telemetry data**. 

3. Select **Connect to Database**. 

4. In the **Data connection settings** dialog box, in the **SQL database** box, verify that Dashboard is listed as the Database name, and then select **Connect**. 

5. After the query is complete, select **Documents**. 

6. Notice the documents reported. 

7. Select the **Solutions** menu. 

8. Review the add-ins that have been reported as installed. Scroll right to see which add-ins are built into the application. 

9. Close Microsoft Excel, and at the prompt, select **Don’t Save**.


# End of Lab 4

