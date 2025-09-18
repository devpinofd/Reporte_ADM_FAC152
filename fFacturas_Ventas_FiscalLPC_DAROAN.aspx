<%@ page language="VB" autoeventwireup="false" inherits="fFacturas_Ventas_FiscalLPC_DAROAN" CodeFile="fFacturas_Ventas_FiscalLPC_DAROAN.aspx.vb" %>

<%@ Register Assembly="vis2Controles" Namespace="vis2Controles" TagPrefix="vis2Controles" %>
<%@ Register Assembly="vis1Controles" Namespace="vis1Controles" TagPrefix="vis1Controles" %>
<%@ Register Assembly="vis3Controles" Namespace="vis3Controles" TagPrefix="vis3Controles" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Factura de Venta Fiscal LPC (DAROAN)</title>
    <link href="~/Framework/cssEstilosFramework.css" rel="stylesheet" type="text/css" />
    <link href="~/Administrativo/cssEstilosAdministrativo.css" rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />

    <script>

        window.mDescargarBlob = function mDescargarBlob( blobURL, lcArchivo ) {
            var loLector = new FileReader();
            loLector.readAsDataURL( blobURL );
            loLector.onload = function ( event ) {
                var loGuardar = document.createElement( 'a' );
                loGuardar.href = event.target.result;
                loGuardar.target = '_blank';
                loGuardar.download = lcArchivo || 'archivo';

                var clicEvent = new MouseEvent( 'click', {
                    'view': window,
                    'bubbles': true,
                    'cancelable': true
                } );
                loGuardar.dispatchEvent( clicEvent );
                ( window.URL || window.webkitURL ).revokeObjectURL( loGuardar.href );
            };
        };


    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts></Scripts>
        </asp:ScriptManager>            
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <vis3Controles:wbcImpresoraReportes runat="server" ID="wbcImpresoraDeReportes" plMostrarBotonImprimir='True' />    
                <vis3Controles:pnlVentanaModal ID="PnlVentanaModalPrincipal" runat="server" pcEstiloBotonCerrar="BotonCerrarVentanaModal"
                    pcEstiloFondo="FondoVentanaModal" pcEstiloMarco="MarcoVentanaModal" pcTextoBotonCerrar="Cerrar"
                    plMostrarBotonCerrar="false"  />
                <vis3Controles:pnlMensajeModal ID="PnlMensajeModal" runat="server" pcEstiloContenido="ContenidoMensajeModal"
                    pcEstiloFondo="FondoVentanaModal" pcEstiloTitulo="TituloMensajeModal" pcEstiloVentana="MarcoMensajeModal" />
                <vis3Controles:wbcAdministradorMensajeModal ID="WbcAdministradorMensajeModal" runat="server" />
                <vis3Controles:wbcAdministradorVentanaModal ID="WbcAdministradorVentanaModal" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
