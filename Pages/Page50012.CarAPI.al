page 50012 CarAPI
{
    PageType = API;
    Caption = 'CarAPI';
    APIPublisher = 'sd';
    APIGroup = 'custom';
    APIVersion = 'v1.0';
    EntityName = 'car';
    EntitySetName = 'cars';
    SourceTable = Car;
    DelayedInsert = true;
    ODataKeyFields = ID;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; ID)
                {
                    Caption = 'id', Locked = true;
                }
                field(modelno; ModelNo)
                {
                    Caption = 'modelno', Locked = true;
                }
                field(description; Description)
                {
                    Caption = 'description', Locked = true;
                }
                field(brand; Brand)
                {
                    Caption = 'brand', Locked = true;
                }
                field(engineType; "Engine Type")
                {
                    Caption = 'engineType', Locked = true;
                }
                field(power; Power)
                {
                    Caption = 'power', Locked = true;
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Insert(true);
        Modify(true);
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    var
        Car: Record Car;
    begin
        Car.SetRange(ID, ID);
        Car.FindFirst();
        if ModelNo <> Car.ModelNo then begin
            Car.TransferFields(Rec, false);
            Car.Rename(ModelNo);
            TransferFields(Car);
        end;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        Delete(true);
    end;
}