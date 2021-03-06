# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

$cpath=Split-Path $MyInvocation.MyCommand.Path
$dpath=[Environment]::GetFolderPath("MyDocuments")+"\WindowsPowerShell"

New-Item $dpath -ItemType Directory 2>$null
Remove-Item $dpath"\profile.ps1.bak" 2>$null
Move-Item $dpath"\profile.ps1" $dpath"\profile.ps1.bak" 2>$null

New-Item -ItemType HardLink -Path $dpath -Name profile.ps1 -Value $cpath\profile.ps1 >$null

