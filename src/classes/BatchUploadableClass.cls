global 	class BatchUploadableClass implements Database.Batchable<sObject>,Database.Stateful 
{
	String query;
	
	//BatchUploadableHandlerClass bat = new BatchUploadableHandlerClass();
	global Database.querylocator start(Database.BatchableContext BC)
    {
        query = 'SELECT Id,Name,Account__c,Name_Salary_Details__c,Date_of_Joining_EMPLOYEE__c,Bank_Details_Salary_Details__c,Salary_Credit_Date_Salary_Details__c,Special_Allowance_Salary_Details__c,Zip_Code_EMPLOYEE__c,AccountName__c,Last_Name_Contact__c,Age_Employees__c,Bank_Account_Number_Salary_Detail__c,Basic_Salary_Detail__c,Birthdate_Contact__c,City_Employees__c,Close_Date_Opportunity__c,Contact__c,Date_of_Birth_Employees__c,Description_Contact__c,Description_Opportunity__c,Email_Contact__c,Employee__c,Error_Description_Batchuploadable__c,Fax_of_Account__c,First_Name_Contact__c,First_Name_Employees__c,HRA_Salary_Detail__c,Last_Name_Employees__c,Mobile_phone_Contact__c,Mode_of_payment_Salary_Detail__c,Name_Opportunity__c,Opportunity__c,PF_Deduction_Salary_Details__c,Phone_of_Account__c,Salary_Details__c,Stage_Opportunity__c,Status_batchUploadable__c,Type__c,Type_opportunity__c,Website_of_Account__c FROM BatchUploadable__c ';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<BatchUploadable__c>recordList) 
    {
    	Account acc;
    	Contact con;
    	Opportunity oppo;
    	EMPLOYEE__c emp;
    	Sa__c sal;
    	String  ErrorMessage = 'This is ';
    	//String ErrorMessage1;
    	String seperator = ',';
    	List<String>ErrormsgList =  new List<String>();
     	System.debug('recordList:-'+recordList);
     	List<BatchUploadable__c>batchList = new List<BatchUploadable__c>();
     	
     	for(BatchUploadable__c b :recordList )
     	{
     		b.Status_batchUploadable__c = 'Processing';
     		try
     		{
     			System.debug('Inside try %%%ind b:--'+b);
     		 	acc = BatchUploadableHandlerClass.accountCreation(b);
     		 	System.debug('acc:::'+acc);
     		 	//upsert acc;
     		 	System.debug('after insertion acc:--'+acc);
     		 	b.Status_batchUploadable__c = 'Completed';
     		 	System.debug('status of BU:-'+b.Status_batchUploadable__c);
     		 	update b;
     		 	System.debug('end of try after update b :-'+b);
     		 	
     		 	//update b;
     		 //	batchList.add(b);
     		 	
     		}
     		catch(Exception e)
     		{
     			System.debug('Inside catch&&');
     			ErrorMessage = ErrorMessage + 'Error of Account:--'+e.getMessage();
               	ErrormsgList.add(ErrorMessage);
               	String ErrorMessage1 = String.join(ErrormsgList,seperator);
               	b.Error_Description_Batchuploadable__c = ErrorMessage1;
               	System.debug('Error description::::'+b.Error_Description_Batchuploadable__c);
               	b.Status_batchUploadable__c = 'Error';
               	update b;
               	System.debug('b in catch after update::::'+b);
               	
     		}
     		try
     		{
     			System.debug('Inside try %%%ind b:--'+b);
     		 	con = BatchUploadableHandlerClass.contactCreation(b);
     		 	//System.debug('acc:::'+acc);
     		 	//upsert acc;
     		 //	System.debug('after insertion acc:--'+acc);
     		 	b.Status_batchUploadable__c = 'Completed';
     		 	System.debug('status of BU:-'+b.Status_batchUploadable__c);
     		 	update b;
     		 	System.debug('end of try after update b :-'+b);
     		 	
     		 	//update b;
     		 //	batchList.add(b);
     		 	
     		}
     		catch(Exception e)
     		{
     			System.debug('Inside catch&&');
     			ErrorMessage = ErrorMessage + 'Error of Account:--'+e.getMessage();
               	ErrormsgList.add(ErrorMessage);
               	String ErrorMessage1 = String.join(ErrormsgList,seperator);
               	b.Error_Description_Batchuploadable__c = ErrorMessage1;
               	System.debug('Error description::::'+b.Error_Description_Batchuploadable__c);
               	b.Status_batchUploadable__c = 'Error';
               	update b;
               	System.debug('b in catch after update::::'+b);
               	
     		}
     		try
     		{
     			System.debug('Inside try %%%ind b:--'+b);
     		 	oppo = BatchUploadableHandlerClass.opportunityCreation(b);
     		 	//System.debug('acc:::'+acc);
     		 	//upsert acc;
     		 //	System.debug('after insertion acc:--'+acc);
     		 	b.Status_batchUploadable__c = 'Completed';
     		 	System.debug('status of BU:-'+b.Status_batchUploadable__c);
     		 	update b;
     		 	System.debug('end of try after update b :-'+b);
     		 	
     		 	//update b;
     		 //	batchList.add(b);
     		 	
     		}
     		catch(Exception e)
     		{
     			System.debug('Inside catch&&');
     			ErrorMessage = ErrorMessage + 'Error of Account:--'+e.getMessage();
               	ErrormsgList.add(ErrorMessage);
               	String ErrorMessage1 = String.join(ErrormsgList,seperator);
               	b.Error_Description_Batchuploadable__c = ErrorMessage1;
               	System.debug('Error description::::'+b.Error_Description_Batchuploadable__c);
               	b.Status_batchUploadable__c = 'Error';
               	update b;
               	System.debug('b in catch after update::::'+b);
               	
     		}
     		try
     		{
     			System.debug('Inside try %%%ind b:--'+b);
     		 	emp = BatchUploadableHandlerClass.employeeCreation(b);
     		 	//System.debug('acc:::'+acc);
     		 	//upsert acc;
     		 //	System.debug('after insertion acc:--'+acc);
     		 	b.Status_batchUploadable__c = 'Completed';
     		 	System.debug('status of BU:-'+b.Status_batchUploadable__c);
     		 	update b;
     		 	System.debug('end of try after update b :-'+b);
     		 	
     		 	//update b;
     		 //	batchList.add(b);
     		 	
     		}
     		catch(Exception e)
     		{
     			System.debug('Inside catch&&');
     			ErrorMessage = ErrorMessage + 'Error of Account:--'+e.getMessage();
               	ErrormsgList.add(ErrorMessage);
               	String ErrorMessage1 = String.join(ErrormsgList,seperator);
               	b.Error_Description_Batchuploadable__c = ErrorMessage1;
               	System.debug('Error description::::'+b.Error_Description_Batchuploadable__c);
               	b.Status_batchUploadable__c = 'Error';
               	update b;
               	System.debug('b in catch after update::::'+b);
               	
     		}
     		try
     		{
     			System.debug('Inside try %%%ind b:--'+b);
     		 	sal = BatchUploadableHandlerClass.salaryDetailsCreation(b);
     		 	//System.debug('acc:::'+acc);
     		 	//upsert acc;
     		 //	System.debug('after insertion acc:--'+acc);
     		 	b.Status_batchUploadable__c = 'Completed';
     		 	System.debug('status of BU:-'+b.Status_batchUploadable__c);
     		 	update b;
     		 	System.debug('end of try after update b :-'+b);
     		 	
     		 	//update b;
     		 //	batchList.add(b);
     		 	
     		}
     		catch(Exception e)
     		{
     			System.debug('Inside catch&&');
     			ErrorMessage = ErrorMessage + 'Error of Account:--'+e.getMessage();
               	ErrormsgList.add(ErrorMessage);
               	String ErrorMessage1 = String.join(ErrormsgList,seperator);
               	b.Error_Description_Batchuploadable__c = ErrorMessage1;
               	System.debug('Error description::::'+b.Error_Description_Batchuploadable__c);
               	b.Status_batchUploadable__c = 'Error';
               	update b;
               	System.debug('b in catch after update::::'+b);
               	
     		}
     	
     		
     		
     	}
     	
     		
     	
     	
     	
        
    }
    global void finish(Database.BatchableContext BC)
    {
                
    }   
}