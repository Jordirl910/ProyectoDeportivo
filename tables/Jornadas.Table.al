table 50114 Jornadas
{
    DataClassification = customerContent;

    fields
    {
        field(1; IdPartidos; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; EquipoLocal; Text[50])
        {
            DataClassification = CustomerContent;

            NotBlank = true;
            TableRelation = Equipos.ID_C;
        }
        field(3; EquipoVisitante; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Equipos.ID_C;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if EquipoLocal = EquipoVisitante then Error('Un equipo no puede jugar contra si mismo');
                GolesFavor := Random(0 - 5);
                Validate(GolesContra, Random(0 - 5));
                if Rec.GolesFavor > Rec.GolesContra then
                    Rec.EquipoGanador := Rec.EquipoLocal

                else
                    if Rec.GolesFavor < Rec.GolesContra then
                        Rec.EquipoGanador := Rec.EquipoVisitante
                    else
                        Rec.EquipoGanador := 'Empate';
            end;
        }
        field(4; GolesFavor; Integer)
        {
            DataClassification = CustomerContent;
            /* trigger OnValidate()
             var
              

             end;*/
        }
        field(5; GolesContra; Integer)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if GolesFavor > GolesContra then
                    PuntosLocal := 3
                else
                    if GolesFavor < GolesContra then
                        PuntosLocal := 0
                    else
                        PuntosLocal := 1;
                if GolesFavor < GolesContra then
                    PuntosVisitante := 3
                else
                    if GolesFavor > GolesContra then
                        PuntosVisitante := 0
                    else
                        PuntosVisitante := 1
            end;
        }
        /* field(6; Goleadores; Text[50])
         {
             DataClassification = CustomerContent;
             Caption = 'Máximos Goleadores';
         }
         field(7; Asistentes; Text[50])
         {
             DataClassification = CustomerContent;
             Caption = 'Máximos Asistentes';
         }*/ /*
         field(8; Victoria; Boolean)
         {
             DataClassification = CustomerContent;
             trigger OnValidate()
             var

             begin
                 Derrota := false;
                 Empate := false;
                 Puntos := Puntos + 3;

             end;
//a
         }
         field(9; Derrota; Boolean)
         {
             DataClassification = CustomerContent;
             trigger OnValidate()
             var
                 myInt: Integer;
             begin
                 Victoria := false;
                 Empate := false;
                 Puntos := Puntos + 0;
             end;
         }
         field(10; Empate; Boolean)
         {
             DataClassification = CustomerContent;
             trigger OnValidate()
             var
                 myInt: Integer;
             begin
                 Victoria := false;
                 Derrota := false;
                 Puntos := Puntos + 1;
             end;
         }*/
        field(8; PuntosLocal; Integer)
        {
            DataClassification = CustomerContent;

            /*  trigger OnValidate()
              var
                  myInt: Integer;
              begin

              end; */
            //
        }
        field(9; PuntosVisitante; Integer)
        {
            DataClassification = CustomerContent;

            /* trigger OnValidate()
             var
                 myInt: Integer;
             begin

             end; */
        }
        field(10; EquipoGanador; Code[30]) //SI FUNCIONA
        {
            DataClassification = CustomerContent;
            /*   trigger OnValidate()
               var
                   myInt: Integer;
               begin
                   if GolesFavor > GolesContra then
                       EquipGuanyador := EquipoLocal
                   else
                       if GolesFavor < GolesContra then
                           EquipGuanyador := EquipoVisitante
                       else
                           Message('Empate');

               end;*/
        }
        field(11; EstadoCerrado; Boolean)
        {
            DataClassification = CustomerContent;
        }
        /*  field(11; Victoriados; Integer)
          {

              DataClassification = ToBeClassified;
              trigger OnValidate()
              var
                  myInt: Integer;
              begin
                  if Victoria = true then
                      Victoriados := Victoriados + 1;
                  //Puntuacion := (Victoria * 3) + (Empate * 1);
              end;

          }*/
    }

    keys
    {
        key(Key1; IdPartidos, EquipoLocal, PuntosLocal, PuntosVisitante)
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        fieldgroup(DropDown; IdPartidos, EquipoLocal, EquipoVisitante, EquipoGanador) { }
    }
    /*
        var
            a: Integer;
            b: Integer;
            c: Integer;

            begin

                if boolean(Victoria) := true then 
                    a := a++;
                else if boolean(Derrota) := true then
                    b:= b++;
                else c := c++;

            end;
            */

    trigger OnInsert()
    begin

    end;

    trigger OnModify()

    begin /*
        if GolesFavor > GolesContra then
            EquipoGanador := EquipoLocal
        else
            if GolesFavor < GolesContra then
                EquipoGanador := EquipoVisitante
            else
                Message('Empate');*/
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}