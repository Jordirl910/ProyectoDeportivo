table 50109 PosicionJugador

{

    DataClassification = ToBeClassified;

    Caption = 'Posición Jugador';

    fields

    {

        field(1; Posicion; Enum PosicionGeneral)
        {
            DataClassification = ToBeClassified;
        }

        field(2; Code; Code[20])
        {
        }

        field(3; Descripcion; Text[50])
        {
        }
    }


    keys

    {

        key(Key1; Posicion, Code)

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