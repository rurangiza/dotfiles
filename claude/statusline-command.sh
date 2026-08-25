#!/usr/bin/env bash

input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name // empty')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')
five=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')
week=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty')

# Build progress bar for context window (10 chars wide)
if [ -n "$used" ]; then
  filled=$(printf "%.0f" "$(echo "$used * 10 / 100" | bc -l 2>/dev/null || echo 0)")
  empty=$((10 - filled))
  bar=""
  for i in $(seq 1 $filled); do bar="${bar}█"; done
  for i in $(seq 1 $empty); do bar="${bar}░"; done
  ctx_part="ctx [${bar}] $(printf '%.0f' "$used")%"
else
  ctx_part="ctx [░░░░░░░░░░] -"
fi

# Build rate limit section
rate_part=""
if [ -n "$five" ] || [ -n "$week" ]; then
  rate_part=" |"
  [ -n "$five" ] && rate_part="$rate_part 5h:$(printf '%.0f' "$five")%"
  [ -n "$week" ] && rate_part="$rate_part 7d:$(printf '%.0f' "$week")%"
fi

# Compose final output
if [ -n "$model" ]; then
  printf "%s | %s%s" "$model" "$ctx_part" "$rate_part"
else
  printf "%s%s" "$ctx_part" "$rate_part"
fi
