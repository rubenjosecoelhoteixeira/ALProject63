table 50009 Car
{
    DataClassification = CustomerContent;
    Caption = 'Car';
    LookupPageId = "Car List";
    DrillDownPageId = "Car List";
    fields
    {
        field(1; ModelNo; Code[20])
        {
            Caption = 'Model No.';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Brand; Code[20])
        {
            Caption = 'Brand';
            DataClassification = CustomerContent;
        }
        field(4; Power; Integer)
        {
            Caption = 'Power (CV)';
            DataClassification = CustomerContent;
        }
        field(5; "Engine Type"; Enum EngineType)
        {
            Caption = 'Engine Type';
            DataClassification = CustomerContent;
        }
        field(10; ID; Guid)
        {
            Caption = 'ID';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; ModelNo)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        ID := CreateGuid();
    end;
}

enum 50001 EngineType
{
    Extensible = true;
    value(0; Petrol)
    {
        Caption = 'Petrol';
    }
    value(1; Diesel)
    {
        Caption = 'Diesel';
    }
    value(2; Electric)
    {
        Caption = 'Electric';
    }
    value(3; Hybrid)
    {
        Caption = 'Hybrid';
    }
}