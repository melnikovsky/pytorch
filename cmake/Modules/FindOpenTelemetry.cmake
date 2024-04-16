# Try to find the OpenTelemetry API headers
# OpenTelemetryApi_FOUND - system has OpenTelemetry API headers
# OpenTelemetryApi_INCLUDE_DIRS - the OpenTelemetry API headers dir

find_path(OpenTelemetryAPI_INCLUDE_DIR
    NAMES include/opentelemetry/version.h
    DOC "The directory where Open Telemetry API headers reside"
)

set (OpenTelemetryApi_INCLUDE_DIRS ${OpenTelemetryAPI_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(OpenTelemetry
    FOUND_VAR OpenTelemetryApi_found
    REQUIRED_VARS OpenTelemetryApi_INCLUDE_DIRS
)

mark_as_advanced(OpenTelemetryApi_FOUND)
