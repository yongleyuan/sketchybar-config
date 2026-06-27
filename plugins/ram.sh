#!/usr/bin/env bash

# Extract page size (usually 4096 bytes)
page_size=$(vm_stat | awk '/page size of/ {print $8}')

# Extract page counts from vm_stat
active_pages=$(vm_stat | awk '/Pages active:/ {print $3}' | tr -d '.')
wired_pages=$(vm_stat | awk '/Pages wired down:/ {print $4}' | tr -d '.')
compressed_pages=$(vm_stat | awk '/Pages occupied by compressor:/ {print $5}' | tr -d '.')

# Sum pages to get used bytes
used_bytes=$(( (active_pages + wired_pages + compressed_pages) * page_size ))

# Extract total physical memory in bytes using sysctl
total_bytes=$(sysctl -n hw.memsize)

# Calculate the percentage
ram_usage=$(( used_bytes * 100 / total_bytes ))

$BAR_NAME -m --set ram_percent label="$ram_usage%"

