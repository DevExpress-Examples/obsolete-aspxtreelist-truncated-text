Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxTreeList

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private Const TextMaxLength As Integer = 10
	Protected Sub treeList_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As TreeListHtmlDataCellEventArgs)
		If e.Column.FieldName = "Description" Then
			If e.CellValue IsNot Nothing Then
				Dim cellValue As String = e.CellValue.ToString()
				e.Cell.ToolTip = cellValue
				If cellValue.Length > TextMaxLength Then
					e.Cell.Text = cellValue.Substring(0, TextMaxLength) & "..."
				End If
			End If
		End If
	End Sub
End Class