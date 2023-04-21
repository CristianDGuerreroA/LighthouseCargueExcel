page 78801 LHCDatosExcelDIAN
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LHCDatosExcelDIAN;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(LHCTipoDocumento;Rec.LHCTipoDocumento)
                { }

                field(LHCCUFE;Rec.LHCCUFE)
                { }

                field(LHCFolio;Rec.LHCFolio)
                { }

                field(LHCPrefijo;Rec.LHCPrefijo)
                { }

                field(LHCFechaEmision;Rec.LHCFechaEmision)
                { }

                field(LHCFechaRecepcion;Rec.LHCFechaRecepcion)
                { }

                field(LHCNITEmisor;Rec.LHCNITEmisor)
                { }

                field(LHCNombreEmisor;Rec.LHCNombreEmisor)
                { }

                field(LHCNITReceptor;Rec.LHCNITReceptor)
                { }

                field(LHCNombreReceptor;Rec.LHCNombreReceptor)
                { }

                field(LHCIVA;Rec.LHCIVA)
                { }

                field(LHCICA;Rec.LHCICA)
                { }

                field(LHCIPC;Rec.LHCIPC)
                { }

                field(LHCTotal;Rec.LHCTotal)
                { }

                field(LHCEstado;Rec.LHCEstado)
                { }

                field(LHCGrupo;Rec.LHCGrupo)
                { }
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
            action(LimpiezaDatos)
            {
                Caption= 'Limpieza de datos';
                
                trigger OnAction();
                begin
                    GVcheckLimpieza := true;
                    if Rec.FindSet() then begin
                        repeat begin
                            if (CopyStr(Rec.LHCFolio,1,3) = 'ACE') OR (CopyStr(Rec.LHCFolio ,1,3) = 'ACS') OR (CopyStr(Rec.LHCFolio,1,3) = 'RBS') then begin
                                Rec.Delete();
                            end;
                        end until Rec.Next() = 0;
                    end;
                end;
            }

            action(ProcesoDatos)
            {
                Caption = 'Procesar datos';
                trigger OnAction();
                begin
                    if GVcheckLimpieza = true then begin
                        Message('Se muestran los registros para facturación.');
                        if Rec.FindSet() then begin
                            repeat begin
                                Message('El tipo de documento: '+Rec.LHCTipoDocumento+' el CUFE: '+Rec.LHCCUFE+' el folio: '+Rec.LHCFolio);
                            end until Rec.Next() = 0;
                        end;
                    end else begin
                        Error('Se debe realizar la limpieza de datos antes de procesar la información');
                    end;
                end;
            }
        }
    }


    var
        GVcheckLimpieza : Boolean;
}