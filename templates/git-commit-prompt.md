# Git Commit Guidelines
## Format
```
<emoji> <scope>[!]: <keyword> <description> (max 50 chars)

[Optional context paragraph: explain what/why] (max 72 chars/line)

[Optional bullet points:] (max 72 chars/line)
- Specific change 1
- Specific change 2
- Specific change 3

[Optional footer: BREAKING:/fixes/closes/refs #123] (max 72 chars/line)
```

## Emojis + Scopes
```
🚀 init 🚀 feat 🐛 fix 🔥 hotfix 📝 docs ✅ test ♻️ refactor
💄 style 📦 deps ⚙️ config 🗃️ db 🔒 security ⚡ perf 🚧 ci
🚀 deploy ⏪ revert 🏷️ release
```

## Keywords
```
Add Update Remove
```

## Rules
```
- Imperative mood (Add/Update/Remove, not Added/Updated/Removed)
- Main message line max 50 chars, body lines max 72 chars per line
- Main message description starts with capitalized keyword, no period at end
- Bullet points require preceding of context paragraph
- Breaking changes: use <scope>!, and BREAKING: in footer
- Link issues: fixes #123, closes #456, refs #789
- Blank lines between main message, context paragraph, bullet points, footer
```

## Examples
### Examples of one-line commit messages:
```
🚀 feat: Add user authentication system
📝 docs: Update README with installation instructions
```

### Example with context paragraph + bullet points:
```
🚀 feat: Add user authentication system

This enables secure user access and prepares for role-based
permissions in the next release.

- Add JWT token generation and validation
- Add login/logout endpoints with session management
- Add password encryption using bcrypt
```

### Example with all optional sections included:
```
🐛 fix!: Update API response format for error handling

Change error response from string to object format to provide
more detailed error information including error codes and
suggested actions for client applications.

- Replace string error messages with structured error objects
- Add error codes for programmatic error handling
- Include suggested user actions in error responses
- Update error validation middleware for new format

BREAKING: Error responses now return objects instead of strings
fixes #123
```
