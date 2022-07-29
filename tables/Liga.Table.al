table 50111 Liga
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; IdDivision; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; NombreDiv; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; NombreFed; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    } //
      //a
    keys
    {
        key(Key1; IdDivision, NombreFed)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; IdDivision, NombreDiv) { }
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