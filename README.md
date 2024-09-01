# Windows Brightness Manager

Manage Windows laptop and Dell monitor(s) brightness using `wmic` and `ddm` commands respectively

[This](brightness.bat) is a `.bat` batch script to do the job in two external commands based on the time of the day (day or night) as indicated through the argument

The repository includes run configurations and some screenshots

The [WmiMonitorBrightnessMethods](https://learn.microsoft.com/en-us/windows/win32/wmicoreprov/wmimonitorbrightnessmethods) WMI class and its [WmiSetBrightness](https://learn.microsoft.com/en-us/windows/win32/wmicoreprov/wmisetbrightness-method-in-class-wmimonitorbrightnessmethods) method is leveraged here to set laptop's brightness

For [`ddm`](https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d) subcommands see this gist and Dell Community [conversation](https://www.dell.com/community/en/conversations/monitors/ddm-20-command-line-interface/647fa068f4ccf8a8de56b6a3)

Coded in IntelliJ IDEA using [Batch Scripts Support](https://plugins.jetbrains.com/plugin/265-batch-scripts-support) plugin with love ❤️
