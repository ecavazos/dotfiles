# Really useful (but rarely used) *nix commands that I won't remember unless
# I save them here.

##
# Find the 10 biggest files in a directory.
#
# find cmd: first argument is directory (~/) to search
# find -type f: only regular files
# find -size +100M: files bigger than 100Mb
# find -print0: prints file paths separated by NUL character (used with xargs)
#
# xargs -0: change xargs to expect NUL characters as separators
# xargs ls -lhS: calls ls utility for each file found
#
# ls -l: long format
# ls -h: print file sizes in a human readable format
# ls -S: sort by file size
#
# head -n 10: show the top 10 files
#
# awk '{print $5, $9}: print the file size and file path columns of ls command
find ~/ -type f -size +100M -print0 | xargs -0 ls -lhS | head -n 10 \
  | awk '{print $5,$9}'


##
# Redirect stderr to /dev/null
#
# 2>/dev/null
find / -name foo 2>/dev/null


##
# Remove all files that match a search
#
# find command searches the current directory for files that end with .class
find . -name "*.class" -print0 | xargs -0 rm
