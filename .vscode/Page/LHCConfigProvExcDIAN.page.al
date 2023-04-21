page 78800 LHCConfigProvExcDIAN
{   
    Caption = 'Config. Proveedor Excel DIAN';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LHCConfigProvExcDIAN;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(LHCCodigoProveedor;Rec.LHCCodigoProveedor)
                {
                    Caption = 'Código Proveedor';
                }

                field(LHCCuentaContable;Rec.LHCCuentaContable)
                {
                    Caption = 'Cuenta Contable';
                }

                field(LHCCodigoProducto;Rec.LHCCodigoProducto)
                {
                    Caption = 'Código producto';
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}