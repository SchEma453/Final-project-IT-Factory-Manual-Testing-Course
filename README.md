# Final-project-IT-Factory-Manual-Testing-Course
The aim of this project is to use and apply all the knowledge gained through the course based on using a live application.

Application under test: *[OrangeHRM](https://opensource-demo.orangehrmlive.com/)*

API Documentation: *[OrangeHRM API](https://orangehrm.github.io/orangehrm-api-doc/)*

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

The final project will be split into 2 sections: Testing section and SQL section.

In order to see the more detailed explanations please access the PDF files mentioned at each chapter.

# Requirements 
The test cases were made based upon business requirements specifications.

![adsdf afdd](https://user-images.githubusercontent.com/114079605/192904791-fb3123c2-52c1-4737-9511-956dda39304e.png)

![aa nfo](https://user-images.githubusercontent.com/114079605/192905164-e8b0cfbc-f167-42e4-862c-b4b0e30b63c0.png)


# 1. Testing section
## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the *Admin* and *My info* module from the OrangeHRM application.
This testing plan describes the test strategy, objectives, estimation and resources required to perform testing for a software product and to determine
the effort needed to validate the quality of the application under test.

## 1.1.1 Roles assigned to the team members 
- Project manager - Alin Popescu
- Product owner - Maria Dumitrescu
- Software developer - Daniel Albu
- QA Engineer - Emanuela Schipor

## 1.1.2 Entry criteria defined
- roles needed for the project are allocated
- initial project risks were detected 
- functional specifications are defined

## 1.1.3 Exit criteria defined
 - all tests have been executed
 - all resolved bugs have been re-tested and approved by the QA team
 - technical requirements have been met
 - all development activities have been completed
 - all risks have been mitigated
 
## 1.1.4 Test scope
Tests in scope: functional testing of the features included in Admin and My info module. 
Tests not in scope: performance testing, integrations of the Admin and My info module with other modules, compatibility testing with multiple browsers.
 
## 1.1.5 Risks detected
- Project risks: the lack of experience of the QA team, short period time for Zephyr Squad trail, unavailability of test environment
- Product risks: OrangeHRM database is updaded a few times a week, during that period the log in is not possible and the website is unavailable

## 1.2 Test Design
Based on the analysis of the requirements and specifications functional test cases were created and executed in Zephyr Squad.
The test design techniques used for generating test cases were boundary value analysis, equivalence partitioning and use case testing.

**Test Cases:**

![teste](https://user-images.githubusercontent.com/114079605/193084142-1726cddd-1e53-4248-8e45-13d653cac065.png)

The test cases with detalied steps can be viewed here: [Zephyr Test Steps.pdf](https://github.com/SchEma453/Final-project-IT-Factory-Manual-Testing-Course/files/9677062/Zephyr.Test.Steps.pdf)

## 1.3 Test Implementation
The following elements have to be ready prepared before the testing execution phase begins:
- Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
- Access to the testing environment is given using credentials: Username : Admin | Password : admin123
- Using zephyr squad, cycle summary was created
- Test cases were added to the cycle summary

## 1.4 Test Execution
- Test cases were executed on the cycle summary using Zephyr squad. From 24 test cases, 8 are failled.
- Based on the failled test cases, bug reports were created and it can be found here: 
[bugs details.pdf](https://github.com/SchEma453/Final-project-IT-Factory-Manual-Testing-Course/files/9677948/bugs.details.pdf)

## 1.5 Test Completion

- The traceability matrix was generated and can be found here: [Forward Traceability jira.xlsx](https://github.com/SchEma453/Final-project-IT-Factory-Manual-Testing-Course/files/9678040/Forward.Traceability.jira.xlsx)
- the exit criteria was fulfilled
- A number of 24 test cases were planned for execution and all of them were executed
- Test execution chart was generated, the final report shows a number of 8 tests have failed from a total of 24
- A number of 8 total bugs were found, 3 with high priority, 5 with medium priority

![raport](https://user-images.githubusercontent.com/114079605/193115536-d0bd6b43-1cb3-4550-bf28-96600ef7fbea.png)

# 2. SQL section
For practicing the basics of MySQL I created a database named "orangehrm", with tables, columns and relations between them. 

