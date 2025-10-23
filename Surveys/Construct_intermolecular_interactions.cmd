REM
REM  Calculate intermolecular interaction energies for several methods for several sets of systems
REM
ECHO OFF
FOR  %%p IN ("Repulsive Interactions set", "All intermolecular interactions", S22, S66, L7, S12L, "Water dimers", "D3H4 Ionic", X40) DO (
cd %%p
FOR  %%q IN (PM6-ORG, PM7, PM6-D3H4, PM6-D3H4X PM6) DO (
echo Starting %%p %%q
CALL "%PARAM_start%\Source Code\Bin and cmd\PARAM.exe" %%q
)
cd ../
)
REM rm */*.out
pause
