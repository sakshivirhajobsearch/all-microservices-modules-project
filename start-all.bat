@echo off
setlocal enabledelayedexpansion

REM Define the list of modules
set modules=service-discovery configuration-management api-gateway security-module service-modules service-a service-b database-modules event-driven-communication monitoring logging resilience

for %%M in (%modules%) do (
    echo ---------------------------------
    echo Building and running %%M...
    echo ---------------------------------

    cd %%M
    call mvn clean install
    start "" mvn spring-boot:run
    cd ..
)

echo All modules are starting in new windows!
pause
