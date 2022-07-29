table 50100 Federacion
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; IdFederación; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; NombreFederacion; text[100])
        {
            DataClassification = CustomerContent;

        } //
        field(3; NombreLiga; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {//a
        key(Key1; "IdFederación")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "IdFederación", NombreFederacion) { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}