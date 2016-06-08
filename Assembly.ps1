Function ChangeAssembly($revnum){
             $RegularExpression = [regex] '(\[assembly\:\ AssemblyFileVersion\(\"\d+\.\d+\.\d+)(\..+)(\"\)\])'
             $AssemblyFil = "D:\AssemblyInfo.cs"     
            #Set-Content $AssemblyFil ((Get-Content $AssemblyFil) -replace  $RegularExpression,"`$1.$revnum`$3" )
            ((Get-Content $AssemblyFil) -replace  $RegularExpression,"`$1.$revnum`$3") |Out-File $AssemblyFil
             }
ChangeAssembly(9)
