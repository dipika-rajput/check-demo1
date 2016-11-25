@isTest
public with sharing class BatchUplodableControllerTest {
public static testMethod void unitTesting()
{
		BatchUploadable__c bnew = new BatchUploadable__c(AccountName__c = 'demotest',Age_Employees__c = 44.0,
     	Bank_Account_Number_Salary_Detail__c='2145',Bank_Details_Salary_Details__c='4545.0',Basic_Salary_Detail__c=5656.0,
     	Birthdate_Contact__c=Date.newInstance(1994,5,1) ,City_Employees__c='pune',
     	Close_Date_Opportunity__c=Date.newInstance(2016,11,12),
     	Date_of_Birth_Employees__c=Date.newInstance(1994,11,11),Date_of_Joining_EMPLOYEE__c=Date.newInstance(2016,11,14),
     	Description_Contact__c='testdemo',
     	Description_Opportunity__c='testdemoee',Email_Contact__c='abc@gmail.com',
     	Fax_of_Account__c='demotest',First_Name_Contact__c='testdemo2',First_Name_Employees__c='fristssd0',
     	HRA_Salary_Detail__c=5000.0,Last_Name_Contact__c='lasrcon',Last_Name_Employees__c='lastcontest',
     	Mobile_phone_Contact__c='454545',Mode_of_payment_Salary_Detail__c='NEFT',Name_Opportunity__c='newopop',
     	Name_Salary_Details__c='newsal',PF_Deduction_Salary_Details__c=200.0,Phone_of_Account__c='55555',
     	Salary_Credit_Date_Salary_Details__c=Date.newInstance(2016,11,11),Special_Allowance_Salary_Details__c=500.0,
     	Stage_Opportunity__c='Prospecting',Status_batchUploadable__c='New',Type__c='Prospect',
     	Type_opportunity__c='New Customer',Website_of_Account__c = 'dd.com',Zip_Code_EMPLOYEE__c='112121'
     );
     	insert bnew;
     	  Test.startTest();
          Test.setCurrentPage(Page.BatchUploadablePage);
          ApexPages.StandardController stdController = new ApexPages.StandardController(bnew);
          BatchUploadableController batch = new BatchUploadableController(stdController);
          batch.call();
           
}    
}