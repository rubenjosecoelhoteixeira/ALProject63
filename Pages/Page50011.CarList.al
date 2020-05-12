page 50011 "Car List"
{
    PageType = List;
    SourceTable = Car;
    Caption = 'Car List';
    ApplicationArea = All;
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ModelNo; ModelNo)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Brand; Brand)
                {
                    ApplicationArea = All;
                }
                field("Engine Type"; "Engine Type")
                {
                    ApplicationArea = All;
                }
                field(Power; Power)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}