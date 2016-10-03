﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 459a5d4c-b2d3-4c4a-877a-af97d31f3afd
# Source File: C:\Users\rob.duboff\Google Drive\Projects\Powershell\BadgerSoft\BadgerImgCopyGUI\BadgerImgCopyGUI.psf
#------------------------------------------------------------------------

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
     Generated on:       10/3/2016 11:14 AM
     Generated by:       Rob Duboff
     Organization:       BadgerSoft
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2016
#>
#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

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
	# User Generated Script
	#----------------------------------------------
	
	
	$formBadgerImageCopy10_Load={
		#TODO: Initialize Form Controls here
		$array = @("1024x576", "1280x720", "1600x900", "1920x1080", "2560x1440", "3840x2160", "Custom...")
		$array | ForEach-Object { Load-ComboBox -ComboBox $comboboxdimensions -Append -Items $_ }
		
	}
	
	
	
	$buttonBrowseFolder_Click={
		if($folderbrowserdialog1.ShowDialog() -eq 'OK')
		{
			$textboxFolder.Text = $folderbrowserdialog1.SelectedPath
		}
	}
	
	$buttonBrowseFolder2_Click={
		if($folderbrowserdialog2.ShowDialog() -eq 'OK')
		{
			$textboxFolder2.Text = $folderbrowserdialog2.SelectedPath
		}
	}
	
	
	
	<#
	   ___         ___       __  __              ________   _           __
	  / _ \___    / _ )__ __/ /_/ /____  ___    /_  __/ /  (_)__  ___ _/ /
	 / // / _ \  / _  / // / __/ __/ _ \/ _ \    / / / _ \/ / _ \/ _ `/_/ 
	/____/\___/ /____/\_,_/\__/\__/\___/_//_/   /_/ /_//_/_/_//_/\_, (_)  
	                                                            /___/     
	#>
	
	
	$buttonEngageFoo_Click={
		$this.Enabled = $False
		#Variables for the Button to do it's motherfucking magic and shit!!!
		$SourceFolder = $textboxFolder.Text
		$DestinationFolder = $textboxFolder2.Text
		#Process the pending messages before enabling the button
		[System.Windows.Forms.Application]::DoEvents()
		$this.Enabled = $True
	<#
	   ___                   __                  __   _     __    ____        
	  / _ \_______  ___  ___/ /__ _    _____    / /  (_)__ / /_  / __/_ _____ 
	 / // / __/ _ \/ _ \/ _  / _ \ |/|/ / _ \  / /__/ (_-</ __/ / _// // / _ \
	/____/_/  \___/ .__/\_,_/\___/__,__/_//_/ /____/_/___/\__/ /_/  \_,_/_//_/
	             /_/                                                          
	#>
	
		if ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "1024x576")
		{
			$Dimensions = { $_.Width -gt 1024 -or $_.Height -gt 576 }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "1280x720")
		{
			$Dimensions = { $_.Width -gt 1280 -and $_.Height -gt 720 }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "1600x900")
		{
			$Dimensions = { $_.Width -gt '1600' -and $_.Height -gt '900' }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "1920x1080")
		{
			$Dimensions = { $_.Width -gt '1920' -and $_.Height -gt '1080' }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "2560x1440")
		{
			$Dimensions = { $_.Width -gt '2560' -and $_.Height -gt '1440' }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "3840x2160")
		{
			$Dimensions = { $_.Width -gt '3840' -and $_.Height -gt '2160' }
			$textboxwidth.ReadOnly
			$textboxheight.ReadOnly
		}
		elseif ($comboboxdimensions.SelectedIndex -gt -1 -and $comboboxdimensions.SelectedItem -eq "Custom...")
		{
			$Dimensions = { $_.Width -gt $textboxwidth.Text -and $_.Height -gt $textboxheight.Text }
		}
		
	<#
	  _______           __    ___             ______       ______
	 / ___/ /  ___ ____/ /__ / _ )___ __ __  / __/ /___ __/ _/ _/
	/ /__/ _ \/ -_) __/  '_// _  / _ \\ \ / _\ \/ __/ // / _/ _/ 
	\___/_//_/\__/\__/_/\_\/____/\___/_\_\ /___/\__/\_,_/_//_/   
	#>	
		
		#Telling the chockbox thing what to do when checked...
		if ($checkboxJPG.checked -eq $true)
			{
				$jpg = '*.jpg';
				$jpeg = '*.jpeg'
			}
		if ($checkboxPNG.checked -eq $true)
			{
				$png = '*.png'
			}
		if ($checkboxGIF.checked -eq $true)
			{
				$gif = '*.gif'
			}
		if ($checkboxTIF.checked -eq $true)
			{
				$tif = '*.tif'
			}
		elseif (!$checkboxJPG.checked, !$checkboxPNG.checked, !$checkboxGIF.checked, !$checkboxTIF.checked)
		{
			#Add-Type -AssemblyName "System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
			[void][System.Windows.Forms.MessageBox]::Show('Select an Image Type Homey!', 'Error, Yo!') # Casting the method to [void] suppresses the output. 
			return
		}
		# End of CheckBox BS
		
		#Get all the img files in the folder
			$files = Get-ChildItem $SourceFolder . -Recurse -Include $jpg, $jpeg, $png, $gif, $tif -Force
			
			if ($files -eq $null -or $files.Count -eq 0)
			{
				#No files to copy
				return
			}
			
		try
		{
			#Initialize the Progress Bar
			$progressbar1.Maximum = $files.Count
			$progressbar1.Step = 1
			$progressbar1.Value = 0
			#Oh snap son, magic gonna happen below... 
			foreach ($file in $files)
			{
				Get-ChildItem $SourceFolder -Recurse -Include $jpg, $jpeg, $png, $gif, $tif | Get-Image | ? $Dimensions | % {
						"Copy image '$($_.Name)' from '$(Split-Path -Path $_.FullName)' to '$DestinationFolder'"
					#Copy-Item -Path $_.FullName -Destination "$DestinationFolder " -Force -Confirm:$false -ea Inquire
					#Copy-Item ('{0}\\{1}' -f $SourceFolder, $file) -Destination $DestinationFolder
					Copy-Item -Path $_.FullName -Destination $DestinationFolder -Force -Confirm:$false -ea Inquire
					}
				$progressbar1.PerformStep()
				$statusbar1.Text = "Scanning and Copying files to $DestinationFolder"
			}
			Start-Sleep -s 1
			$statusbar1.Text = "Completed! Files have been copied to $DestinationFolder"
		}
				Catch
		{
			$statusbar1.Text = "Error : $($_.Exception.Message)"
		}
		
		
	}
	
	<#
	   __  ______   __ ______  __________  ______________  ___  __
	  /  |/  / _ | / //_/ __/ /  _/_  __/ / __/_  __/ __ \/ _ \/ /
	 / /|_/ / __ |/ ,< / _/  _/ /  / /   _\ \  / / / /_/ / ___/_/ 
	/_/  /_/_/ |_/_/|_/___/ /___/ /_/   /___/ /_/  \____/_/  (_)  
	#>
	$terminateScript = $false
	$buttoncancel_Click = {
		$terminateScript = $true
		$MainForm.Close()
		return $terminateScript
	}
	
	
	<#
	   ______   _ __    ____                                     __        ____              __  _             
	  / __/ /  (_) /_  / __/__  ___      _    _____   ___ ____  / /____   / __/_ _____  ____/ /_(_)__  ___  ___
	 _\ \/ _ \/ / __/ _\ \/ _ \/ _ \_   | |/|/ / -_) / _ `/ _ \/ __(_-<  / _// // / _ \/ __/ __/ / _ \/ _ \(_-<
	/___/_//_/_/\__/ /___/\___/_//_( )  |__,__/\__/  \_, /\___/\__/___/ /_/  \_,_/_//_/\__/\__/_/\___/_//_/___/
	                               |/               /___/                                                      
	#>
	
	#region Control Helper Functions
	function Load-ComboBox 
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ComboBox.
	
		.DESCRIPTION
			Use this function to dynamically load items into the ComboBox control.
	
		.PARAMETER  ComboBox
			The ComboBox control you want to add items to.
	
		.PARAMETER  Items
			The object or objects you wish to load into the ComboBox's Items collection.
	
		.PARAMETER  DisplayMember
			Indicates the property to display for the items in this control.
		
		.PARAMETER  Append
			Adds the item(s) to the ComboBox without clearing the Items collection.
		
		.EXAMPLE
			Load-ComboBox $combobox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Load-ComboBox $combobox1 "Red" -Append
			Load-ComboBox $combobox1 "White" -Append
			Load-ComboBox $combobox1 "Blue" -Append
		
		.EXAMPLE
			Load-ComboBox $combobox1 (Get-Process) "ProcessName"
	#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.ComboBox]$ComboBox,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Items,
		    [Parameter(Mandatory=$false)]
			[string]$DisplayMember,
			[switch]$Append
		)
		
		if(-not $Append)
		{
			$ComboBox.Items.Clear()	
		}
		
		if($Items -is [Object[]])
		{
			$ComboBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$ComboBox.BeginUpdate()
			foreach($obj in $Items)
			{
				$ComboBox.Items.Add($obj)	
			}
			$ComboBox.EndUpdate()
		}
		else
		{
			$ComboBox.Items.Add($Items)	
		}
	
		$ComboBox.DisplayMember = $DisplayMember	
	}
	
	function Get-Image
	{
	    <#
	    .Synopsis
	        Gets information about images.
	    .Description
	        Get-Image gets an object that represents each image file. 
	        The object has many properties and methods that you can use to edit images in Windows PowerShell. 
	    .Notes
	        Get-Image uses Wia.ImageFile, a Windows Image Acquisition COM object to get image data.
	        Then it uses the Add-Member cmdlet to add note properties and script methods to the object. 
	        The Resize script method uses the Add-ScaleFilter function. It has the following syntax:
	        Resize ($width, $height, [switch]$DoNotPreserveAspectRation). 
	        Width and Height can be specified in pixels or percentages. 
	        For a description of these parameters, type "get-help Add-ScaleFilter –par *".
	        The Crop script method uses the uses the Add-CropFilter function. It has the following syntax:
	        Crop ([Double]$left, [Double]$top, [Double]$right, [Double]$bottom).
	        All dimensions are measured in pixels.
	        For a description of these parameters, type "get-help Add-CropFilter –par *".
	        The FlipVertical, FlipHorizontal, RotateClockwise and RotateCounterClockwise script methods use the Add-RotateFlipFilter function.
	        For a description of these parameters, type "get-help Add-RotateFlipFilter –par *".
	    .Parameter File
	        [Required] Specifies the image files. Enter the path and file name of an image file, such as $home\pictures\MyPhoto.jpg.
	        You can also pipe one or more image files to Get-Image, such as those from Get-Item or Get-Childitem (dir). 
	    .Example
	        Get-Image –file C:\myPics\MyPhoto.jpg
	    .Example
	        Get-ChildItem $home\Pictures -Recurse | Get-Image        
	    .Example
	        (Get-Image –file C:\myPics\MyPhoto.jpg).resize(80, 120)
	    .Example
	        # Crops 8 pixels from the top of the image.
	        $CatPhoto = Get-Image –file $home\Pictures\Cat.jpg
	        $CatPhoto.crop(0,8,0,0)
	    .Example
	        $CatPhoto = Get-Image –file $home\Pictures\Cat.jpg
	        $CatPhoto.flipvertical()
	    .Example
	        dir $home\pictures\Vacation*.jpg | get-image | format-table fullname, horizontalResolution, PixelDepth –autosize
	    .Link
	        "Image Manipulation in PowerShell": http://blogs.msdn.com/powershell/archive/2009/03/31/image-manipulation-in-powershell.aspx
	    .Link
	        Add-CropFilter
	    .Link
	        Add-ScaleFilter
	    .Link
	        Add-RotateFlipFilter
	    .Link
	        Get-ImageProperties
	    #>
		param (
			[Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
			[Alias('FullName')]
			[string]$file)
		
		process
		{
			$realItem = Get-Item $file -ErrorAction SilentlyContinue
			if (-not $realItem) { return }
			$image = New-Object -ComObject Wia.ImageFile
			try
			{
				$image.LoadFile($realItem.FullName)
				$image |
				Add-Member NoteProperty FullName $realItem.FullName -PassThru |
				Add-Member ScriptMethod Resize {
					param ($width,
						$height,
						[switch]$DoNotPreserveAspectRatio)
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-ScaleFilter @psBoundParameters -passThru -image $image
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru |
				Add-Member ScriptMethod Crop {
					param ([Double]$left,
						[Double]$top,
						[Double]$right,
						[Double]$bottom)
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-CropFilter @psBoundParameters -passThru -image $image
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru |
				Add-Member ScriptMethod FlipVertical {
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-RotateFlipFilter -flipVertical -passThru
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru |
				Add-Member ScriptMethod FlipHorizontal {
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-RotateFlipFilter -flipHorizontal -passThru
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru |
				Add-Member ScriptMethod RotateClockwise {
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-RotateFlipFilter -angle 90 -passThru
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru |
				Add-Member ScriptMethod RotateCounterClockwise {
					$image = New-Object -ComObject Wia.ImageFile
					$image.LoadFile($this.FullName)
					$filter = Add-RotateFlipFilter -angle 270 -passThru
					$image = $image | Set-ImageFilter -filter $filter -passThru
					Remove-Item $this.Fullname
					$image.SaveFile($this.FullName)
				} -PassThru
				
			}
			catch
			{
				Write-Verbose $_
			}
		}
	}
	#endregion
	
	
	
	
	
	
	
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formBadgerImageCopy10.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttoncancel.remove_Click($buttoncancel_Click)
			$buttonEngageFoo.remove_Click($buttonEngageFoo_Click)
			$buttonBrowseFolder2.remove_Click($buttonBrowseFolder2_Click)
			$buttonBrowseFolder.remove_Click($buttonBrowseFolder_Click)
			$formBadgerImageCopy10.remove_Load($formBadgerImageCopy10_Load)
			$formBadgerImageCopy10.remove_Load($Form_StateCorrection_Load)
			$formBadgerImageCopy10.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

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
