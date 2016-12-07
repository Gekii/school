class WER
{
	[System.Collections.ArrayList]$werFiles
}

class WERFile
{
	[string]$filename
	[string]$path
	[Object]$computer
	[Object]$user
	[System.Collections.Hashtable]$content
}