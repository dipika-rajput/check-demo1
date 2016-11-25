global with sharing class BatchUploadableHandlerClass {
	public  static String empIDforothermethod;
	
	 public static Map<String,Batch_Upload_Setting__c>mapofBatchCustomSetting =  Batch_Upload_Setting__c.getAll();
	 public  static List<String>lstofBatch = new List<String>();
	 public static List<String> f1;
     public  static String f2;
	global static  Account accountCreation(BatchUploadable__c b)
	{
		Account accrec = new Account();
	
	 //-----------------------------------------start------------------------------------------------
	
        //Map for retrieving values from custom setting in the form of keys and values related to it
        Map<String,List<String>>mapofsrcTodes = new Map<String,List<String>>();
               		List<String>fieldLst = new List<String>();
               		//iterate on custom setting
            		   for(Batch_Upload_Setting__c custom : mapofBatchCustomSetting.values())
            		   {
            		   		
                			if(custom.Destination_Object__c == 'Account')
            				{
            					f2 = custom.Source_Field__c;
            					if(mapofsrcTodes.containskey(f2))
								{
									mapofsrcTodes.get(f2).add(custom.Destination_Field__c);
          						}
   								else
   								{
   									fieldLst.add(custom.Destination_Field__c);
      								mapofsrcTodes.put(f2, fieldLst);
  								}
							}
            			}
            			System.debug('lookup value from account:-'+b.Account__c);
            			//Assigning Id of lookup field to new accrec instance
            			accrec.id = b.Account__c;
            			System.debug('we are copying id accrec::----'+accrec.id);
               			Set<String> keys = mapofsrcTodes.keyset();
               			for(string k : keys)
               			{
               				Object s1 = b.get(k);
               				List<String> val = mapofsrcTodes.get(k);
               				for(String v : val)
               				{
               					accrec.put(v,s1);
               					System.debug('Hiiiiiiiiiiiiiiiii accrec inside else:'+accrec);
               				}
               			}
               			accrec.Name = b.AccountName__c;
               			accrec.Website = b.Website_of_Account__c;
                		accrec.Phone = b.Phone_of_Account__c;
                		accrec.Type = b.Type__c;
                		accrec.Fax = b.Fax_of_Account__c;
                		System.debug('values of accrec before upsert:------((((((()))))))'+accrec);
              			upsert accrec;
              			return accrec;
	}
	global static Contact contactCreation(BatchUploadable__c b)
	{    
             Contact conrec = new Contact();
        
        //Map for retrieving values from custom setting in the form of keys and values related to it
        Map<String,List<String>>mapofsrcTodes = new Map<String,List<String>>();
               		List<String>fieldLst = new List<String>();
               		//iterate on custom setting
            		   for(Batch_Upload_Setting__c custom : mapofBatchCustomSetting.values())
            		   {
            		   		
                			if(custom.Destination_Object__c == 'Contact')
            				{
            					f2 = custom.Source_Field__c;
            					if(mapofsrcTodes.containskey(f2))
								{
									mapofsrcTodes.get(f2).add(custom.Destination_Field__c);
          						}
   								else
   								{
   									fieldLst.add(custom.Destination_Field__c);
      								mapofsrcTodes.put(f2, fieldLst);
  								}
							}
            			}
            			
            			System.debug('lookup value from account:-'+b.Contact__c);
            			//Assigning Id of lookup field to new accrec instance
            			conrec.id = b.Contact__c;
            			System.debug('we are copying id accrec::----'+conrec.id);
               			Set<String> keys = mapofsrcTodes.keyset();
               			for(string k : keys)
               			{
               				Object s1 = b.get(k);
               				List<String> val = mapofsrcTodes.get(k);
               				for(String v : val)
               				{
               					conrec.put(v,s1);
               					System.debug('Hiiiiiiiiiiiiiiiii accrec inside else:'+conrec);
               				}
               			}
            			
                    conrec.First_Name__c = b.First_Name_Contact__c;
                    conrec.LastName = b.Last_Name_Contact__c;
                    conrec.Email = b.Email_Contact__c;
                    conrec.MobilePhone = b.Mobile_phone_Contact__c;
                    conrec.Description = b.Description_Contact__c;
                    conrec.Birthdate = b.Birthdate_Contact__c;
                 
                    
              
               upsert conrec;
                return conrec;
	}
	global static Opportunity opportunityCreation(BatchUploadable__c b)
	{
				
					Opportunity opporec =  new Opportunity();
					//Map for retrieving values from custom setting in the form of keys and values related to it
        			Map<String,List<String>>mapofsrcTodes = new Map<String,List<String>>();
               		List<String>fieldLst = new List<String>();
               		//iterate on custom setting
            		   for(Batch_Upload_Setting__c custom : mapofBatchCustomSetting.values())
            		   {
            		   		
                			if(custom.Destination_Object__c == 'Opportunity')
            				{
            					f2 = custom.Source_Field__c;
            					if(mapofsrcTodes.containskey(f2))
								{
									mapofsrcTodes.get(f2).add(custom.Destination_Field__c);
          						}
   								else
   								{
   									fieldLst.add(custom.Destination_Field__c);
      								mapofsrcTodes.put(f2, fieldLst);
  								}
							}
            			}
            			
            			System.debug('lookup value from account:-'+b.Opportunity__c);
            			//Assigning Id of lookup field to new accrec instance
            			opporec.id = b.Opportunity__c;
            			System.debug('we are copying id accrec::----'+opporec.id);
               			Set<String> keys = mapofsrcTodes.keyset();
               			for(string k : keys)
               			{
               				Object s1 = b.get(k);
               				List<String> val = mapofsrcTodes.get(k);
               				for(String v : val)
               				{
               					opporec.put(v,s1);
               					System.debug('Hiiiiiiiiiiiiiiiii accrec inside else:'+opporec);
               				}
               			}
		 			opporec.Name = b.Name_Opportunity__c;
                    opporec.Type = b.Type_opportunity__c;
                    opporec.CloseDate = b.Close_Date_Opportunity__c;
                    opporec.Description = b.Description_Opportunity__c;
                    opporec.StageName = b.Stage_Opportunity__c;
                    upsert opporec;
                    return opporec;
                
	}
	global static  EMPLOYEE__c employeeCreation(BatchUploadable__c b)
	{
		
		   	EMPLOYEE__c emprec = new EMPLOYEE__c();
                  
                  //Map for retrieving values from custom setting in the form of keys and values related to it
        Map<String,List<String>>mapofsrcTodes = new Map<String,List<String>>();
               		List<String>fieldLst = new List<String>();
               		//iterate on custom setting
            		   for(Batch_Upload_Setting__c custom : mapofBatchCustomSetting.values())
            		   {
            		   		
                			if(custom.Destination_Object__c == 'EMPLOYEE__c')
            				{
            					f2 = custom.Source_Field__c;
            					if(mapofsrcTodes.containskey(f2))
								{
									mapofsrcTodes.get(f2).add(custom.Destination_Field__c);
          						}
   								else
   								{
   									fieldLst.add(custom.Destination_Field__c);
      								mapofsrcTodes.put(f2, fieldLst);
  								}
							}
            			}
            			System.debug('lookup value from account:-'+b.Employee__c);
            			//Assigning Id of lookup field to new accrec instance
            			emprec.id = b.Employee__c;
            			System.debug('we are copying id accrec::----'+emprec.id);
               			Set<String> keys = mapofsrcTodes.keyset();
               			for(string k : keys)
               			{
               				Object s1 = b.get(k);
               				List<String> val = mapofsrcTodes.get(k);
               				for(String v : val)
               				{
               					emprec.put(v,s1);
               					System.debug('Hiiiiiiiiiiiiiiiii accrec inside else:'+emprec);
               				}
               			}
                  
                    emprec.Name = b.First_Name_Employees__c;
                    emprec.Date_of_Joining__c = b.Date_of_Joining_EMPLOYEE__c;
                    emprec.First_Name__c = b.First_Name_Employees__c;
                    System.debug('Last name of contact:-'+ b.Last_Name_Employees__c);
                    emprec.Last_Name__c = b.Last_Name_Employees__c;
                    
                    emprec.Zip__c = b.Zip_Code_EMPLOYEE__c;
                    emprec.Date_of_Birth__c = b.Date_of_Birth_Employees__c;
                    upsert emprec;
                    empIDforothermethod = emprec.id;
               		return emprec;
                
	}
	global static Sa__c salaryDetailsCreation(BatchUploadable__c b)
	{
		
		Sa__c salrec = new Sa__c();
		
	 //Map for retrieving values from custom setting in the form of keys and values related to it
        Map<String,List<String>>mapofsrcTodes = new Map<String,List<String>>();
               		List<String>fieldLst = new List<String>();
               		//iterate on custom setting
            		   for(Batch_Upload_Setting__c custom : mapofBatchCustomSetting.values())
            		   {
            		   		
                			if(custom.Destination_Object__c == 'Sa__c')
            				{
            					f2 = custom.Source_Field__c;
            					if(mapofsrcTodes.containskey(f2))
								{
									mapofsrcTodes.get(f2).add(custom.Destination_Field__c);
          						}
   								else
   								{
   									fieldLst.add(custom.Destination_Field__c);
      								mapofsrcTodes.put(f2, fieldLst);
  								}
							}
            			}
            			System.debug('lookup value from account:-'+b.Salary_Details__c);
            			//Assigning Id of lookup field to new accrec instance
            			salrec.id = b.Salary_Details__c;
            			System.debug('we are copying id accrec::----'+salrec.id);
               			Set<String> keys = mapofsrcTodes.keyset();
               			for(string k : keys)
               			{
               				Object s1 = b.get(k);
               				List<String> val = mapofsrcTodes.get(k);
               				for(String v : val)
               				{
               					salrec.put(v,s1);
               					System.debug('Hiiiiiiiiiiiiiiiii accrec inside else:'+salrec);
               				}
               			}
                   
                    salrec.Name = b.Name_Salary_Details__c;
                    salrec.Bank_Account_Number__c = b.Bank_Account_Number_Salary_Detail__c;
                    salrec.Basic__c = b.Basic_Salary_Detail__c;
                    salrec.HRA__c = b.HRA_Salary_Detail__c;
                    salrec.Mode_of_Payment__c = b.Mode_of_payment_Salary_Detail__c;
                    salrec.PF_Deduction__c = b.PF_Deduction_Salary_Details__c;
                    salrec.Special_Allowance__c = b.Special_Allowance_Salary_Details__c;
                    salrec.Salary_Credit_Date__c = b.Salary_Credit_Date_Salary_Details__c;
                    salrec.Bank_Details__c = b.Bank_Details_Salary_Details__c;
                    salrec.Credited_To__c = empIDforothermethod;
                    upsert salrec;
                	return salrec; 
	}
	}