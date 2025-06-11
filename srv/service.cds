using { db.imail as imail } from '../db/schema';

service imailservice {
    entity All_Packages as projection on imail.All_Packages;
    entity Users as projection on imail.Users;   
    entity Carriers as projection on imail.Carriers;
    entity Package_Types as projection on imail.Package_Types;
    entity Package_Statuses as projection on imail.Package_Statuses;
    entity Locations as projection on imail.Locations;
    entity Calendars as projection on imail.Calendars;
    entity Delivery_Locations as projection on imail.Delivery_Locations; 
    entity Roles as projection on imail.Roles;
    entity User_Log as projection on imail.User_Log;
    entity Emails as projection on imail.Emails;

    @odata.function
    function CountData(tablename:String) returns Integer;

}