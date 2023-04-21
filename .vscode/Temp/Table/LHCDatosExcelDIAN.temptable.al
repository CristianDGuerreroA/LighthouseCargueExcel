table 78801 LHCDatosExcelDIAN
{
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; LHCTipoDocumento; Code[40])
        {
            DataClassification = CustomerContent;
            Caption = 'Tipo de documento';
            trigger OnValidate()
            begin
                if Rec.LHCTipoDocumento = '' then begin
                    Error('No se puede dejar vacío el campo tipo de documento');
                end;
            end;
        }

        field(2; LHCCUFE; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'CUFE / CUDE';
            trigger OnValidate()
            begin
                if Rec.LHCCUFE = '' then begin
                    Error('No se puede dejar vacío el campo CUFE / CUDE');
                end;
            end;
        }

        field(3; LHCFolio; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Folio';
            trigger OnValidate()
            begin
                if Rec.LHCFolio = '' then begin
                    Error('No se puede dejar vacío el campo folio');
                end;
            end;
        }

        field(4; LHCPrefijo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Prefijo';
        }

        field(5; LHCFechaEmision; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha emisión';
            trigger OnValidate()
            begin
                if Format(Rec.LHCFechaEmision) = '' then begin
                    Error('No se puede dejar vacío el campo fecha de emisión');
                end;
            end;
        }

        field(6; LHCFechaRecepcion; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Fecha recepción';
            trigger OnValidate()
            begin
                if Format(Rec.LHCFechaRecepcion) = '' then begin
                    Error('No se puede dejar vacío el campo fecha de recepción');
                end;
            end;
        }

        field(7; LHCNITEmisor; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'NIT emisor';
            trigger OnValidate()
            begin
                if Rec.LHCNITEmisor = '' then begin
                    Error('No se puede dejar vacío el campo NIT Emisor');
                end;
            end;
        }

        field(8; LHCNombreEmisor; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre emisor';
            trigger OnValidate()
            begin
                if Rec.LHCNombreEmisor = '' then begin
                    Error('No se puede dejar vacío el campo nombre del emisor');
                end;
            end;
        }

        field(9; LHCNITReceptor; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'NIT receptor';
            trigger OnValidate()
            begin
                if Rec.LHCNITReceptor = '' then begin
                    Error('No se puede dejar vacío el campo NIT receptor');
                end;
            end;
        }
        field(10; LHCNombreReceptor; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre receptor';
            trigger OnValidate()
            begin
                if Rec.LHCNombreReceptor = '' then begin
                    Error('No se puede dejar vacío el campo nombre de receptor');
                end;
            end;
        }

        field(11; LHCIVA; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'IVA';
            trigger OnValidate()
            begin
                if Format(Rec.LHCIVA) = '' then begin
                    Error('No se puede dejar vacío el campo IVA');
                end;
            end;
        }

        field(12; LHCICA; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'ICA';
            trigger OnValidate()
            begin
                if Format(Rec.LHCICA) = '' then begin
                    Error('No se puede dejar vacío el campo ICA');
                end;
            end;
        }

        field(13; LHCIPC; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'IPC';
            trigger OnValidate()
            begin
                if Format(Rec.LHCIPC) = '' then begin
                    Error('No se puede dejar vacío el campo IPC');
                end;
            end;
        }

        field(14; LHCTotal; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Valor total';
            trigger OnValidate()
            begin
                if Format(Rec.LHCTotal) = '' then begin
                    Error('No se puede dejar vacío el campo Total');
                end;
            end;
        }

        field(15; LHCEstado; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Estado';
            trigger OnValidate()
            begin
                if Rec.LHCEstado = '' then begin
                    Error('No se puede dejar vacío el campo Estado');
                end;
            end;
        }

        field(16; LHCGrupo; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Grupo';
            trigger OnValidate()
            begin
                if Rec.LHCEstado = '' then begin
                    Error('No se puede dejar vacío el campo Grupo');
                end;
            end;
        }
    }

    keys
    {
        key(CPK; LHCTipoDocumento, LHCCUFE)
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