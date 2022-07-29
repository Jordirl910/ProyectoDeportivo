table 50103 Equipos
{
    DataClassification = CustomerContent;


    fields
    {
        field(1; ID_C; Code[20])
        {

            DataClassification = CustomerContent;
            //AutoIncrement = true;
        }
        field(2; Nombre; Text[50])
        {

            DataClassification = CustomerContent;

        } //
        field(3; ID_j; Code[20])//a
        {

            DataClassification = CustomerContent;
            /*trigger OnValidate()
             begin
                  if Nombre <> xRec. then

                 then

                     Error('Este jugador pertenece a otro equipo');


             end;*/

        }
        field(4; Liga; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Liga.IdDivision WHERE(NombreFed = field(Federacion));

        }
        field(5; Federacion; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Federacion."IdFederación";

        }

    }

    keys
    {
        key(Key1; ID_C)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Nombre, Liga) { }
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