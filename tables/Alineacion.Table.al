table 50112 Alineacion
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; IdAlineacion; Code[20])
        {
            DataClassification = CustomerContent;


        }
        field(2; Federacion; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Federacion."IdFederación";

        }
        field(3; Equipo; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Equipos.ID_C where(Federacion = field(Federacion));

        }
        field(4; POR; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('POR'));
        }
        field(5; LI; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('LI'));

        }
        field(6; DFC1; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('DFC'));
            trigger OnValidate()

            begin

                if DFC1 = DFC2 then
                    Error('El mismo jugador no puede estar en 2 posiciones');

            end;
        }
        field(7; DFC2; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('DFC'));
            trigger OnValidate()

            begin

                if DFC1 = DFC2 then
                    Error('El mismo jugador no puede estar en 2 posiciones');

            end;
        }
        field(8; LD; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('LD'));

        }
        field(9; MCD; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('MCD'));
        }
        field(10; MI; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('MI'));
            trigger OnValidate()

            begin

                if MI = MD then
                    Error('El mismo jugador no puede estar en 2 posiciones');

            end;
        }
        field(11; MD; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('MD'));
            trigger OnValidate()

            begin

                if MI = MD then
                    Error('El mismo jugador no puede estar en 2 posiciones');

            end;
        }
        field(12; EI; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('EI'));
        }
        field(13; DC; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('DC'));
        }
        field(14; ED; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Jugadores.Nombre where(Club = field(Equipo), PosicionEC = const('ED'));
        }
        //a
    }

    keys
    {
        key(Key1; IdAlineacion, Federacion, Equipo)
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