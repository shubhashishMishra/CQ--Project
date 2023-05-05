@isTest
public class classWithPermissionTest {
    @isTest
    public static void testUserPermission(){
        classWithPermission.checkPermission(UserInfo.getUserId());
    }

}