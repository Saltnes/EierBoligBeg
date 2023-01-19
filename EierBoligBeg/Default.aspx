﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataTableSample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="nb">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hus Oppslag</title>
    <meta name="description" content="Find and search for houses and house owners">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="images/logo.svg">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
</head>
<body>
<form id="form1" runat="server">
    <div>
        DataTable - et eksempel med Bolig og Eiere<br/>
        <br/>
        Denne applikasjonen har lite funksjonalitet. En kravspek bør lages. Krav kan være feks søk på andre verdier enn kun telefon, reg ny bolig, reg ny eier, nytt eierskap.<br/>
        Andre krav kan være login. Hva bør i såfall være tilgjengelig for åpne sider og hva skal kunne gjøres når innlogget?<br/>
        Login blir som et lite undersystem. Det opprettes brukere. Brukere kan glemme passord. En egen tabell for brukere.<br/>
        Den kjappe versjonen for login er å hardkode brukernavn og passord i koden. Eventuelt i en fil eller web.config.<br/>
        Andre krav? Her kan man være kreativ.<br/>
        <br/>
        High level requirements.<br/>
        Arkitektur: 3 tier. FrontEnd, BusinessLayer, DBLayer<br/>
        Bruk av prosedyrer. (Kalle på en prosedyre som er lagret i db, og ikke da skrive lange sql queries i koden)<br/>
        Bruk av parametre i queries. Hvorfor? Mer ryddig, og ikke minst eliminerer risiko for sql injection.
        <br/>
        Gå over til List og custom objekter, ikke bruke datatable. Lettere å videreutvikle. Om systemet blir mer komplekst og større, vil dette uansett tvinge seg frem.<br/>
        Navnegivning<br/>
        Bruk av LINQ<br/>
        <br/>
        <br/>
        Antall boliger i databasen:
        <asp:Label ID="LabelNumBoliger" runat="server" Text="LabelNumBoliger"></asp:Label>
        <br/>
        <br/>
        Søk med telefonnummer
        <asp:TextBox ID="TextBoxSearchByPhone" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonSearchByPhone" runat="server" Text="Søk"/>
        <br/>
        Viser alle boliger
        <asp:Button ID="ButtonShowAllBoliger" runat="server" Text="Vis alle Boliger"/>
        <br/>
        <br/>
        <br/>
        <asp:GridView ID="GridViewBoligEiere" runat="server"></asp:GridView>
    </div>
</form>
<script type="text/javascript" src="JS/mobile.js"></script>
</body>
</html>