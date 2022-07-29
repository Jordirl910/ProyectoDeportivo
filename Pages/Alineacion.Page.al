page 50112 Alineacion
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Alineacion;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(IdAlineacion; Rec.IdAlineacion)
                {
                    ApplicationArea = All;
                    Caption = 'Número Alineacion';

                }
                field(Federacion; Rec.Federacion)
                {
                    ApplicationArea = All;
                    Caption = 'Federación';

                }
                field(Equipo; Rec.Equipo)
                {
                    ApplicationArea = All;
                    Caption = 'Equipo';

                }
                field(POR; Rec.POR)
                {
                    ApplicationArea = All;
                    Caption = 'POR';

                }
                field(LI; Rec.LI)
                {
                    ApplicationArea = All;
                    Caption = 'LI';

                }
                field(DFC1; Rec.DFC1)
                {
                    ApplicationArea = All;
                    Caption = 'DFC Izquierdo';

                }
                field(DFC2; Rec.DFC2)
                {
                    ApplicationArea = All;
                    Caption = 'DFC Derecho';

                }
                field(LD; Rec.LD)
                {
                    ApplicationArea = All;
                    Caption = 'LD';

                }
                field(MCD; Rec.MCD)
                {
                    ApplicationArea = All;
                    Caption = 'MCD';

                }
                field(MI; Rec.MI)
                {
                    ApplicationArea = All;
                    Caption = 'MI';

                }
                field(MD; Rec.MD)
                {
                    ApplicationArea = All;
                    Caption = 'MD';

                }
                field(EI; Rec.EI)
                {
                    ApplicationArea = All;
                    Caption = 'EI';

                }
                field(DC; Rec.DC)
                {
                    ApplicationArea = All;
                    Caption = 'DC';

                }
                field(ED; Rec.ED)
                {
                    ApplicationArea = All;
                    Caption = 'ED';

                }
            }
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
                RunObject = page Jornadas;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}