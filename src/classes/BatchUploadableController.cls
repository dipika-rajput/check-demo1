public with sharing class BatchUploadableController {

    public BatchUploadableController(ApexPages.StandardController controller) {
   //System.assert(false, batchjobId);
    }
public void call()
{
     BatchUploadableClass b =new BatchUploadableClass();
    Id batchJobId = Database.executeBatch(b);
    
}



}