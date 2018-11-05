@echo on

C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache ^
         --installPath C:\BuildTools ^
         --add Microsoft.VisualStudio.Workload.MSBuildTools ^
         --add Microsoft.VisualStudio.Workload.VCTools;includeRecommended;includeOptional ^
         --add Microsoft.VisualStudio.Workload.NetCoreBuildTools;includeOptional ^
         --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools;includeRecommended;includeOptional ^
         --remove Microsoft.VisualStudio.Component.Windows10SDK.10240 ^
         --remove Microsoft.VisualStudio.Component.Windows10SDK.10586 ^
         --remove Microsoft.VisualStudio.Component.Windows10SDK.14393 ^
         --remove Microsoft.VisualStudio.Component.Windows81SDK ^
 || IF "%ERRORLEVEL%"=="3010" EXIT 0
