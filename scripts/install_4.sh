#!/usr/bin/env bash

# Creates key mappings for this session
hidutil property --set '{"UserKeyMapping":[
  {
    "HIDKeyboardModifierMappingSrc": 0x700000039,
    "HIDKeyboardModifierMappingDst": 0x700000029
  },
  {
    "HIDKeyboardModifierMappingSrc": 0x700000029,
    "HIDKeyboardModifierMappingDst": 0x700000039
  }
]}'

# Persists key mappings permanently
cp ./KeyRemapping.plist ~/Library/LaunchAgents/com.example.KeyRemapping.plist
