function GenerateForm {

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$btn_showcomputer = New-Object System.Windows.Forms.Button
$btn_derbershit = New-Object System.Windows.Forms.Button
$btn_showstatistic = New-Object System.Windows.Forms.Button
$btn_showuser = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$btn_showstatistic_OnClick= 
{
#TODO: Place custom script here

}

$btn_derbershit_OnClick= 
{
#TODO: Place custom script here

}

$btn_showcomputer_OnClick= 
{
#TODO: Place custom script here

}

$btn_showuser_OnClick= 
{
#TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 293
$System_Drawing_Size.Width = 292
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Dr. Watson"


$btn_showcomputer.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 14
$System_Drawing_Point.Y = 196
$btn_showcomputer.Location = $System_Drawing_Point
$btn_showcomputer.Name = "btn_showcomputer"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 70
$System_Drawing_Size.Width = 260
$btn_showcomputer.Size = $System_Drawing_Size
$btn_showcomputer.TabIndex = 3
$btn_showcomputer.Text = "Statistik je Computer"
$btn_showcomputer.UseVisualStyleBackColor = $True
$btn_showcomputer.add_Click($btn_showcomputer_OnClick)

$form1.Controls.Add($btn_showcomputer)


$btn_derbershit.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 0
$System_Drawing_Point.Y = 0
$btn_derbershit.Location = $System_Drawing_Point
$btn_derbershit.Name = "btn_derbershit"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 1
$System_Drawing_Size.Width = 1
$btn_derbershit.Size = $System_Drawing_Size
$btn_derbershit.TabIndex = 2
$btn_derbershit.Text = "derber_shit"
$btn_derbershit.UseVisualStyleBackColor = $True
$btn_derbershit.add_Click($btn_derbershit_OnClick)

$form1.Controls.Add($btn_derbershit)


$btn_showstatistic.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 14
$System_Drawing_Point.Y = 107
$btn_showstatistic.Location = $System_Drawing_Point
$btn_showstatistic.Name = "btn_showstatistic"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 70
$System_Drawing_Size.Width = 260
$btn_showstatistic.Size = $System_Drawing_Size
$btn_showstatistic.TabIndex = 1
$btn_showstatistic.Text = "Statistik je Nutzer anzeigen"
$btn_showstatistic.UseVisualStyleBackColor = $True
$btn_showstatistic.add_Click($btn_showstatistic_OnClick)

$form1.Controls.Add($btn_showstatistic)


$btn_showuser.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 14
$System_Drawing_Point.Y = 19
$btn_showuser.Location = $System_Drawing_Point
$btn_showuser.Name = "btn_showuser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 70
$System_Drawing_Size.Width = 260
$btn_showuser.Size = $System_Drawing_Size
$btn_showuser.TabIndex = 0
$btn_showuser.Text = "Vorhandene Nutzer anzeigen"
$btn_showuser.UseVisualStyleBackColor = $True
$btn_showuser.add_Click($btn_showuser_OnClick)

$form1.Controls.Add($btn_showuser)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
