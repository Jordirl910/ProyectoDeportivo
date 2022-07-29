page 50104 Partidos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Partidos;

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
            action(Clasificacion)
            {
                ApplicationArea = All;
                Caption = 'Clasificación';
                ToolTip = 'Esta page te permite ver los puntos que tiene cada equipo';
                Image = AbsenceCalendar;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                RunObject = page ClasificacionSuperLiga;
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                RunObject = page Partidos;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        if Rec.GolesFavor > Rec.GolesContra then
            Rec.EquipoGanador := Rec.EquipoLocal

        else
            if Rec.GolesFavor < Rec.GolesContra then
                Rec.EquipoGanador := Rec.EquipoVisitante
            else
                Rec.EquipoGanador := 'Empate';

    end;

}