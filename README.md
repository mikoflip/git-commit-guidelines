# Git Commit Guidelines

A comprehensive guide to writing consistent, meaningful git commit messages that improve code collaboration and project history.

## 🚀 Why Use Standardized Commit Messages?

- **Clear History**: Easy to understand what changed and why
- **Better Collaboration**: Team members can quickly grasp changes
- **Automated Tools**: Enable automated changelog generation and semantic versioning
- **Faster Reviews**: Reviewers can understand changes at a glance
- **Better Debugging**: Easier to track down when issues were introduced

## 📖 Quick Start

### Most Common Patterns
```bash
🚀 feat: Add user authentication
🐛 fix: Update LoginForm to fix validation error
📝 docs: Update API documentation
✅ test: Add tests for PaymentService
♻️ refactor: Update UserService for better performance
```

### Format
```
<emoji> <scope>[!]: <description>

[Optional <body>: explain the what and why]

[Optional <footer>: describe breaking changes and link issues]
```

**Note:** Use `!` after scope for breaking changes (e.g., `feat!:`). Always include `BREAKING:` in footer when using `!`.

## 🌟 Examples in the Wild

Real commits using these guidelines:
```bash
🚀 feat: Add OAuth integration for GitHub login
🚀 feat!: Remove deprecated API endpoints BREAKING: Remove /v1/users endpoint
🐛 fix: Update UserService to handle null email addresses
📝 docs: Add deployment guide for AWS environments  
✅ test: Add integration tests for payment workflow
♻️ refactor: Update database queries for better performance
🔒 security: Update JWT validation to prevent replay attacks
```

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

## 🎯 Quick Reference Tables

### Project Management
| Focus                | Add                                                 | Update                                                 | Remove                                                 |
|----------------------|-----------------------------------------------------|--------------------------------------------------------|--------------------------------------------------------|
| **Features**         | 🚀 `feat:` Add \<feature>                           | 🚀 `feat:` Update \<feature> for \<benefits>           | 🚀 `feat:` Remove \<feature>                           |
| **Breaking Changes** | 🚀 `feat!:` Add \<feature> BREAKING: \<description> | 🚀 `feat!:` Update \<feature> BREAKING: \<description> | 🚀 `feat!:` Remove \<feature> BREAKING: \<description> |
| **Releases**         | 🏷️ `release:` Add \<feature>                       | 🏷️ `release:` Update to \<release>                    | -                                                      |

### Implementation
| Focus            | Add                                  | Update                                 | Remove                         |
|------------------|--------------------------------------|----------------------------------------|--------------------------------|
| **Components**   | 🚀 `feat:` Add \<component>          | 🚀 `feat:` Update \<component>         | 🚀 `feat:` Remove \<component> |
| **Tests**        | ✅ `test:` Add tests for \<component> | ✅ `test:` Update tests                 | ✅ `test:` Remove tests         |
| **Dependencies** | 📦 `deps:` Add \<dep>                | 📦 `deps:` Update \<dep> to \<version> | 📦 `deps:` Remove \<dep>       |

### Bug Fixes
| Focus        | Update                                              |
|--------------|-----------------------------------------------------|
| **Bugfixes** | 🐛 `fix:` Update \<component> to fix \<issue>       |
| **Hotfixes** | 🔥 `hotfix:` Update \<component> to hotfix \<issue> |

[See complete guidelines](./git-commit-guidelines.md) for all categories and examples.

## 🛠️ Installation

### 1. Set Up Commit Message Template
```bash
# Copy the template to your project
cp templates/.gitmessage .gitmessage

# Configure git to use it
git config commit.template .gitmessage
```

### 2. Automated Setup (Recommended)
```bash
# Run the setup script
chmod +x templates/setup-git-template.sh
./templates/setup-git-template.sh
```

### 3. Manual Configuration
```bash
git config commit.template .gitmessage
git config core.editor "code --wait"  # For VS Code
# git config core.editor "vim"        # For Vim
```

## 📚 Complete Guide

For the full guide with all commit types, examples, and best practices, see:
**[Git Commit Guidelines](./git-commit-guidelines.md)**

## 📁 Repository Structure

```
git-commit-guidelines/
├── README.md                    # This file
├── git-commit-guidelines.md     # Complete commit guidelines
├── templates/
│   ├── .gitmessage             # Git commit message template
│   └── setup-git-template.sh   # Quick setup script
└── LICENSE                     # CC BY 4.0 License
```

## 🤝 Contributing

We welcome improvements to this guide! Please:

1. Read the [complete guidelines](./git-commit-guidelines.md) first
2. Open an issue to discuss major changes
3. Follow the commit guidelines in this guide for your contributions

## 📄 License

This work is licensed under [Creative Commons Attribution 4.0 International License](./LICENSE). You're free to use and adapt this guide—just provide attribution when you do!

---

**Start writing better commits today!** 
Check out the [complete guide](./git-commit-guidelines.md) and set up the templates to get started.

## 🤖 Development Transparency

This project was developed through human-AI collaboration with [Claude Code](https://claude.ai/code) by Anthropic. The vision, structure, and decisions were human-driven, while AI collaboration enhanced content organization, documentation quality, and technical implementation to ensure comprehensive coverage and professional presentation.