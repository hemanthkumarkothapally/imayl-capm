using { db.imail as imail } from '../db/schema';

service imailservice {
    entity Users as projection on imail.Users;   
    entity Carriers as projection on imail.Carriers;
    entity Package_Types as projection on imail.Package_Types;
    entity Package_Statuses as projection on imail.Package_Statuses;
    entity Locations as projection on imail.Locations;
    entity Calendars as projection on imail.Calendars;
    entity Delivery_Locations as projection on imail.Delivery_Locations; 
}