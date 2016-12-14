class WER
{
	[System.Collections.ArrayList]$werFiles


	[System.Collections.ArrayList] GetWerFiles()
	{
		$path = "C:\Users\$env:Username\AppData\Local\Microsoft\Windows\WER\ReportArchive"
		if(Test-Path $path)
		{
			$files = Get-ChildItem -Path $path -Directory
		}
		return @{}
	}
}

class WERFile
{
	[string]$filename
	[string]$path
	[Object]$computer
	[Object]$user
	[System.Collections.Hashtable]$content

	WerFile()
	{

	}
}

$test = [WER]::new()

$test.GetWerFiles()

