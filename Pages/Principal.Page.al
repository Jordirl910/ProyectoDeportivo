
page 50008 Principal
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Principal;
    Caption = 'Pagina Principal Super Liga';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Editable = false;
                ShowCaption = false;
                field(Name; Mensaje)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Style = StrongAccent;
                    MultiLine = true;
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
            action(Federacion)
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



    trigger OnOpenPage()

    begin
        if not Rec.Get() then Rec.Insert();
        Mensaje := '¡Bienvenidos a la pagina principal de la Super Liga Europea! Desde aqui podrás ir a la pagina que te interese para ver desde los equipos que participan en esta liga, hasta los propios jugadores y poder ver los partidos que se jugaran ademas de la clasificacion que se va actualizando con cada equipo. ¿Que equipo ganará? La unica forma de saberlo es estar atento a los partidos y a la clasificación. ¡Esperamos que disfruteis con esta gran competición!';

    end;

    var

        Mensaje: Text[500];//a
}