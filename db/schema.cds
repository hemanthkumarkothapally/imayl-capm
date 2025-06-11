namespace db.imail;

using {cuid} from '@sap/cds/common';

entity All_Packages : cuid {
    Received_Date     : String(20);
    Updated_Date      : String(20);
    Package_Logger    : String(20);
    Ship_From         : String(20);
    From_Address      : String(20);
    Ship_To           : String(20);
    To_Address        : String(20);
    Carrier           : String(20);
    Ext_Id            : String(20);
    Int_Id            : String(20);
    Status            : String(20);
    Ref_Id            : String(20);
    Ref_Date          : String(20);
    Notes             : String(20);
    Priority          : String(20);
    Storage_Loc       : String(20);
    Bin               : String(20);
    Delivery_Location : String(20);
    Package_Type      : String(20);
    Ship_To_Location  : String(20);

}

entity Users : cuid {
    empID      : String(20);
    firstName  : String(50);
    lastName   : String(50);
    emailID    : String(100);
    phone      : String(20);
    address1   : String(100);
    city       : String(50);
    state      : String(50);
    zipcode    : String(10);
    country    : String(50);
    location   : String(50);
    department : String(50);
    role       : String(50);
    status     : String(20);
    userType   : String(20);
    accessType : String(20);
    language   : String(30);

}

entity Carriers : cuid {
    Name                : String(100);
    Description         : String(255);
    Status              : String(50);
    ShipmentTrackingURL : String(255);
}

entity Package_Types : cuid {
    Code        : String(50);
    Name        : String(100);
    Description : String(255);
    Status      : String(50);
}

entity Package_Statuses : cuid {
    Code              : String(50);
    Description       : String(255);
    Templates         : String(100);
    Type              : String(50);
    ColorPicker       : String(20); // Hex code or color name
    OrderFlow         : String(100);
    Status            : String(50);
    PhotoRequired     : Boolean;
    SignatureRequired : Boolean;
    HideTracking      : Boolean;

}

entity Locations : cuid {
    Code    : String(50);
    Name    : String(100);
    Address : String(255);
    City    : String(100);
    State   : String(100);
    Zipcode : String(20);
    Country : String(100);
    Phone   : String(20);
    Status  : String(50);
    Remarks : String(255);
}

entity Calendars : cuid {
    StartDateTime : Date;
    EndDateTime   : Date;
    Reason        : String(255);
}

entity Delivery_Locations : cuid {
    Code    : String(50);
    Name    : String(100);
    Status  : String(50);
    Remarks : String(255);
}

entity Roles : cuid {
    Code                 : String(50);
    Name                 : String(100);
    Status               : String(50);
    All_Packages         : Boolean;
    Log_a_Package        : Boolean;
    Create               : Boolean;
    Update               : Boolean;
    Void                 : Boolean;
    My_Packages          : Boolean;
    Reports              : Boolean;
    User_Log             : Boolean;
    Email_Editor         : Boolean;
    Carriers             : Boolean;
    Package_Types        : Boolean;
    Package_Statuses     : Boolean;
    Calendar             : Boolean;
    Delivery_Locations   : Boolean;
    User_Management      : Boolean;
    Roles                : Boolean;
    CompanySettings      : Boolean;
    SLA_Hours            : Boolean;
    DateandTimeZone      : Boolean;
    ImportData           : Boolean;
    InviteUsers          : Boolean;
    PrinterConfiguration : Boolean;
    FieldConfiguration   : Boolean;
    EmailConfiguration   : Boolean;
}
entity User_Log : cuid {
    User_Name:String(50);
    Module_Name: String(50);
    Operation_Type:String(50);
    IP_Address:String(25);
    Date:Date;
    Time:Time;
}
entity Emails : cuid {
    Code                 : String(10);
    Name                 : String(50);
    Template_Description : String(250);
    Is_Active            : String(50);
    Status_Name          : String(50);
    Place_Holder         : String(150);
    Subject              : String(250);
    Email_Body           : String(500);
    SMS_Text             : String(300);

}
