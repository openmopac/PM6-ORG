REM
REM  Calculate properties of main-group elements for several methods
REM
cd "Survey organic" 
FOR  %%p IN (PM6-ORG, PM6, PM7, PM6-D3H4, PM6-D3H4X) DO (
echo Starting %%p 
CALL "%PARAM_start%\Source Code\Bin and cmd\PARAM.exe" %%p
)
rm *.out
cd ../

