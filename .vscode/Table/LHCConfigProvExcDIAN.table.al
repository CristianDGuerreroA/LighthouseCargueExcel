table 78800 LHCConfigProvExcDIAN
{
    Caption = 'Configuración proveedores Excel DIAN';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;LHCCodigoProveedor; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Vendor."No.";            
        }

        field(2; LHCCuentaContable; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "G/L Account"."No.";
        }

        field(3;LHCCodigoProducto; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Item."No.";
        }
    }
    
    keys
    {
        key(CPK; LHCCodigoProveedor)
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