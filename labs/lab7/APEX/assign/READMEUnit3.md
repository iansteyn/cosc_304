# COSC 304 - Introduction to Database Systems<br>Assignment 7 - Building a Database-enabled Web Site using APEX (40 pts)

**General Note:** To get points for your submissions, each new page and project must have your group number, your team member names, and the following text: **COSC 304, Summer T1 2022, Lab 7 Assignment, Unit \<number\>, HOL \<number\>**.

## Unit 3: Creating a Database Application (10 points)

### HOL 3-1 Creating a Database Application from Scratch: In this hands-on lab, you will create a database Web application, Demo Projects. You will extend and improve this application later (5 points)

In this lab, you create the initial application using the Create Application wizard to define multiple pages. Now that you have created the underlying tables, you are ready to create a desktop application. You add reports and forms for the tables you created.


Generally, when developing an application, you will not know all of the pages required at the beginning. Therefore, you will only generate a select number of pages initially, and then use the wizard to add additional pages as required. However, for this exercise, you will generate most of the pages required for the application upfront.


1.	Using the Create Application Wizard, create the Demo Projects application. 
Navigate to App Builder and then click Create.
2.	You want to create a new application. Click New Application.
3. For Name, enter "COSC 304 Summer T1 2022 Demo Projects Goup \<your group number and your team member names\>". For Appearance, click the Set Appearance icon.
4. In the Appearance dialogue, perform the following steps:

	a)	For Theme Style, select Vita – Red.
	
	b)	For Application Icon, click Choose New Icon. Click any coloured circle at the top and choose an application icon. Then click Set Application Icon. 
	
	c)	Click Save Changes.
5.	Next, add Report and Form page types for the following tables:
	
	•	DEMO_PROJ_TEAM_MEMBERS

	•	DEMO_PROJECTS

	•	DEMO_PROJ_MILESTONES

	•	DEMO_PROJ_TASKS

      Click Add Page.

6.	In the Add Page dialogue, click Interactive Report.
7. In the Add Report Page dialogue, select / enter the following and then, click Add Page.

	•	Page Name: DEMO_PROJ_TEAM_MEMBERS.

	•	Table or View: DEMO_PROJ_TEAM_MEMBERS.

	•	Include Form checkbox

8.	Add Report and Form page type for the DEMO_PROJECTS table.

	Click Add Page.

9.	In the Add Page dialogue, click Interactive Report.
10.	In the Add Report Page dialogue, select / enter the following and then, click Add Page.

	•	Page Name: DEMO_PROJECTS.

	•	Table or View: DEMO_PROJECTS

	•	Include Form checkbox

11.	Add Report and Form page type for the DEMO_PROJ_MILESTONES table.

	Click Add Page.

12.	In the Add Page dialogue, click Interactive Report.
13.	In the Add Report Page dialogue, select / enter the following and then, click Add Page.

	•	Page Name: DEMO_PROJ_MILESTONES

	•	Table or View: DEMO_PROJ_MILESTONES

	•	Include Form checkbox


14.	Add Report and Form page type for the DEMO_PROJ_TASKS table.

	Click Add Page.


15.	In the Add Page dialogue, click Interactive Report.


16.	In the Add Report Page dialogue, select / enter the following and then, click Add Page.

	•	Page Name: DEMO_PROJ_TASKS

	•	Table or View: DEMO_PROJ_TASKS

	•	Include Form checkbox


17.	Click Check All next to Features.

19.	Enter / select the following in advanced settings and then click Save Changes.

	•	Short Description - Maintain project details.

	•	Description - This application is used to maintain project details for the team. Projects include milestones, where you can define due dates. Tasks can be defined against a milestone or directly against the project.

	•	Add "Built with APEX" to Footer: Yes

20.	Click Create Application. Notice the application creation progress.
21.	The Demo Projects application is now created. Click Run Application.
22.	Login using your Workspace username and password. Click Sign In.
23.	Your screen should look like the following:



### HOL 3-2 Creating a Database Application loading data using SQL DDL and DML scripts (not a spreadsheet, because it's blocked by Oracle in the Cloud): In this hands-on lab, you will use a spreadsheet to create a database Web application, Budget App. You do not extend this application but will use it in a later exercise (5 points).

In this lab, you use SQL DDL and DML scripts to create a database application.

1.	Navigate to SQL Workshop and click SQL Scripts.
2.	Select `Upload`, then `Choose File` and then choose the [budget\_app\_tablesYK](budget_app_tablesYK.sql) from the location where you keep assignment files and press the `upload` button and again `upload` button. 
3.	In the SQL Scripts window find just the uploaded script and run it. Check for errors and then in the same way upload and run the script with the data [budget\_app\data](budget_app_data.sql)
4.	If you don't have errors after you complete the script, please choose `Create App from Script`.
5.	Add name `COSC 304, Summer T1 2022, Lab 7 HOL 3-2 Budget App`.
6.	Now, click `Check All` in Features. Run the `Create Application` button. 
7.	Press `Create Page` and then choose `Dashboard` and then add Page Name `COSC 304, Summer T1 2022, Lab 7 HOL 3-2 Budget App Dashboard`, `Breadcrumb`, `Home (Page1)` for the Parent Entry > `Create a new Navigation menue entry` choose `Home` >  choose `Grid of 4 Charts` and press `Create`.
8.	Run the application to see the results.
9.	Create a new page in the Page Designer, choose `Report` > `Interactive Report` > `Next` >  and add the name `Project Budget Search`, `Breadcrumb`, `Home (Page1)` for the Parent Entry > `Create a new Navigation menue entry` choose `Home` > `Next` > Choose `project_budget (table)` for Table/View Name.  
10.	Now, click `Create` and run the application to check the results.
11.	Create a new page in the Page Designer, choose `Report` > `Classic Report` > `Next` >  and add the name `Project Budget Report`, `Breadcrumb`, `Home (Page1)` for the Parent Entry > `Create a new Navigation menue entry` choose `Home` > `Next` > Choose `project_budget (table)` for Table/View Name > `Create`.
12.	Create a new page in the Page Designer, choose `Calendar` > add page name `Calendar`, `Breadcrumb`, `Home (Page1)` for the Parent Entry, `Administration` for the Page Group > `Create a new Navigation menue entry` choose `Home` > `Next` > Choose `project_budget (table)` for Table/View Name and choose column `Project` > `Start_Date` and `End_Date` for the Start and End Date Columns > `Create`.
13.	Run your application. Calendar data are from April 2017. 
14.	Review the Budget App application that you just created. Check out all the pages that were created by default.