# robot-framework-frontend-tests
in order to properly use these tests locally you will need to install robotframework and selenium2library

basic frontend UI tests for post-dev QA testing

at the moment this is written only for chrome, but the resource file could easily be edited or
secondary resource files could be added for other browsers

this repo should contain only basic frontend UI tests for eventual integration into Jenkins
these tests should include:
  a basic resource file for simplifying scripting as if it were a python function
  a valid superuser login
  a valid user login
  an invalid user login
  basic site functionality tests (e.g. deleting, adding, moving, editing)
  
later tests should get more advanced and include reading output from developer consoles to check for
errors that a user wouldn't necessarily see but that would inhibit site functionality and cause 
errors on the user end.
