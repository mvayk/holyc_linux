find . -type f \( -name "*.c" -o -name "*.h" \) | while read -r file; do
  dir=$(dirname "$file")
  base=$(basename "$file")
  name="${base%.*}"
  mv "$file" "$dir/$name.HC"
done
