$modulesPath = ""

# Get a list of directories in the specified path
$moduleDirectories = Get-ChildItem -Path $modulesPath -Directory

# Iterate through each directory and publish the module
foreach ($moduleDirectory in $moduleDirectories) {
    $moduleName = $moduleDirectory.Name
    $modulePath = Join-Path $modulesPath $moduleName

    # Publish the module
    Publish-Module -Path $modulePath -NuGetApiKey $apiKey -Force
}
