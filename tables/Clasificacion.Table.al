table 50150 Clasificacion
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

        field(4; Puntuacion1; Integer)
        {
            // DataClassification = CustomerContent;

            FieldClass = FlowField;
            CalcFormula = sum(Partidos.PuntosLocal where(EquipoLocal = field(NombreEquipo)));
            //TableRelation = Partidos.PuntosLocal where(EquipoLocal = field(NombreEquipo));
        }
        field(7; Puntuacion2; Integer)//a
        {
            // DataClassification = CustomerContent;

            FieldClass = FlowField;
            CalcFormula = sum(Partidos.PuntosVisitante where(EquipoVisitante = field(NombreEquipo)));
            // TableRelation = Partidos.PuntosVisitante where(EquipoVisitante = field(NombreEquipo));

        } //

        /*
                  field(5;MaximoGol; Text[20])
                {
                    DataClassification = ToBeClassified;
                    Caption = 'Maximo Goleador';

                }

                field(6;MaximoAsis; Text[20])
                {
                    DataClassification = ToBeClassified;
                    Caption = 'Maximo Asistente';

                }
        */

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