trigger TriggerOnAccount on Account (after insert , after update) {
    public static final String ACCOUNT_PERMISSION = 'Account_Manager';
    Boolean hasPermission = FeatureManagement.checkPermission(ACCOUNT_PERMISSION);
    system.debug('has____1'+hasPermission);
    if(Trigger.isAfter && Trigger.isInsert ){
        AccountTriggerHandlerApex.isAfterInsert(Trigger.New);
    }
    if(Trigger.isAfter && Trigger.isUpdate ){
        AccountTriggerHandlerApex.isAfterUpdate(Trigger.New);
    }
}