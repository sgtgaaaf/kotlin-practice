#!/bin/bash

# Set the temporary JAVA_HOME within the script
temp_java_home="$(dirname "$0")/jre"

# Save the current value of JAVA_HOME
original_java_home="$JAVA_HOME"

# Set the temporary JAVA_HOME
export JAVA_HOME="$temp_java_home"

echo "$JAVA_HOME"

# Run your Java-related commands here
# ...
java -jar "$(dirname "$0")/kotlin-1.0-SNAPSHOT.jar"

# Restore the original JAVA_HOME
export JAVA_HOME="$original_java_home"

echo "$JAVA_HOME"