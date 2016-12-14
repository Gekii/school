class WER
{
	[System.Collections.ArrayList]$werFilesList

	[System.Collections.ArrayList]GetWerFiles()
	{
		$path = "C:\Users\$env:Username\AppData\Local\Microsoft\Windows\WER\ReportArchive"
		if(Test-Path $path)
		{
			$files = Get-ChildItem -Path $path -Directory
			return $files
		}
		else
		{
			return @{}
		}
	}

	SetWerFilesList([System.Collections.ArrayList]$werFiles)
	{
		foreach($file in $werFiles)
		{
			$content = @()
			$contentReal = @{}

			$child = Get-ChildItem $file.FullName
			$werPath = $child.FullName

			$content = Get-Content -Path $werPath -Encoding Unicode

			foreach($c in $content)
			{
				$test = @()
				$test = $c.Split("=")
				$contentReal += @{$test[0] = $test[1]}
			}

			$werFile = [WERFile]::new($file.FullName, $file.Parent.FullName, $contentReal)

			$this.werFilesList.Add($werFile)
		}
	}

	DatabaseConnection_Into($table, $columns, $values)
	{
		$MySQlServerName = "localhost"
		$MySQLDatenbankName = "Watson"
		$UserName = "root"
		$Password = ""

		## Laden des MySQL Provider nachladen / Pfad evtl. anpassen
		[void][system.reflection.Assembly]::LoadFrom("C:\Program Files (x86)\MySQL\MySQL Connector Net 6.9.8\Assemblies\v2.0\MySql.Data.dll")

		$MySqlConnection = New-Object MySql.Data.MySqlClient.MySqlConnection
		$MySqlConnection.ConnectionString = "server=$MySQLServerName;user id=$Username;password=$Password;database=$MySQLDatenbankName;pooling=false"
		$MySqlConnection.Open()

		$MySqlCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
		$MySqlCommand.Connection = $MySqlConnection

		$MySqlCommand.CommandText = "INSERT INTO $table($columns) VALUES ($values);"
		$Reader = $MySqlCommand.ExecuteNonQuery()
 
		$Reader.Close()

		$MySqlConnection.Close()
	}
	DatabaseConnection_Get($table, $columns, $search, $value)
	{
		$MySQlServerName = "localhost"
		$MySQLDatenbankName = "Watson"
		$TabellenName = "watson"
		$UserName = "root"
		$Password = ""

		## Laden des MySQL Provider nachladen / Pfad evtl. anpassen
		[void][system.reflection.Assembly]::LoadFrom("C:\Program Files (x86)\MySQL\MySQL Connector Net 6.9.8\Assemblies\v2.0\MySql.Data.dll")

		$MySqlConnection = New-Object MySql.Data.MySqlClient.MySqlConnection
		$MySqlConnection.ConnectionString = "server=$MySQLServerName;user id=$Username;password=$Password;database=$MySQLDatenbankName;pooling=false"
		$MySqlConnection.Open()

		$MySqlCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
		$MySqlCommand.Connection = $MySqlConnection

		$MySqlCommand.CommandText = "SELECT $columns FROM $table where $search = $value;"
		$Reader = $MySqlCommand.ExecuteQuery()
 
		$Reader.Close()

		$MySqlConnection.Close()
	}
}

class WERFile
{
	[string]$filename
	[string]$path
	[Computer]$computer
	[string]$user
	[System.Collections.Hashtable]$content

	WerFile([string]$filename,[string]$path,[System.Collections.Hashtable]$content)
	{
		$this.filename = $filename
		$this.path = $path
		$this.computer = [Computer]::new()
		$this.user = $env:USERNAME
		$this.content = $content
	}
}

class Computer
{
	[string]$computerName
	[string]$operatingSystem
	[string]$mac

	Computer()
	{
		$this.computerName = $env:COMPUTERNAME
		$this.operatingSystem = (Get-WmiObject Win32_OperatingSystem).Name
		$macadresse = get-wmiobject -class "Win32_NetworkAdapterConfiguration" | Where {$_.IpEnabled -Match "True"} | Select MacAddress
		$this.mac = $macAdresse[0].MacAddress
	}
}