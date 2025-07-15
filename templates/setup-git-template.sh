#!/bin/bash

# Git Commit Template Setup Script
# This script configures Git to use the commit message template

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "ℹ️  $1"
}

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    print_error "This is not a Git repository. Please run this script from within a Git repository."
    exit 1
fi

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_FILE="$SCRIPT_DIR/.gitmessage"

# Check if template file exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    print_error "Template file not found: $TEMPLATE_FILE"
    exit 1
fi

echo "🚀 Setting up Git commit template..."
echo

# Copy template to project root
PROJECT_ROOT="$(git rev-parse --show-toplevel)"
cp "$TEMPLATE_FILE" "$PROJECT_ROOT/.gitmessage"
print_success "Copied .gitmessage template to project root"

# Configure Git to use the template
git config commit.template .gitmessage
print_success "Configured Git to use commit template"

# Ask user about editor preference
echo
print_info "Choose your preferred commit editor:"
echo "1) VS Code (code --wait)"
echo "2) Vim"
echo "3) Nano"
echo "4) Skip editor configuration"
echo

read -p "Enter your choice (1-4): " editor_choice

case $editor_choice in
    1)
        if command -v code &> /dev/null; then
            git config core.editor "code --wait"
            print_success "Set editor to VS Code"
        else
            print_warning "VS Code not found. Skipping editor configuration."
        fi
        ;;
    2)
        git config core.editor "vim"
        print_success "Set editor to Vim"
        ;;
    3)
        git config core.editor "nano"
        print_success "Set editor to Nano"
        ;;
    4)
        print_info "Skipped editor configuration"
        ;;
    *)
        print_warning "Invalid choice. Skipped editor configuration."
        ;;
esac

echo
print_success "Git commit template setup complete!"
echo
print_info "Now when you run 'git commit', you'll see the template with:"
echo "  • Commit format guidelines"
echo "  • Character limits"
echo "  • Available commit types with emojis"
echo "  • Helpful reminders"
echo
print_info "To commit with the template, just run: git commit"
print_info "To bypass the template for a quick commit: git commit -m 'your message'"
echo