table 50106 Jugadores
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID_J; Code[20])
        {

            DataClassification = CustomerContent;
            //AutoIncrement = true;
            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;
        }
        field(2; Nombre; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(3; Club; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(4; Edad; Integer)
        {
            DataClassification = CustomerContent;
            MinValue = 16;
            MaxValue = 42;
        }
        field(5; Dorsal; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(6; Goles; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(7; Asistencias; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(8; Posicion; Enum PosicionGeneral)
        {
            DataClassification = CustomerContent;
        }
        field(9; PosicionEC; Text[10])
        {
            DataClassification = CustomerContent;
            TableRelation = PosicionJugador.Code WHERE(Posicion = field(Posicion));
        }
        field(10; Capitan; Enum Capitan)
        {
            DataClassification = CustomerContent;
            /* OptionMembers = No,Primer,Segundo,Tercero;
             OptionCaption = 'Jugador Normal, 1r Capitan, 2do Capitan, 3r Capitan, '; */
        }
        field(11; Nacionalidad; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }

    }  //

    keys
    {
        key(Key1; ID_J, Nombre)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Nombre, Capitan, Club, Dorsal, Posicion, PosicionEC) { }//a
    }



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