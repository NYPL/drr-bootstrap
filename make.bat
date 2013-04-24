@echo off
 
SET BOOTSTRAP_SASS=.\views\stylesheets\drr-bootstrap.scss
SET BOOTSTRAP_CSS=.\public\css\drr-bootstrap.css
SET BOOTSTRAP_MIN=.\public\css\drr-bootstrap.min.css
SET "CHECK= "
SET HR=##################################################
 
SETLOCAL ENABLEDELAYEDEXPANSION

echo:
echo %HR%
echo Building DRR-Bootstrap...
echo %HR%
echo:

call sass --style expanded %BOOTSTRAP_SASS%:%BOOTSTRAP_CSS%
call sass --style compressed %BOOTSTRAP_SASS%:%BOOTSTRAP_MIN%
 
:end