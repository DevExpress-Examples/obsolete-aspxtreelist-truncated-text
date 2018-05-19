using System;
using DevExpress.Web.ASPxTreeList;

public partial class _Default : System.Web.UI.Page {
    private const int TextMaxLength = 10;
    protected void treeList_HtmlDataCellPrepared(object sender, TreeListHtmlDataCellEventArgs e) {
        if(e.Column.FieldName == "Description")
            if(e.CellValue != null) {
                string cellValue = e.CellValue.ToString();
                e.Cell.ToolTip = cellValue;
                if(cellValue.Length > TextMaxLength) {
                    e.Cell.Text = cellValue.Substring(0, TextMaxLength) + "...";
                }
            }
    }
}