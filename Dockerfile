# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.7.1.
FROM microsoft/dotnet-framework:4.7.1

# Restore the default Windows shell for correct batch processing below.
SHELL ["cmd", "/S", "/C"]

# Download the Build Tools bootstrapper.
ADD https://aka.ms/vs/15/release/vs_buildtools.exe C:\TEMP\vs_buildtools.exe
ADD install_buildtools.bat C:\TEMP\install_buildtools.bat

# Install Build Tools excluding workloads and components with known issues.
RUN C:\TEMP\install_buildtools.bat

# Start developer command prompt with any other commands specified.
ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&

# Default to PowerShell if no other command specified.
CMD ["powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]
