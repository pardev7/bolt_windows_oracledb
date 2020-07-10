param($query)

echo "Gurprit: $query"
[System.Reflection.Assembly]::LoadWithPartialName("System.Data.OracleClient")

$connectionString = "Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=192.168.3.162)(Port=1521)))(CONNECT_DATA=(SID=orcl)));User ID=bodbuk_owner_518;Password=bodb"

$connection = New-Object System.Data.OracleClient.OracleConnection($connectionString)


$command = new-Object System.Data.OracleClient.OracleCommand($query, $connection)

$connection.Open()

$employeesNames = $command.ExecuteScalar()

echo "First Name: "$employeesNames

$connection.Close()

