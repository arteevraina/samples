#!/bin/bash

set -e

declare -ar PROJECT_NAMES=(
    "add_to_app/flutter_module" \
    "add_to_app/flutter_module_using_plugin" \
    "add_to_app/flutter_module_books" \
    "animations" \
    "flutter_maps_firestore" \
    "infinite_list" \
    "ios_app_clip" \
    "isolate_example" \
    "jsonexample" \
    "place_tracker" \
    "platform_channels" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "testing_app" \
# TODO(goderbauer): Add veggieseasons back when moved out of experimental again.
#    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Checking '${PROJECT_NAME}' for formatting"
    pushd "${PROJECT_NAME}"

    # Activate the copywriter package
    pub global activate copywriter

    # Run copywriter command
    copywriter -d
    
    popd
done

echo "-- Success --"