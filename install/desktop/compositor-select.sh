#!/bin/bash

# Prompt user to choose a Wayland compositor
PS3="Select your preferred Wayland compositor: "
options=("Hyprland" "Niri")
select opt in "${options[@]}"; do
  case $opt in
    "Hyprland")
      export OMARCHY_COMPOSITOR="hyprlandia"
      break
      ;;
    "Niri")
      export OMARCHY_COMPOSITOR="niri"
      break
      ;;
    *)
      echo "Invalid option $REPLY"
      ;;
  esac
done

echo "Selected compositor: $OMARCHY_COMPOSITOR"
