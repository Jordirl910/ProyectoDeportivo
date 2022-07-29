page 50114 Jornadas
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Jornadas;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(IdPartidos; rec.IdPartidos)
                {
                    ApplicationArea = All;
                    Caption = 'Jornada';
                }
                field(EquipoLocal; rec.EquipoLocal)
                {
                    ApplicationArea = All;
                    Caption = 'Equipo Local';
                }
                field(EquipoVisitante; rec.EquipoVisitante)
                {
                    ApplicationArea = All;
                    Caption = 'Equipo Visitante';
                }
                field(GolesFavor; rec.GolesFavor)
                {
                    ApplicationArea = All;
                    Caption = 'Goles Equipo Local';
                }
                field(GolesContra; rec.GolesContra)
                {
                    ApplicationArea = All;
                    Caption = 'Goles Equipo Visitante';
                }
                /* field(Goleadores; rec.Goleadores)
                 {
                     ApplicationArea = All;

                 }
                 field(Asistentes; rec.Asistentes)
                 {
                     ApplicationArea = All;

                 }*/

                field(EquipoGanador; Rec.EquipoGanador)
                {
                    ApplicationArea = All;
                    Caption = 'Equipo Ganador';
                }
                field(PuntosLocal; Rec.PuntosLocal)
                {
                    ApplicationArea = All;
                    Caption = 'Puntos Equipo Local';
                }
                field(PuntosVisitante; Rec.PuntosVisitante)
                {//a
                    ApplicationArea = All;
                    Caption = 'Puntos Equipo Visitante';
                }
                field(EstadoCerrado; Rec.EstadoCerrado)
                {
                    ApplicationArea = All;

                    Editable = false;

                }
            } //
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            group(AbrirCerrar)
            {
                Caption = 'Abrir/Cerrar Jornada';
                action(ActionName)
                {
                    ApplicationArea = All;
                    Caption = 'Cerrar Jornada'; //Cerrar Jornada es enviarla hacia la tabla clasificación
                    ToolTip = 'Este action te permite cerrar la Jornada';
                    Image = NextSet;
                    //Promoted = true;
                    // PromotedCategory = Process;
                    // PromotedOnly = true;

                    trigger OnAction();


                    begin
                        if Rec.EstadoCerrado = true then exit;
                        Jornada.SetRange(IdPartidos, Rec.IdPartidos);
                        if Jornada.FindSet() then
                            repeat

                                if Jornada.EquipoGanador = Jornada.EquipoLocal then begin

                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();

                                    end;
                                    //Jornada.PuntosLocal := Clasificacion.Puntos;
                                    Clasificacion.GolesFavor += Jornada.GolesFavor;
                                    Clasificacion.GolesContra += Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos += 3;
                                    Clasificacion.Modify();

                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor += Jornada.GolesContra;
                                    Clasificacion.GolesContra += Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Modify()



                                end;
                                if Jornada.EquipoGanador = Jornada.EquipoVisitante then begin
                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor += Jornada.GolesContra;
                                    Clasificacion.GolesContra += Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos += 3;
                                    Clasificacion.Modify();
                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor += Jornada.GolesFavor;
                                    Clasificacion.GolesContra += Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Modify()

                                end;
                                if Jornada.EquipoGanador = 'EMPATE' then begin
                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor += Jornada.GolesFavor;
                                    Clasificacion.GolesContra += Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos += 1;
                                    Clasificacion.Modify();
                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor += Jornada.GolesContra;
                                    Clasificacion.GolesContra += Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos += 1;
                                    Clasificacion.Modify();

                                end;
                                Jornada.Validate(EstadoCerrado, true);
                                Jornada.Modify();
                            until Jornada.Next() = 0;
                    end;
                }
                action(AbrirJornada)
                {
                    ApplicationArea = All;
                    Caption = 'Abrir Jornada';
                    ToolTip = 'Este action te permite Abrir la Jornada';
                    Image = PreviousSet;
                    /*  Promoted = true;
                      PromotedCategory = Process;
                      PromotedOnly = true;*/

                    trigger OnAction();


                    begin
                        if Rec.EstadoCerrado = false then exit;
                        Jornada.SetRange(IdPartidos, Rec.IdPartidos);
                        if Jornada.FindSet() then
                            repeat

                                if Jornada.EquipoGanador = Jornada.EquipoLocal then begin

                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();

                                    end;
                                    //Jornada.PuntosLocal := Clasificacion.Puntos;
                                    Clasificacion.GolesFavor -= Jornada.GolesFavor;
                                    Clasificacion.GolesContra -= Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos -= 3;
                                    Clasificacion.Modify();

                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor -= Jornada.GolesContra;
                                    Clasificacion.GolesContra -= Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Modify()



                                end;
                                if Jornada.EquipoGanador = Jornada.EquipoVisitante then begin
                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor -= Jornada.GolesContra;
                                    Clasificacion.GolesContra -= Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos -= 3;
                                    Clasificacion.Modify();
                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor -= Jornada.GolesFavor;
                                    Clasificacion.GolesContra -= Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Modify()

                                end;
                                if Jornada.EquipoGanador = 'EMPATE' then begin
                                    Equipos.Get(Jornada.EquipoLocal);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoLocal, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoLocal;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor -= Jornada.GolesFavor;
                                    Clasificacion.GolesContra -= Jornada.GolesContra;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos -= 1;
                                    Clasificacion.Modify();
                                    Equipos.Get(Jornada.EquipoVisitante);
                                    If not Clasificacion.Get(Equipos.Liga, Jornada.EquipoVisitante, Equipos.Federacion) then begin
                                        Clasificacion.Init();
                                        Clasificacion.IDdivision := Equipos.Liga;
                                        Clasificacion.NombreEquipo := Jornada.EquipoVisitante;
                                        Clasificacion.Federacion := Equipos.Federacion;
                                        Clasificacion.Insert();
                                    end;
                                    Clasificacion.GolesFavor -= Jornada.GolesContra;
                                    Clasificacion.GolesContra -= Jornada.GolesFavor;
                                    Clasificacion.Diferencia := Clasificacion.GolesFavor - Clasificacion.GolesContra;
                                    Clasificacion.Puntos -= 1;
                                    Clasificacion.Modify();

                                end;
                                Jornada.Validate(EstadoCerrado, false);
                                Jornada.Modify();
                            until Jornada.Next() = 0;
                    end;
                }
            }
            group(Page)
            {
                Caption = 'Page Programa';

                action(Clasificacion)
                {
                    ApplicationArea = All;
                    Caption = 'Clasificación';
                    ToolTip = 'Esta page te permite ver los puntos que tiene cada equipo';
                    Image = AbsenceCalendar;
                    /*  Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;*/
                    RunObject = page Clasificacion2;
                    trigger OnAction()
                    begin

                    end;
                }
                action(Equipos)
                {
                    ApplicationArea = All;
                    Caption = 'Equipos';
                    ToolTip = 'Esta page te permite ver los equipos que participan en la Liga Europea';
                    Image = TeamSales;
                    /*  Promoted = true;
                     PromotedCategory = Process;
                     PromotedOnly = true;*/
                    RunObject = page Equipos;
                    trigger OnAction()
                    begin

                    end;
                }
                action(Federación)
                {
                    ApplicationArea = All;
                    Caption = 'Federaciones';
                    ToolTip = 'Esta page te permite ver de donde son los equipos que participan en la Liga Europea';
                    Image = CustomerContact;
                    /*  Promoted = true;
                     PromotedCategory = Process;
                     PromotedOnly = true;*/
                    RunObject = page Federacion;
                    trigger OnAction()
                    begin

                    end;
                }
                action(Jugadores)
                {
                    ApplicationArea = All;
                    Caption = 'Jugadores';
                    ToolTip = 'Esta page te permite ver los jugadores que juegan en la Super Liga';
                    Image = Customer;
                    /*  Promoted = true;
                     PromotedCategory = Process;
                     PromotedOnly = true;*/
                    RunObject = page Jugadores;
                    trigger OnAction()
                    begin

                    end;
                }
                action(Liga)
                {
                    ApplicationArea = All;
                    Caption = 'Liga Nacional';
                    ToolTip = 'Esta page te permite ver la liga Nacional en la que juega cada equipo';
                    Image = CustomerRating;
                    /*  Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;*/
                    RunObject = page Liga;
                    trigger OnAction()
                    begin

                    end;
                }
                action(Partidos)
                {
                    ApplicationArea = All;
                    Caption = 'Partidos';
                    ToolTip = 'Esta page te permite ver los partidos que se han jugado de la Super Liga';
                    Image = Calendar;
                    /*  Promoted = true;
                     PromotedCategory = Process;
                     PromotedOnly = true;*/
                    RunObject = page Jornadas;
                    trigger OnAction()
                    begin

                    end;
                }
            }
        }
    }


    var
        Jornada: Record Jornadas;
        Clasificacion: Record Clasificacion2;
        Equipos: Record Equipos;
    //EquipoGanadorV: Record Jornadas.EquipoGanador;

}