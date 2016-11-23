﻿<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>

    <!-- Add your CSS styles to the following file -->
    <link rel="stylesheet" type="text/css" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../Content/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="../Content/bootstrap-responsive.min.css">
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Document Approval Workflow
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>
    <a class="featured_one" href="/FlowchartWorkflow/lists/Drafts">Drafts</a><br />
    <a href="/FlowchartWorkflow/lists/Manuscripts">Manuscripts</a><br />
    <a class="tweet_avatar" href="/FlowchartWorkflow/Lists/WorkflowTaskList">WorkflowTaskList</a><br />


    <div class="row">
        
            <div class="col-xs-9 col-sm-6">
                <!--Sidebar content-->
                <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly"
                    ID="Drafts" Title="loc:full" />
            </div>
            <div class="col-xs-9 col-sm-6">
                
                <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly"
                    ID="WorkFlowTasks" Title="loc:full" />
            </div>
        
    </div>
</asp:Content>
