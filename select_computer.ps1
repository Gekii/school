﻿#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 14.12.2016 11:48
# Generated By: s.gruenes
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form_selectcomputer = New-Object System.Windows.Forms.Form
$view_computerreports = New-Object System.Windows.Forms.DataGridView
$dropdown_computer = New-Object System.Windows.Forms.ComboBox
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 287
$System_Drawing_Size.Width = 262
$form_selectcomputer.ClientSize = $System_Drawing_Size
$form_selectcomputer.DataBindings.DefaultDataSourceUpdateMode = 0
$form_selectcomputer.Name = "form_selectcomputer"
$form_selectcomputer.Text = "Computerauswahl"

$view_computerreports.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 54
$view_computerreports.Location = $System_Drawing_Point
$view_computerreports.Name = "view_computerreports"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 221
$System_Drawing_Size.Width = 237
$view_computerreports.Size = $System_Drawing_Size
$view_computerreports.TabIndex = 1

$form_selectcomputer.Controls.Add($view_computerreports)

$dropdown_computer.DataBindings.DefaultDataSourceUpdateMode = 0
$dropdown_computer.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 12
$dropdown_computer.Location = $System_Drawing_Point
$dropdown_computer.Name = "dropdown_copmuter"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 238
$dropdown_computer.Size = $System_Drawing_Size
$dropdown_computer.TabIndex = 0

$form_selectcomputer.Controls.Add($dropdown_computer)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form_selectcomputer.WindowState
#Init the OnLoad event to correct the initial state of the form
$form_selectcomputer.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form_selectcomputer.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
