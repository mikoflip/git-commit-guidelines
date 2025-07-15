# Git Commit Guidelines

## 📋 Usage Guidelines

### **Message Format Rules**
- **Subject line**: 50 characters maximum (ideally under 50)
- **Body**: 72 characters per line maximum
- **Format**: `<emoji> <scope>[!]: <description>`
- **Mood**: Use imperative mood ("Add" not "Added" or "Adding")
- **Capitalization**: Lowercase after colon, no period at end

### **Message Length Recommendations**
- **Minimum**: Scope + brief description (e.g., `feat: Add user login`)
- **Optimal**: 25–50 characters for subject line
- **Maximum**: 50 characters for subject line, unlimited body with 72-char lines
- **Body**: Optional but recommended for complex changes

### **Issue/PR Linking Patterns**
- **Closes**: `closes #123` - Automatically closes issue when merged
- **Fixes**: `fixes #456` - Links to bug report and closes when merged
- **Resolves**: `resolves #789` - General resolution, closes when merged
- **References**: `refs #321` - Links without closing
- **Multiple**: `fixes #123, closes #456, refs #789`

## ⚡ Quick Daily Reference

### **Most Common Patterns**
- `🚀 feat: Add <feature>`
- `🐛 fix: Update <component> to fix <issue>`
- `📝 docs: Update <doc-type> with <changes>`
- `✅ test: Add tests for <component>`
- `♻️ refactor: Update <component> for <benefits>`

### **Commit Message Format**
```
<emoji> <scope>[!]: <description>

[Optional <body>: explain the what and why]

[Optional <footer>: describe breaking changes and link issues]
```

## 🔍 Troubleshooting: Choosing the Right Template

### **"I'm adding something new"**
- **New functionality**: `🚀 feat: Add <feature>`
- **New test**: `✅ test: Add tests for <component>`
- **New documentation**: `📝 docs: Add <doc-type> documentation`
- **New dependency**: `📦 deps: Add <dep> in <component> for <feature>`

### **"I'm fixing something broken"**
- **Regular bug**: `🐛 fix: Update <component> to fix <issue>`
- **Critical issue**: `🔥 hotfix: Update <component> to hotfix <issue>`
- **Security vulnerability**: `🔒 security: Update <component> to fix security vulnerability`

### **"I'm improving existing code"**
- **Code structure**: `♻️ refactor: Update <component> for <benefits>`
- **Performance**: `⚡ perf: Update <component> for <metric> improvement`
- **UI/styling**: `💄 style: Update <ui-type> for <purpose>`

### **"I'm changing project setup"**
- **Dependencies**: `📦 deps: Update <dep> to <version>`
- **Configuration**: `⚙️ config: Update <config-type> for <environment>`
- **Database**: `🗃️ db: Update <change-type> for <purpose>`

## 📊 Quick Reference: Scope Indicators

| Emoji | Scope      | Purpose          | Example                                   |
|-------|------------|------------------|-------------------------------------------|
| 🚀    | `feat`     | New features     | `🚀 feat: Add user authentication`        |
| 🐛    | `fix`      | Bug fixes        | `🐛 fix: Fix login validation error`      |
| 🔥    | `hotfix`   | Critical fixes   | `🔥 hotfix: Fix payment processing crash` |
| 📝    | `docs`     | Documentation    | `📝 docs: Add API documentation`          |
| ✅     | `test`     | Testing          | `✅ test: Add login component tests`       |
| ♻️    | `refactor` | Code refactoring | `♻️ refactor: Simplify user service`      |
| 💄    | `style`    | UI/styling       | `💄 style: Update button hover effects`   |
| 📦    | `deps`     | Dependencies     | `📦 deps: Update React to 18.2.0`         |
| ⚙️    | `config`   | Configuration    | `⚙️ config: Add production environment`   |
| 🗃️   | `db`       | Database         | `🗃️ db: Add user preferences table`      |
| 🔒    | `security` | Security         | `🔒 security: Add password encryption`    |
| ⚡     | `perf`     | Performance      | `⚡ perf: Optimize search algorithm`       |
| 🚧    | `ci`       | CI/CD            | `🚧 ci: Add automated testing workflow`   |
| 🚀    | `deploy`   | Deployment       | `🚀 deploy: Release v2.1.0 to production` |
| ⏪     | `revert`   | Reverting        | `⏪ revert: Revert user authentication`    |
| 🏷️   | `release`  | Releases         | `🏷️ release: Version 2.1.0`              |

