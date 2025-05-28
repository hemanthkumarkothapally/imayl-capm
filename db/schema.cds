namespace db.imail;
using { cuid } from '@sap/cds/common';

entity Users : cuid {
    empID        : String(20);
    firstName    : String(50);
    lastName     : String(50);
    emailID      : String(100);
    phone        : String(20);
    address1     : String(100);
    city         : String(50);
    state        : String(50);
    zipcode      : String(10);
    country      : String(50);
    location     : String(50);
    department   : String(50);
    role         : String(50);
    status       : String(20);
    userType     : String(20);
    accessType   : String(20);
    language     : String(30);

}

entity Carriers : cuid {
    Name                  : String(100);
    Description           : String(255);
    Status                : String(50);
    ShipmentTrackingURL   : String(255);
}

entity Package_Types: cuid {
    Code                  : String(50);
    Name                  : String(100);
    Description           : String(255);
    Status                : String(50);  
}

entity Package_Statuses : cuid {
    Code               : String(50);
    Description        : String(255);
    Templates          : String(100);
    Type               : String(50);
    ColorPicker        : String(20);     // Hex code or color name
    OrderFlow          : String(100);
    Status             : String(50);
    PhotoRequired      : Boolean;
    SignatureRequired  : Boolean;
    HideTracking       : Boolean;

}

entity Locations : cuid {
    Code       : String(50);
    Name       : String(100);
    Address    : String(255);
    City       : String(100);
    State      : String(100);
    Zipcode    : String(20);
    Country    : String(100);
    Phone      : String(20);
    Status     : String(50);
    Remarks    : String(255);
}

entity Calendars : cuid {
    StartDateTime : Date;
    EndDateTime   : Date;
    Reason        : String(255);
}

entity Delivery_Locations : cuid {
    LocationCode     : String(50);
    LocationName     : String(100);
    LocationStatus   : String(50);
    LocationRemarks  : String(255);
}