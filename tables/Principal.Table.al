table 50008 Principal  //estoy probadno con esot
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Principal; Code[10])
        {
            DataClassification = CustomerContent;


        }
    }


    keys
    {
        key(Key1; Principal)
        {
            Clustered = true;
        }
    }
    //a


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