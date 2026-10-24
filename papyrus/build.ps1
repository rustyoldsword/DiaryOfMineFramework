# Compiles the framework's Papyrus (papyrus\src) into papyrus\out with the game's Papyrus Compiler.
# src\ comes first in the import list, then stubs\ (compile-only stand-ins for scripts of mods Diary of Mine references),
# then the script sources of Diary of Mine and the mods it builds against.
#
#   .\papyrus\build.ps1 -Game <Skyrim folder> -DiaryOfMine <Diary of Mine Scripts\Source> -Imports <dir>,<dir>,...
#
# -Imports: script source folders of SkyUI, UIExtensions, PapyrusUtil SE, JContainers SE, SlaveTats, RaceMenu and
# powerofthree's Papyrus Extender. -Scripts: which scripts to build (default: all in src\).
param(
    [Parameter(Mandatory)][string]$Game,
    [Parameter(Mandatory)][string]$DiaryOfMine,
    [string[]]$Imports = @(),
    [string[]]$Scripts = @()
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$compiler = Join-Path $Game 'Papyrus Compiler\PapyrusCompiler.exe'
$flags = Join-Path $Game 'Data\Source\Scripts\TESV_Papyrus_Flags.flg'
$out = Join-Path $here 'out'
New-Item -ItemType Directory -Force $out | Out-Null
$Imports = $Imports | ForEach-Object { $_ -split '[;,]' }  # also as one ';'-separated string (powershell -File)
$importList = @((Join-Path $here 'src'), (Join-Path $here 'stubs'), $DiaryOfMine) + $Imports +
    @((Join-Path $Game 'Data\Scripts\Source'), (Join-Path $Game 'Data\Source\Scripts'))
$importList = ($importList | Where-Object { $_ -and (Test-Path $_) }) -join ';'
if (-not $Scripts) { $Scripts = Get-ChildItem (Join-Path $here 'src') -Filter *.psc | ForEach-Object BaseName }
# the compiler also searches its working directory: run it from a neutral folder
Push-Location $env:TEMP
try {
    foreach ($s in $Scripts) {
        & $compiler "$s.psc" "-i=$importList" "-o=$out" "-f=$flags"
        if ($LASTEXITCODE -ne 0) { throw "$s failed to compile" }
    }
} finally { Pop-Location }
