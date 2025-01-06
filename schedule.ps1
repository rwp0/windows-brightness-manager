$action = New-ScheduledTaskAction -Execute 'powershell.exe' `
  -Argument 'Stop-Computer -Force'

$trigger = New-ScheduledTaskTrigger -Daily `
  -At '2:30 AM'

$task = Register-ScheduledTask -TaskName 'Shutdown' `
  -Description 'Shutting the PC down at night' `
  -Action $action `
  -Trigger $trigger `
  -Force

# Documentation:
# https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/register-scheduledtask

# Run as:
# pwsh .\schedule.ps1

# Reference
# https://stackoverflow.com/questions/67059634/how-to-schedule-a-task-to-shutdown-a-pc-every-day