## 💡 Common Placeholder Examples

| Placeholder          | Examples                                                 |
|----------------------|----------------------------------------------------------|
| `<feature>`          | user authentication, shopping cart, search functionality |
| `<component>`        | LoginForm, UserService, PaymentProcessor, SearchBar      |
| `<issue>`            | validation error, memory leak, broken link, timeout      |
| `<reason>`           | incorrect regex, missing null check, API change          |
| `<scope>`            | all users, production environment, checkout process      |
| `<benefits>`         | better performance, improved UX, enhanced security       |
| `<doc-type>`         | README, API guide, installation guide, FAQ               |
| `<endpoint>`         | /api/users, /auth/login, /payments/process               |
| `<dep>`              | React, lodash, express, typescript                       |
| `<version>`          | 18.2.0, v2.1.0, latest                                   |
| `<environment>`      | production, staging, development                         |
| `<config-type>`      | webpack config, environment variables, database settings |
| `<change-type>`      | migration, schema update, seed data                      |
| `<improvement-type>` | caching, optimization, compression                       |
| `<ui-type>`          | button styles, modal component, navigation bar           |
| `<workflow-type>`    | testing pipeline, deployment workflow, code review       |

## 📝 Git Commit Messages

### Project Management

| Focus                  | Add                                                 | Update                                                      | Remove                                                 |
|------------------------|-----------------------------------------------------|-------------------------------------------------------------|--------------------------------------------------------|
| **Features**           | 🚀 `feat:` Add \<feature>                           | 🚀 `feat:` Update \<feature> for \<benefits>                | 🚀 `feat:` Remove \<feature>                           |
| **Breaking Changes**   | 🚀 `feat!:` Add \<feature> BREAKING: \<description> | 🚀 `feat!:` Update \<feature> BREAKING: \<description>      | 🚀 `feat!:` Remove \<feature> BREAKING: \<description> |
| **Reverting Features** | ⏪ `revert:` Revert \<feature>                       | -                                                           | -                                                      |
| **Releases**           | 🏷️ `release:` Add \<feature>                       | 🏷️ `release:` Update to \<release> before \<issue/feature> | -                                                      |
| **Configuration**      | ⚙️ `config:` Add \<config-type> for \<component>    | ⚙️ `config:` Update \<config-type> for \<component>         | ⚙️ `config:` Remove \<config-type> for \<component>    |

### Implementation

| Focus                  | Add                                                               | Update                                                               | Remove                                                               |
|------------------------|-------------------------------------------------------------------|----------------------------------------------------------------------|----------------------------------------------------------------------|
| **Environment Config** | ⚙️ `config:` Add \<config-type> for \<environment>                | ⚙️ `config:` Update \<config-type> for \<environment>                | ⚙️ `config:` Remove \<config-type> for \<environment>                |
| **Dependencies**       | 📦 `deps:` Add \<dep> in \<component> for \<feature>              | 📦 `deps:` Update \<dep> to \<version>                               | 📦 `deps:` Remove \<dep> in \<component>                             |
| **Components**         | 🚀 `feat:` Add \<component-type> \<component-name> for \<purpose> | 🚀 `feat:` Update \<component-type> \<component-name> for \<purpose> | 🚀 `feat:` Remove \<component-type> \<component-name> for \<purpose> |
| **UI & Styling**       | 💄 `style:` Add \<ui-type> for \<purpose>                         | 💄 `style:` Update \<ui-type> for \<purpose>                         | 💄 `style:` Remove \<ui-type> for \<purpose>                         |
| **Tests**              | ✅ `test:` Add tests for \<component>                              | ✅ `test:` Update tests of \<component> with \<changes>               | ✅ `test:` Remove tests for \<component>                              |
| **Database**           | 🗃️ `db:` Add \<change-type> for \<purpose>                       | 🗃️ `db:` Update \<change-type> for \<purpose>                       | 🗃️ `db:` Remove \<change-type> for \<purpose>                       |

### Bug Fixes

| Focus        | Add | Update                                                                               | Remove |
|--------------|-----|--------------------------------------------------------------------------------------|--------|
| **Bugfixes** | -   | 🐛 `fix:` Update \<component> to fix \<issue> in \<feature> due to \<reason>         | -      |
| **Hotfixes** | -   | 🔥 `hotfix:` Update \<component> to hotfix \<issue> in \<feature> affecting \<scope> | -      |

