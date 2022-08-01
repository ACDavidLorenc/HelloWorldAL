// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50102 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('Hello world!');
    end;
}

pageextension 50101 VendorListExt extends "Vendor List"
{
    trigger OnOpenPage();
    begin
        Message('Hello world!');
    end;
}

table 50120 MyTable
{
    DataClassification = ToBeClassified;
    Caption = 'Sample Table';

    fields
    {
        field(1; NO; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Must be unique';
        }
        field(2; FristName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; SecondName; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; NO)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
}

page 50121 MyPage
{
    PageType = List;
    SourceTable = MyTable;
    UsageCategory = Lists;
    Caption = 'Moje Stranka';
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(NO; Rec.NO)
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
                field(FristName; Rec.FristName)
                {
                    ApplicationArea = All;
                }
                field(SecondName; Rec.SecondName)
                {
                    ApplicationArea = All;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Vek osoby';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(NewAction)
            {
                ApplicationArea = All;
                RunObject = codeunit "Document Totals";
            }
        }
    }
}

table 50122 Devices
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; Dev; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'Musí být jedinečné';
        }

        field(3; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; Amount; Code[3])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Dev)
        {
            Clustered = true;
        }
    }

}

