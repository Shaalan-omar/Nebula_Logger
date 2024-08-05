trigger InsertContact on Account (after insert) {

    List<Contact> conList = new List<Contact>();
    
    for(Account acc : Trigger.new){
    
    conList.add(new Contact(FirstName='John', AccountId=acc.id));//I left the Last Name fadi 3ashan akhosh fel error
    
    }
    
    try {
    
    insert conList;
    
    System.debug('Contact List'+conList);
    
    } catch(DmlException e) {
    
    Logger.error(e.getMessage());
    
    Logger.saveLog();
    
    } }
    
    