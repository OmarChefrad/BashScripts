Regular expressions (regex) are widely used in Linux for pattern matching and text manipulation. Here are some commonly used regex patterns and examples:

1. **Matching a specific string:**
   ```bash
   grep "pattern" filename
   ```
   Example:
   ```bash
   grep "hello" myfile.txt
   ```

2. **Matching any single character:**
   ```bash
   grep "h.llo" filename
   ```
   Example:
   ```bash
   grep "h.llo" myfile.txt
   ```
   This would match "hello" or "hallo" or any other single character in place of the dot.

3. **Matching zero or more occurrences of a character:**
   ```bash
   grep "co*l" filename
   ```
   Example:
   ```bash
   grep "co*l" myfile.txt
   ```
   This would match "cl", "col", "cool", and so on.

4. **Matching one or more occurrences of a character:**
   ```bash
   grep "co+l" filename
   ```
   Example:
   ```bash
   grep "co+l" myfile.txt
   ```
   This would match "col", "cool", "coool", and so on.

5. **Matching the beginning of a line:**
   ```bash
   grep "^start" filename
   ```
   Example:
   ```bash
   grep "^start" myfile.txt
   ```
   This would match lines that start with "start."

6. **Matching the end of a line:**
   ```bash
   grep "end$" filename
   ```
   Example:
   ```bash
   grep "end$" myfile.txt
   ```
   This would match lines that end with "end."

7. **Matching a range of characters:**
   ```bash
   grep "[0-9]" filename
   ```
   Example:
   ```bash
   grep "[0-9]" myfile.txt
   ```
   This would match any line containing a digit.

8. **Matching any character except those in a specified range:**
   ```bash
   grep "[^0-9]" filename
   ```
   Example:
   ```bash
   grep "[^0-9]" myfile.txt
   ```
   This would match any line that does not contain a digit.

These are just basic examples, and regex can get quite complex depending on your needs. Keep in mind that different tools and programming languages may have slightly different regex syntax. The examples above are geared toward the `grep` command, commonly used in Linux.
