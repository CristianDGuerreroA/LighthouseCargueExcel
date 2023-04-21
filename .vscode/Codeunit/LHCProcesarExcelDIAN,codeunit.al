codeunit 78800 LHCProcesarExcelDIAN
{
    trigger OnRun()
    begin
        
    end;
    

    procedure LimpiarAcuseExcel(LHCDatosExcelDIAN:Record LHCDatosExcelDIAN)
    begin
        ValidarCamposNulos(LHCDatosExcelDIAN);
        LHCDatosExcelDIAN.SetRange(LHCfolio, '268');
        if LHCDatosExcelDIAN.FindFirst() then begin
            Message('Encotró el folio 268');
        end;
        if LHCDatosExcelDIAN.FindSet() then begin
            repeat begin
                Message('Ingrese al FindSet');
                Message(CopyStr(LHCDatosExcelDIAN.LHCFolio,1,3));
            end until LHCDatosExcelDIAN.Next() = 0;
        end;    
    end;

    local procedure ValidarCamposNulos(LHCDatosExcelDIAN:Record LHCDatosExcelDIAN)
    begin
        LHCDatosExcelDIAN.Validate(LHCTipoDocumento);
        LHCDatosExcelDIAN.Validate(LHCCUFE);
        LHCDatosExcelDIAN.Validate(LHCFolio);
        LHCDatosExcelDIAN.Validate(LHCFechaEmision);
        LHCDatosExcelDIAN.Validate(LHCFechaRecepcion);
        LHCDatosExcelDIAN.Validate(LHCNITEmisor);
        LHCDatosExcelDIAN.Validate(LHCNombreEmisor);
        LHCDatosExcelDIAN.Validate(LHCNITReceptor);
        LHCDatosExcelDIAN.Validate(LHCNombreReceptor);
        LHCDatosExcelDIAN.Validate(LHCIVA);
        LHCDatosExcelDIAN.Validate(LHCICA);
        LHCDatosExcelDIAN.Validate(LHCIPC);
        LHCDatosExcelDIAN.Validate(LHCTotal);
        LHCDatosExcelDIAN.Validate(LHCEstado);
        LHCDatosExcelDIAN.Validate(LHCGrupo);
    end;

}