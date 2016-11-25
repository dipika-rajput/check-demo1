@isTest
public with sharing class BatchUploadableHandlerClassTest {
	
	static testMethod void newrecordcreation()
     {
    // 	Date d = new Date();
     	BatchUploadableHandlerClass b = new BatchUploadableHandlerClass();
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
     	Account a = b.accountCreation(bnew);
     	Contact c = b.contactCreation(bnew);
     	Opportunity o = b.opportunityCreation(bnew);
     	EMPLOYEE__c e = b.employeeCreation(bnew);
     	Sa__c s = b.salaryDetailsCreation(bnew);
     }
     static testMethod void newrecordupdation()
        {
        BatchUploadableHandlerClass b = new BatchUploadableHandlerClass();
        Account a = new Account( Website='demotest.com',Name='test',Phone='45545',
     	Type='Prospect',Fax='fax1test');
     	insert a;
     	
     	Contact c = new Contact(First_Name__c='contrest',LastName='lasttest'
     	,Email='test@gmail.com',MobilePhone='454545',
     	Description='test demo',Birthdate=Date.newInstance(1994,12,12));
     	insert c;
     	
     	Opportunity o = new Opportunity(Name='testdemo',Type='New Contract',
     	CloseDate=Date.newInstance(2013,05,05),Description='this is desc',StageName='Closed Lost');
     	insert o;
     	
     	EMPLOYEE__c e = new EMPLOYEE__c(Name='test',Date_of_Joining__c=date.newInstance(2016,06,06),
     	First_Name__c='testdemo',Last_Name__c='testlasat',
     	Zip__c='414141',Date_of_Birth__c=date.newInstance(1994,12,1));
     	insert e;
     	
     	Sa__c s = new Sa__c(Name='testsa',Credited_To__c=e.id,Bank_Details__c='444',
     	Salary_Credit_Date__c=Date.newInstance(2016,11,11),Special_Allowance__c=455.0,
     	PF_Deduction__c=100.0,Bank_Account_Number__c='sdsds',
     	Basic__c=522.0,HRA__c=800.0,Mode_of_Payment__c='Cheque');
     	insert s;
     	
     	BatchUploadable__c bnew = new BatchUploadable__c(AccountName__c = 'demotest123',Age_Employees__c = 44.0,
     	Bank_Account_Number_Salary_Detail__c='2145',Bank_Details_Salary_Details__c='4545.0',Basic_Salary_Detail__c=5656.0,
     	Birthdate_Contact__c=Date.newInstance(1994,5,1) ,City_Employees__c='pune',
     	Close_Date_Opportunity__c=Date.newInstance(2016,11,12),
     	Date_of_Birth_Employees__c=Date.newInstance(1994,11,11),Date_of_Joining_EMPLOYEE__c=Date.newInstance(2016,11,14),
     	Description_Contact__c='demotest123',
     	Description_Opportunity__c='demotest123',Email_Contact__c='abc@gmail.com',
     	Fax_of_Account__c='demotest123',First_Name_Contact__c='demotest123',First_Name_Employees__c='demotest123',
     	HRA_Salary_Detail__c=5000.0,Last_Name_Contact__c='demotest123',Last_Name_Employees__c='demotest123',
     	Mobile_phone_Contact__c='454545',Mode_of_payment_Salary_Detail__c='NEFT',Name_Opportunity__c='demotest123',
     	Name_Salary_Details__c='demotest123',PF_Deduction_Salary_Details__c=200.0,Phone_of_Account__c='55555',
     	Salary_Credit_Date_Salary_Details__c=Date.newInstance(2016,11,11),Special_Allowance_Salary_Details__c=500.0,
     	Stage_Opportunity__c='Prospecting',Status_batchUploadable__c='New',Type__c='Prospect',
     	Type_opportunity__c='New Customer',Website_of_Account__c = 'dd.com',Zip_Code_EMPLOYEE__c='112121',
     	Account__c = a.id,Contact__c=c.id,
     	Employee__c=e.id,Opportunity__c=o.id,Salary_Details__c=s.id);
     	
     	insert bnew;
     	
     	Account ac = new Account( Website='demotest.com',Name='test',Phone='45545',
     	Type='Prospect',Fax='fax1test');
     	insert ac;
     	Account ac1 = b.accountCreation(bnew);
     	Contact co = b.contactCreation(bnew);
     	Opportunity op = b.opportunityCreation(bnew);
     	EMPLOYEE__c em = b.employeeCreation(bnew);
     	Sa__c sa = b.salaryDetailsCreation(bnew);
     	
        	
        }
}