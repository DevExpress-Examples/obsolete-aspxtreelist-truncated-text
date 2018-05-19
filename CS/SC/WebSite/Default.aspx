<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v11.2, Version=11.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxTreeList ID="treeList" runat="server" OnHtmlDataCellPrepared="treeList_HtmlDataCellPrepared"
        AutoGenerateColumns="False" DataSourceID="ads" KeyFieldName="CategoryID">
        <Columns>
            <dx:TreeListTextColumn FieldName="CategoryID" VisibleIndex="0">
            </dx:TreeListTextColumn>
            <dx:TreeListTextColumn FieldName="CategoryName" VisibleIndex="1">
            </dx:TreeListTextColumn>
            <dx:TreeListTextColumn FieldName="Description" VisibleIndex="2">
            </dx:TreeListTextColumn>
        </Columns>
    </dx:ASPxTreeList>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
