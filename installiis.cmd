rem 1. Open Command Prompt with Administrator rights.
rem 2. You can view a list of all features installed on your Windows OS.

Dism /Online /Get-Features /Format:Table

rem 1
Dism /Online /Get-Features /Format:Table
rem 3. Install IIS-DefaultDocument feature with all related features by using /All switch.

Dism /Online /Enable-Feature /FeatureName:IIS-DefaultDocument /All
rem 1
rem Dism /Online /Enable-Feature /FeatureName:IIS-DefaultDocument /All
rem It installed 15 extra features in addition.

rem 4. Install IIS-ASPNET45 feature the same way.

Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All
rem 1
rem Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All
rem 5. Install any additional IIS feature one by one.
