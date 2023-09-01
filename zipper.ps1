# Define the source files and the output zip file
$sourceFiles = @(
    'E:\Folder to be zipped\Greetings.txt',
    'E:\Folder to be zipped\Introduction.txt'
)

$zipFilePath = 'E:\Zipped file.zip'

# Create a new zip archive and add files
Add-Type -AssemblyName System.IO.Compression.FileSystem

$compressionLevel = [System.IO.Compression.CompressionLevel]::Optimal
$zipArchive = [System.IO.Compression.ZipFile]::Open($zipFilePath, 'Create')

foreach ($file in $sourceFiles) {
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zipArchive, $file, (Split-Path -Path $file -Leaf), $compressionLevel)
}

$zipArchive.Dispose()

# Check if the zip file is created
if (Test-Path $zipFilePath) {
    Write-Host "ZIP file created"
} else {
    Write-Host "ZIP file not created"
}
