# Lean may wrap a long `#print axioms` result across several lines.
# Keep the same allowlist, and fail closed on incomplete lists.
function check(record, names, count, i) {
  sub(/^.*\[/, "", record)
  sub(/\].*$/, "", record)
  count = split(record, names, /,/)
  for (i = 1; i <= count; i++) {
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", names[i])
    if (names[i] != "propext" && names[i] != "Classical.choice" && names[i] != "Quot.sound") {
      print "Unexpected axiom: " names[i] > "/dev/stderr"
      exit 1
    }
  }
}
{
  if ($0 ~ /depends on axioms:/) {
    if (pending) exit 1
    record = $0
    pending = 1
  } else if (pending) {
    record = record " " $0
  }
  if (pending && record ~ /\[/ && record ~ /\]/) {
    check(record)
    pending = 0
  }
}
END {
  if (pending) exit 1
}