### Refactoring

| Focus          | Add | Update                                                 | Remove |
|----------------|-----|--------------------------------------------------------|--------|
| **Components** | -   | ♻️ `refactor:` Update \<component> for \<benefits>     | -      |
| **Tests**      | -   | ✅ `test:` Update tests of \<component> for \<benefits> | -      |

### Documentation

| Focus                    | Add                                              | Update                                              | Remove                                      |
|--------------------------|--------------------------------------------------|-----------------------------------------------------|---------------------------------------------|
| **User Documentation**   | 📝 `docs:` Add \<doc-type> documentation         | 📝 `docs:` Update \<doc-type> with \<changes>       | 📝 `docs:` Remove \<doc-type> documentation |
| **Legal Documentation**  | 📝 `docs:` Add \<legal-doc>                      | 📝 `docs:` Update \<legal-doc> with \<changes>      | 📝 `docs:` Remove \<legal-doc>              |
| **API Documentation**    | 📝 `docs:` Add API docs for \<endpoint>          | 📝 `docs:` Update API docs for \<endpoint>          | 📝 `docs:` Remove API docs for \<endpoint>  |
| **Inline Documentation** | 📝 `docs:` Add inline documentation              | 📝 `docs:` Update inline documentation              | 📝 `docs:` Remove inline documentation      |
| **Changelog**            | 📝 `docs:` Add changelog with \<version> changes | 📝 `docs:` Update changelog with \<version> changes | 📝 `docs:` Remove changelog                 |

### Security & Performance

| Focus                            | Add                                                                | Update                                                                           | Remove                                                 |
|----------------------------------|--------------------------------------------------------------------|----------------------------------------------------------------------------------|--------------------------------------------------------|
| **Vulnerabilities**              | -                                                                  | 🔒 `security:` Update \<component> to fix security vulnerability fixes #\<issue> | -                                                      |
| **Authentication/Authorization** | 🔒 `security:` Add \<access-type> for \<feature> closes #\<ticket> | 🔒 `security:` Update \<access-type> for \<feature> due to \<reason>             | 🔒 `security:` Remove \<access-type> for \<feature>    |
| **Performance**                  | ⚡ `perf:` Add \<improvement-type> to \<component>                  | ⚡ `perf:` Update \<component> for \<metric> improvement                          | ⚡ `perf:` Remove \<improvement-type> from \<component> |

### CI/CD

| Focus          | Add                                           | Update                                                           | Remove                                             |
|----------------|-----------------------------------------------|------------------------------------------------------------------|----------------------------------------------------|
| **Workflows**  | 🚧 `ci:` Add \<workflow-type> for \<purpose>  | 🚧 `ci:` Update \<workflow-type> for \<purpose>                  | 🚧 `ci:` Remove \<workflow-type> for \<purpose>    |
| **Deployment** | 🚀 `deploy:` Add deployment to \<environment> | 🚀 `deploy:` Update deployment to \<environment> with \<version> | 🚀 `deploy:` Remove deployment from \<environment> |


## ✅ Examples of Good vs. Poor Commit Messages

### **✅ Good Examples**

**Features:**
- `feat: Add user authentication system`
- `feat: Update search algorithm for better performance`
- `feat!: Remove legacy API endpoints BREAKING: Remove /v1/users endpoint`

**Bug Fixes:**
- `fix: Update LoginForm to fix validation error in email field due to regex issue`
- `hotfix: Update PaymentService to hotfix calculation error affecting checkout process`

**Documentation:**
- `docs: Add API documentation for /auth endpoints`
- `docs: Update README with installation instructions`

**Dependencies:**
- `deps: Add lodash in utils for data manipulation`
- `deps: Update React to 18.2.0`

**Database:**
- `db: Add migration for user preferences table`
- `db: Update schema for email verification feature`

### **❌ Poor Examples**

**Vague/Unclear:**
- ❌ `fix: bug fix` → ✅ `fix: Update LoginForm to fix validation error in email field`
- ❌ `update stuff` → ✅ `feat: Update search algorithm for better performance`
- ❌ `added feature` → ✅ `feat: Add user authentication system`

**Wrong Scope:**
- ❌ `feat: fix login bug` → ✅ `fix: Update LoginForm to fix validation error`
- ❌ `docs: add new feature` → ✅ `feat: Add user authentication system`

