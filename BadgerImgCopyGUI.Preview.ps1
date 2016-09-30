#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Call-BadgerImgCopyGUI_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formBadgerImageCopy10 = New-Object 'System.Windows.Forms.Form'
	$buttoncancel = New-Object 'System.Windows.Forms.Button'
	$groupboxDimensions = New-Object 'System.Windows.Forms.GroupBox'
	$comboboxdimensions = New-Object 'System.Windows.Forms.ComboBox'
	$textboxheight = New-Object 'System.Windows.Forms.TextBox'
	$textboxwidth = New-Object 'System.Windows.Forms.TextBox'
	$labelWidth = New-Object 'System.Windows.Forms.Label'
	$labelHeight = New-Object 'System.Windows.Forms.Label'
	$groupboxImageType = New-Object 'System.Windows.Forms.GroupBox'
	$checkboxGIF = New-Object 'System.Windows.Forms.CheckBox'
	$checkboxTIF = New-Object 'System.Windows.Forms.CheckBox'
	$checkboxPNG = New-Object 'System.Windows.Forms.CheckBox'
	$checkboxJPG = New-Object 'System.Windows.Forms.CheckBox'
	$progressbar1 = New-Object 'System.Windows.Forms.ProgressBar'
	$labelDestinationFolder = New-Object 'System.Windows.Forms.Label'
	$labelSourceFolder = New-Object 'System.Windows.Forms.Label'
	$statusbar1 = New-Object 'System.Windows.Forms.StatusBar'
	$buttonEngageFoo = New-Object 'System.Windows.Forms.Button'
	$buttonBrowseFolder2 = New-Object 'System.Windows.Forms.Button'
	$textboxFolder2 = New-Object 'System.Windows.Forms.TextBox'
	$buttonBrowseFolder = New-Object 'System.Windows.Forms.Button'
	$textboxFolder = New-Object 'System.Windows.Forms.TextBox'
	$menustrip1 = New-Object 'System.Windows.Forms.MenuStrip'
	$folderbrowserdialog1 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$folderbrowserdialog2 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$fileToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$closeToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$helpToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$onlineDocsToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$aboutToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$checkboxCheckbox1 = New-Object 'System.Windows.Forms.CheckBox'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formBadgerImageCopy10.SuspendLayout()
	$groupboxDimensions.SuspendLayout()
	$groupboxImageType.SuspendLayout()
	$menustrip1.SuspendLayout()
	#
	# formBadgerImageCopy10
	#
	$formBadgerImageCopy10.Controls.Add($buttoncancel)
	$formBadgerImageCopy10.Controls.Add($groupboxDimensions)
	$formBadgerImageCopy10.Controls.Add($groupboxImageType)
	$formBadgerImageCopy10.Controls.Add($progressbar1)
	$formBadgerImageCopy10.Controls.Add($labelDestinationFolder)
	$formBadgerImageCopy10.Controls.Add($labelSourceFolder)
	$formBadgerImageCopy10.Controls.Add($statusbar1)
	$formBadgerImageCopy10.Controls.Add($buttonEngageFoo)
	$formBadgerImageCopy10.Controls.Add($buttonBrowseFolder2)
	$formBadgerImageCopy10.Controls.Add($textboxFolder2)
	$formBadgerImageCopy10.Controls.Add($buttonBrowseFolder)
	$formBadgerImageCopy10.Controls.Add($textboxFolder)
	$formBadgerImageCopy10.Controls.Add($menustrip1)
	$formBadgerImageCopy10.AutoScaleDimensions = '6, 13'
	$formBadgerImageCopy10.AutoScaleMode = 'Font'
	$formBadgerImageCopy10.ClientSize = '292, 289'
	$formBadgerImageCopy10.FormBorderStyle = 'FixedSingle'
	$formBadgerImageCopy10.MainMenuStrip = $menustrip1
	$formBadgerImageCopy10.Name = 'formBadgerImageCopy10'
	$formBadgerImageCopy10.StartPosition = 'CenterScreen'
	$formBadgerImageCopy10.Text = 'BadgerImageCopy - 1.0'
	$formBadgerImageCopy10.add_Load($formBadgerImageCopy10_Load)
	#
	# buttoncancel
	#
	$buttoncancel.Location = '242, 204'
	$buttoncancel.Name = 'buttoncancel'
	$buttoncancel.Size = '33, 23'
	$buttoncancel.TabIndex = 16
	$buttoncancel.Text = 'X'
	$buttoncancel.UseVisualStyleBackColor = $True
	$buttoncancel.add_Click($buttoncancel_Click)
	#
	# groupboxDimensions
	#
	$groupboxDimensions.Controls.Add($comboboxdimensions)
	$groupboxDimensions.Controls.Add($textboxheight)
	$groupboxDimensions.Controls.Add($textboxwidth)
	$groupboxDimensions.Controls.Add($labelWidth)
	$groupboxDimensions.Controls.Add($labelHeight)
	$groupboxDimensions.Location = '12, 117'
	$groupboxDimensions.Name = 'groupboxDimensions'
	$groupboxDimensions.Size = '128, 110'
	$groupboxDimensions.TabIndex = 10
	$groupboxDimensions.TabStop = $False
	$groupboxDimensions.Text = 'Dimensions'
	#
	# comboboxdimensions
	#
	$comboboxdimensions.DropDownStyle = 'DropDownList'
	$comboboxdimensions.FormattingEnabled = $True
	$comboboxdimensions.Location = '7, 22'
	$comboboxdimensions.Name = 'comboboxdimensions'
	$comboboxdimensions.Size = '115, 21'
	$comboboxdimensions.TabIndex = 13
	#
	# textboxheight
	#
	$textboxheight.Location = '48, 84'
	$textboxheight.Name = 'textboxheight'
	$textboxheight.Size = '74, 20'
	$textboxheight.TabIndex = 12
	#
	# textboxwidth
	#
	$textboxwidth.Location = '48, 58'
	$textboxwidth.Name = 'textboxwidth'
	$textboxwidth.Size = '74, 20'
	$textboxwidth.TabIndex = 11
	#
	# labelWidth
	#
	$labelWidth.AutoSize = $True
	$labelWidth.Location = '13, 61'
	$labelWidth.Name = 'labelWidth'
	$labelWidth.Size = '35, 13'
	$labelWidth.TabIndex = 8
	$labelWidth.Text = 'Width'
	#
	# labelHeight
	#
	$labelHeight.AutoSize = $True
	$labelHeight.Location = '7, 87'
	$labelHeight.Name = 'labelHeight'
	$labelHeight.Size = '38, 13'
	$labelHeight.TabIndex = 9
	$labelHeight.Text = 'Height'
	#
	# groupboxImageType
	#
	$groupboxImageType.Controls.Add($checkboxGIF)
	$groupboxImageType.Controls.Add($checkboxTIF)
	$groupboxImageType.Controls.Add($checkboxPNG)
	$groupboxImageType.Controls.Add($checkboxJPG)
	$groupboxImageType.Location = '155, 117'
	$groupboxImageType.Name = 'groupboxImageType'
	$groupboxImageType.Size = '121, 81'
	$groupboxImageType.TabIndex = 5
	$groupboxImageType.TabStop = $False
	$groupboxImageType.Text = 'ImageType'
	#
	# checkboxGIF
	#
	$checkboxGIF.Location = '68, 44'
	$checkboxGIF.Name = 'checkboxGIF'
	$checkboxGIF.Size = '52, 24'
	$checkboxGIF.TabIndex = 9
	$checkboxGIF.Text = 'GIF'
	$checkboxGIF.UseVisualStyleBackColor = $True
	#
	# checkboxTIF
	#
	$checkboxTIF.Location = '68, 19'
	$checkboxTIF.Name = 'checkboxTIF'
	$checkboxTIF.Size = '52, 24'
	$checkboxTIF.TabIndex = 8
	$checkboxTIF.Text = 'TIF'
	$checkboxTIF.UseVisualStyleBackColor = $True
	#
	# checkboxPNG
	#
	$checkboxPNG.Location = '6, 44'
	$checkboxPNG.Name = 'checkboxPNG'
	$checkboxPNG.Size = '56, 24'
	$checkboxPNG.TabIndex = 7
	$checkboxPNG.Text = 'PNG'
	$checkboxPNG.UseVisualStyleBackColor = $True
	#
	# checkboxJPG
	#
	$checkboxJPG.Location = '6, 19'
	$checkboxJPG.Name = 'checkboxJPG'
	$checkboxJPG.Size = '56, 24'
	$checkboxJPG.TabIndex = 6
	$checkboxJPG.Text = 'JPG'
	$checkboxJPG.UseVisualStyleBackColor = $True
	#
	# progressbar1
	#
	$progressbar1.Location = '12, 232'
	$progressbar1.Name = 'progressbar1'
	$progressbar1.Size = '264, 21'
	$progressbar1.TabIndex = 15
	#
	# labelDestinationFolder
	#
	$labelDestinationFolder.AutoSize = $True
	$labelDestinationFolder.Location = '12, 73'
	$labelDestinationFolder.Name = 'labelDestinationFolder'
	$labelDestinationFolder.Size = '92, 13'
	$labelDestinationFolder.TabIndex = 11
	$labelDestinationFolder.Text = 'Destination Folder'
	#
	# labelSourceFolder
	#
	$labelSourceFolder.AutoSize = $True
	$labelSourceFolder.Location = '12, 29'
	$labelSourceFolder.Name = 'labelSourceFolder'
	$labelSourceFolder.Size = '73, 13'
	$labelSourceFolder.TabIndex = 10
	$labelSourceFolder.Text = 'Source Folder'
	#
	# statusbar1
	#
	$statusbar1.Location = '0, 267'
	$statusbar1.Name = 'statusbar1'
	$statusbar1.Size = '292, 22'
	$statusbar1.TabIndex = 5
	$statusbar1.Text = 'BadgerImageCopy 1.0'
	#
	# buttonEngageFoo
	#
	$buttonEngageFoo.Location = '155, 204'
	$buttonEngageFoo.Name = 'buttonEngageFoo'
	$buttonEngageFoo.Size = '81, 23'
	$buttonEngageFoo.TabIndex = 13
	$buttonEngageFoo.Text = 'Engage Foo!'
	$buttonEngageFoo.UseVisualStyleBackColor = $True
	$buttonEngageFoo.add_Click($buttonEngageFoo_Click)
	#
	# buttonBrowseFolder2
	#
	$buttonBrowseFolder2.Location = '246, 88'
	$buttonBrowseFolder2.Name = 'buttonBrowseFolder2'
	$buttonBrowseFolder2.Size = '30, 23'
	$buttonBrowseFolder2.TabIndex = 4
	$buttonBrowseFolder2.Text = '...'
	$buttonBrowseFolder2.UseVisualStyleBackColor = $True
	$buttonBrowseFolder2.add_Click($buttonBrowseFolder2_Click)
	#
	# textboxFolder2
	#
	$textboxFolder2.AutoCompleteMode = 'SuggestAppend'
	$textboxFolder2.AutoCompleteSource = 'FileSystemDirectories'
	$textboxFolder2.Location = '12, 90'
	$textboxFolder2.Name = 'textboxFolder2'
	$textboxFolder2.Size = '228, 20'
	$textboxFolder2.TabIndex = 3
	#
	# buttonBrowseFolder
	#
	$buttonBrowseFolder.Location = '246, 44'
	$buttonBrowseFolder.Name = 'buttonBrowseFolder'
	$buttonBrowseFolder.Size = '30, 23'
	$buttonBrowseFolder.TabIndex = 2
	$buttonBrowseFolder.Text = '...'
	$buttonBrowseFolder.UseVisualStyleBackColor = $True
	$buttonBrowseFolder.add_Click($buttonBrowseFolder_Click)
	#
	# textboxFolder
	#
	$textboxFolder.AutoCompleteMode = 'SuggestAppend'
	$textboxFolder.AutoCompleteSource = 'FileSystemDirectories'
	$textboxFolder.Location = '12, 46'
	$textboxFolder.Name = 'textboxFolder'
	$textboxFolder.Size = '228, 20'
	$textboxFolder.TabIndex = 1
	#
	# menustrip1
	#
	[void]$menustrip1.Items.Add($fileToolStripMenuItem)
	[void]$menustrip1.Items.Add($helpToolStripMenuItem)
	$menustrip1.Location = '0, 0'
	$menustrip1.Name = 'menustrip1'
	$menustrip1.Size = '292, 24'
	$menustrip1.TabIndex = 12
	$menustrip1.Text = 'menustrip1'
	#
	# folderbrowserdialog1
	#
	#
	# folderbrowserdialog2
	#
	#
	# fileToolStripMenuItem
	#
	[void]$fileToolStripMenuItem.DropDownItems.Add($closeToolStripMenuItem)
	$fileToolStripMenuItem.Name = 'fileToolStripMenuItem'
	$fileToolStripMenuItem.Size = '37, 20'
	$fileToolStripMenuItem.Text = 'File'
	#
	# closeToolStripMenuItem
	#
	$closeToolStripMenuItem.Name = 'closeToolStripMenuItem'
	$closeToolStripMenuItem.Size = '152, 22'
	$closeToolStripMenuItem.Text = 'Close'
	#
	# helpToolStripMenuItem
	#
	[void]$helpToolStripMenuItem.DropDownItems.Add($onlineDocsToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($aboutToolStripMenuItem)
	$helpToolStripMenuItem.Name = 'helpToolStripMenuItem'
	$helpToolStripMenuItem.Size = '44, 20'
	$helpToolStripMenuItem.Text = 'Help'
	#
	# onlineDocsToolStripMenuItem
	#
	$onlineDocsToolStripMenuItem.Name = 'onlineDocsToolStripMenuItem'
	$onlineDocsToolStripMenuItem.Size = '138, 22'
	$onlineDocsToolStripMenuItem.Text = 'Online Docs'
	#
	# aboutToolStripMenuItem
	#
	$aboutToolStripMenuItem.Name = 'aboutToolStripMenuItem'
	$aboutToolStripMenuItem.Size = '152, 22'
	$aboutToolStripMenuItem.Text = 'About'
	#
	# checkboxCheckbox1
	#
	$checkboxCheckbox1.Location = '132, 119'
	$checkboxCheckbox1.Name = 'checkboxCheckbox1'
	$checkboxCheckbox1.Size = '104, 24'
	$checkboxCheckbox1.TabIndex = 13
	$checkboxCheckbox1.Text = 'checkbox1'
	$checkboxCheckbox1.UseVisualStyleBackColor = $True
	$menustrip1.ResumeLayout()
	$groupboxImageType.ResumeLayout()
	$groupboxDimensions.ResumeLayout()
	$formBadgerImageCopy10.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formBadgerImageCopy10.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formBadgerImageCopy10.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formBadgerImageCopy10.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formBadgerImageCopy10.ShowDialog()

} #End Function

#Call the form
Call-BadgerImgCopyGUI_psf | Out-Null
