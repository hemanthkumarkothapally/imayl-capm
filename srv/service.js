const cds = require("@sap/cds");
module.exports = (src) => {
    const { Users, Carriers, Package_Types ,Package_Statuses,Locations,Calendars,Delivery_Locations} = src.entities;
    src.on('CREATE', 'Carriers', async (req) => {
        const { Name, Description, Status } = req.data;
        if (!Name || !Description || !Status) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Carriers).entries(req.data);
        } catch (error) {
            throw req.error(500, "Carrier data was not inserted due to a server error."); 
        }

    })
    src.on('CREATE', 'Package_Types', async (req) => {
        const {Code, Name, Description, Status } = req.data;
        if (!Code || !Name || !Description || !Status) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Package_Types).entries(req.data);
        } catch (error) {
            throw req.error(500, "Package_Types data was not inserted due to a server error."); 
        }

    })

    src.on('CREATE', 'Package_Statuses', async (req) => {
        const {Code,Description,Templates,Type,ColorPicker,OrderFlow,Status,PhotoRequired,SignatureRequired,HideTracking} = req.data;
        if (!Code || !Description  || !Templates || !Type  || !ColorPicker || !OrderFlow  || !Status || PhotoRequired === undefined || SignatureRequired === undefined || HideTracking === undefined) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Package_Statuses).entries(req.data);
        } catch (error) {
            throw req.error(500, "Package_Statuses data was not inserted due to a server error."); 
        }

    })

    src.on('CREATE', 'Locations', async (req) => {
        const {Code, Name,Status,Address,Country } = req.data;
        if (!Code || !Name || !Status || !Address || !Country) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Locations).entries(req.data);
        } catch (error) {
            throw req.error(500, "Locations data was not inserted due to a server error."); 
        }

    })

    src.on('CREATE', 'Calendars', async (req) => {
        const {StartDateTime,EndDateTime,Reason} = req.data;
        if (!StartDateTime || !EndDateTime || !Reason ) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Calendars).entries(req.data);
        } catch (error) {
            throw req.error(500, "Calendars data was not inserted due to a server error."); 
        }

    })

    src.on('CREATE', 'Delivery_Locations', async (req) => {
        const {LocationCode,LocationName,LocationStatus} = req.data;
        if (!LocationCode || !LocationName || !LocationStatus ) {
            throw req.error(400, "Enter mandatory fields"); 
        }
        try {
            await INSERT.into(Delivery_Locations).entries(req.data);
        } catch (error) {
            throw req.error(500, "Delivery_Locations data was not inserted due to a server error."); 
        }

    })
}