**Missing Context:**
- ❌ `deps: update react` → ✅ `deps: Update React to 18.2.0`
- ❌ `fix: payment issue` → ✅ `hotfix: Update PaymentService to hotfix calculation error affecting checkout process`

**Inconsistent Format:**
- ❌ `Fixed the login form validation` → ✅ `fix: Update LoginForm to fix validation error`
- ❌ `Adding user auth` → ✅ `feat: Add user authentication system`

## 📝 Complete Commit Examples

### **Example 1: Simple one-line commit**
```
📝 docs: Update README with installation instructions
```

### **Example 2: Feature with body and issue linking**
```
🚀 feat: Add user authentication system

- Add JWT token generation and validation
- Add login/logout endpoints with session management
- Add password encryption using bcrypt

This enables secure user access and prepares for role-based
permissions in the next release.

closes #123
refs #456
```

### **Example 3: Bug fix with breaking change**
```
🐛 fix!: Update API response format for error handling

Change error response from string to object format to provide
more detailed error information including error codes and
suggested actions for client applications.

BREAKING: Error responses now return objects instead of strings

fixes #789
```

## 👥 Team Collaboration Guidelines

### **Commit Message Guidelines**
- **Review requirement**: All commits must follow template format
- **Breaking changes**: Must include `BREAKING:` in commit body
- **Issue linking**: Always link to relevant tickets using `fixes #123`
- **Code review**: Commit messages reviewed alongside code changes

### **Branch Naming Convention**
- **Features**: `feat/user-authentication`
- **Bugfixes**: `fix/login-validation-error`
- **Hotfixes**: `hotfix/payment-calculation-bug`

### **Team Responsibilities**
- **Junior developers**: Use basic templates, focus on clear descriptions
- **Senior developers**: Include detailed context in commit body
- **Tech leads**: Ensure team consistency, review commit message quality
- **Release managers**: Use `🏷️ release:` scope for version tags

## 🔗 Git Hooks Integration

### **Pre-commit Hook** (`.git/hooks/pre-commit`)
```bash
#!/bin/bash
# Validate commit message format
commit_regex='^(🚀|🐛|🔥|📝|✅|♻️|💄|📦|⚙️|🗃️|🔒|⚡|🚧|🏷️|⏪) (feat|fix|hotfix|docs|test|refactor|style|deps|config|db|security|perf|ci|deploy|release|revert): .{1,50}$'

if ! grep -qE "$commit_regex" "$1"; then
    echo "❌ Invalid commit message format!"
    echo "✅ Use: <emoji> <scope>: <description>"
    echo "📖 See: git-commit-guidelines.md"
    exit 1
fi
```

### **Commit Message Template** (`.gitmessage`)
```bash
# <emoji> <scope>: <description> (max 50 chars)
# |<----  Using a Maximum Of 50 Characters  ---->|

# Body: Explain *what* and *why* (not *how*). Max 72 chars per line.
# |<----   Try To Limit Each Line to a Maximum Of 72 Characters   ---->|

# Footer: Link issues and breaking changes
# fixes #123
# BREAKING: describe breaking change
```

### **Setup Script** (`setup-git-template.sh`)
```bash
#!/bin/bash
# Configure git to use commit message template
git config commit.template .gitmessage
git config core.editor "code --wait"  # VS Code
# git config core.editor "vim"        # Vim alternative
echo "✅ Git commit template configured"
```

## 🌍 Real-World Examples

### **Project Development Cycle**

1. `feat: Add user registration form`
2. `test: Add tests for UserRegistration component`
3. `docs: Add API documentation for /register endpoint`
4. `fix: Update UserRegistration to fix email validation due to incorrect regex`
5. `refactor: Update UserRegistration for better error handling`
6. `perf: Update registration form for faster validation`
7. `release: Update to v2.1.0 before authentication feature`

### **Bug Fix Workflow**

1. `fix: Update ShoppingCart to fix item removal bug in checkout process fixes #127`
2. `test: Update ShoppingCart tests with edge case scenarios`
3. `docs: Update changelog with v1.2.3 bug fixes`

### **Feature Development**

1. `feat: Add payment integration system`
2. `deps: Add stripe in payment module for credit card processing`
3. `db: Add migration for payment transactions table`
4. `test: Add tests for PaymentService component`
5. `security: Add encryption for payment data closes #156`
6. `docs: Add payment integration guide for developers`