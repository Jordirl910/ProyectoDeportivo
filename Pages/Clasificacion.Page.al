page 50150 ClasificacionSuperLiga
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Clasificacion;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(IDdivision; rec.IDdivision)
                {
                    ApplicationArea = All;
                    Caption = 'Codigo División';

                }

                field(NombreEquipo; rec.NombreEquipo)
                {
                    ApplicationArea = All;
                    TableRelation = Equipos.Liga WHERE(Nombre = field(NombreEquipo));
                    Caption = 'Nombre del Equipo';

                }
                field(Federacion; Rec.Federacion)
                {
                    ApplicationArea = All;
                    Caption = 'Federación';
                }
                field(Puntuacion1; Rec.Puntuacion1)
                {
                    ApplicationArea = All;
                    Caption = 'Puntos como Local';
                }
                field(Puntuacion2; Rec.Puntuacion2)
                {
                    ApplicationArea = All;
                    Caption = 'Puntos como Visitante';

                }
                field(PuntosTotal; PuntosTotal)
                {
                    Caption = 'Puntos Totales Equipo';
                }
                //

                /*
                                field(MaximoGol; rec.MaximoGol)
                                {
                                    ApplicationArea = All;

                                }

                                 field(MaximoAsis; rec.MaximoAsis)
                                {
                                    ApplicationArea = All;

                                }
                */
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

    var
    //  Clasificacion: Record Clasificacion;


    trigger OnAfterGetRecord()


    begin
        PuntosTotal := Rec.Puntuacion1 + Rec.Puntuacion2;

        //CalcFields(Puntuacion1, Puntuacion2)
    end;

    var//a
        PuntosTotal: Integer;
}