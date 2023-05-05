public class classWithPermission {
@AuraEnabled
    public static boolean checkPermission(String userId){
        String permissionSetName = 'Account_Manager';
        String queryString = 'SELECT Id FROM PermissionSetAssignment WHERE AssigneeId = \'' + userId + '\' AND PermissionSet.Name = \'' + permissionSetName + '\'';
        List<PermissionSetAssignment> permissionSetInstance =  Database.query(queryString);
        if(permissionSetInstance.size() > 0){
            return true;
        }
        return false;
    }
}