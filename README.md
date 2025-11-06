# AutomaticThemeChange
This project provides two simple PowerShell scripts and a step-by-step guide to set up automatic activation of the light theme (during the day) and dark theme (at night) on Windows 11, using the Windows Scheduler Utility.

# 1. The Script Files
Create a folder on your PC named C:\Scripts and save the following two files inside it.
Dark.ps1 (Dark Mode) Light.ps1 (Light Mode) (You can find the two files in the folder SCRIPTS)

# 2. Setting up the Task Scheduler

You need to create two separate tasks in the Windows Task Scheduler: one for evening activation and one for morning activation.

# 2.1. Task 1: Activate DARK Theme (Evening Execution)

# A. Creating the Task

    Open the Task Scheduler (search for "Task Scheduler" in the Start menu).

    In the right-hand pane, click Create Task....

    "General" Tab

        Name: Automatic Theme - Dark

        Security options:

            Select your Windows User Account.

            Check: Run with highest privileges (required to modify the registry).

            Check: Run only when user is logged on (required to modify the active user interface).

# B. Setting the Trigger

    Go to the "Triggers" tab.

    Click New....

    Settings:

        Begin the task: On a schedule.

        Settings: Daily.

        Start Time: Set the time you want the Dark theme to activate (e.g., 07:00:00 PM).

        Click OK.

# C. Setting the Action

    Go to the "Actions" tab.

    Click New....

    Settings:

        Action: Start a program.

        Program/script: powershell.exe

        Add arguments (optional):

        -ExecutionPolicy Bypass -File "C:\Scripts\Dark.ps1"

        Click OK.

# D. Additional Settings (Task Recovery)

    Go to the "Settings" tab.

    Check: Run task as soon as possible after a scheduled start is missed (This ensures the theme is applied if you turn on your PC after the scheduled time).

    Crucial Check: Make sure the option "Stop the task if it runs longer than..." is unchecked or set to a long duration, and do not check "Stop task after X days of continuous use."

    Click OK and enter your Windows password/credentials if prompted.

# 2.2. Task 2: Activate LIGHT Theme (Morning Execution)

Repeat steps A, B, C, and D exactly, but with the following modifications:
Tab	Field	Value
General	Name	Automatic Theme - Light
Triggers	Start Time	The time you want the Light theme to activate (e.g., 07:00:00 AM)
Actions	Add arguments	-ExecutionPolicy Bypass -File "C:\Scripts\Light.ps1"
Settings	Recovery	Check "Run task as soon as possible..."

# 3. Final Test

After creating both tasks:

    In the Task Scheduler, select the Automatic Theme - Light task.

    In the right-hand Actions pane, click Run.

    Verify that the theme switches to Light.

    Repeat the test for the Automatic Theme - Dark task.

If both tests work, your system is now configured for automatic theme switching!
