page 50111 Liga
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Liga;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(IdDivision; rec.IdDivision)
                {
                    ApplicationArea = All;
                    Caption = 'Identificador de División';

                }
                field(NombreDiv; rec.NombreDiv)
                {
                    ApplicationArea = All;
                    Caption = 'Nombre de la Liga';

                } //a
                field(NombreFed; rec.NombreFed)
                {
                    ApplicationArea = All;
                    TableRelation = Federacion."IdFederación";
                    Caption = 'Nombre de la Federación';
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
}