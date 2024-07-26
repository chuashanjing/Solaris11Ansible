#!/bin/bash

#NOTE: THERE WILL BE ERRORS IF THE PLACEHOLDERS ARE NOT REPLACED
#NOTE: SCRIPT MIGHT STOP HALFWAY, WITHOUT ANT OUTPUT FOR ERROR. Consider running them 1 by 1 as you read and replace the placeholders

# Directory containing the playbooks
PLAYBOOK_DIR="<Directory of your scripts>"

# Loop through each .yml file in the directory and run it with ansible-playbook
for playbook in "$PLAYBOOK_DIR"/*.yml; do
    echo "Running playbook: $playbook"
    ansible-playbook "$playbook"
    echo "###################################################################"
    if [ $? -ne 0 ]; then
        echo "Error running playbook: $playbook"
        exit 1
    fi
done

echo "All playbooks executed successfully."
