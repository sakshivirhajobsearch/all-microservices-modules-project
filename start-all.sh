$modules = @(
    "service-discovery",
    "configuration-management",
    "api-gateway",
    "security-module",
    "service-modules",
    "service-a",
    "service-b",
    "database-modules",
    "event-driven-communication",
    "monitoring",
    "logging",
    "resilience"
)

foreach ($module in $modules) {
    Write-Host "---------------------------------"
    Write-Host "Building and running $module..."
    Write-Host "---------------------------------"

    Set-Location $module
    mvn clean install
    Start-Process "mvn" -ArgumentList "spring-boot:run" -NoNewWindow
    Set-Location ..
}

Write-Host "All modules are starting in new processes!"
