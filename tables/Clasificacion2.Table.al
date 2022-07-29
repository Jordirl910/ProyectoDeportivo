table 50115 Clasificacion2
{
    //ordenado en package table y page 
    DataClassification = CustomerContent;

    fields
    {
        field(1; IDdivision; Code[10])
        {
            DataClassification = CustomerContent;

            TableRelation = Liga.IdDivision;

        }

        field(2; NombreEquipo; Text[20])
        {
            DataClassification = CustomerContent;

            TableRelation = Equipos.ID_C;

        }
        field(3; Federacion; Text[30])
        {
            DataClassification = CustomerContent;

            TableRelation = Federacion."IdFederación";

        }

        field(4; Puntos; Integer)
        {
            DataClassification = CustomerContent;

        }


        field(5; GolesFavor; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Goles a Favor';

        }

        field(6; GolesContra; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Goles en Contra';


        }
        field(7; Diferencia; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Diferencia de goles';

        }

    }

    keys
    {
        key(Key1; IDdivision, NombreEquipo, Federacion)
        {
            Clustered = true;
        }

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