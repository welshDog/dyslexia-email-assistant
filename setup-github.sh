#!/bin/bash

echo "🚀 Setting up GitHub repository for Dyslexia Email Assistant..."

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Check if git is installed
if ! command -v git &> /dev/null; then
    print_error "Git is not installed. Please install Git first."
    exit 1
fi

# Create project structure
print_info "Creating project structure..."

# Main directories
mkdir -p app/{templates,static/{css,js,images,fonts}}
mkdir -p tests
mkdir -p docs
mkdir -p scripts
mkdir -p .github/{workflows,ISSUE_TEMPLATE}

print_status "Created directory structure"

# Create essential files
print_info "Creating essential files..."

# Create .env.example
cat > .env.example << EOL
# 🔐 Environment Variables for Email Assistant
# Copy this file to .env and add your actual values

# Flask Configuration
SECRET_KEY=your-super-secret-key-here
FLASK_ENV=development
DEBUG=True

# AI Service Configuration
PERPLEXITY_API_KEY=your-perplexity-api-key-here

# Database (if using)
DATABASE_URL=postgresql://localhost/email_assistant

# Security Settings
CORS_ORIGINS=http://localhost:3000,http://localhost:5000

# Optional: Email Service (for sending emails)
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
SMTP_USERNAME=your-email@gmail.com
SMTP_PASSWORD=your-app-password
EOL

# Create LICENSE file
cat > LICENSE << EOL
MIT License

Copyright (c) 2025 Dyslexia Email Assistant

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOL

# Create CONTRIBUTING.md
cat > CONTRIBUTING.md << EOL
# 🤝 Contributing to Email Assistant

Thank you for your interest in making email easier for everyone! ✨

## 🎯 Our Mission
We're building an AI email assistant that's **dyslexia-friendly** and **neurodivergent-accessible**. Every contribution should keep this mission in mind.

## 🚀 Quick Start

### 1. Fork & Clone
\`\`\`bash
git clone https://github.com/yourusername/dyslexia-email-assistant
cd dyslexia-email-assistant
\`\`\`

### 2. Set Up Environment
\`\`\`bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\\Scripts\\activate
pip install -r requirements.txt
\`\`\`

### 3. Create .env File
\`\`\`bash
cp .env.example .env
# Add your API keys to .env
\`\`\`

### 4. Run Tests
\`\`\`bash
pytest tests/
\`\`\`

## 📝 Making Changes

### Branch Naming
- **Feature**: \`feature/awesome-new-thing\`
- **Bug Fix**: \`fix/broken-thing\` 
- **Accessibility**: \`a11y/improve-screen-reader\`
- **Documentation**: \`docs/update-readme\`

### Commit Messages
Use clear, descriptive messages:
- ✨ \`feat: add voice-to-text support\`
- 🐛 \`fix: resolve keyboard navigation issue\`
- ♿ \`a11y: improve color contrast ratios\`
- 📚 \`docs: update deployment guide\`

## ♿ Accessibility Guidelines

All contributions MUST consider:
- **Dyslexic users**: Simple language, clear layouts
- **Screen readers**: Proper ARIA labels, semantic HTML
- **Keyboard navigation**: Full functionality without mouse
- **Motor disabilities**: Large click targets, easy navigation
- **Visual impairments**: High contrast, scalable text

## 🧪 Testing Requirements

Before submitting:
- [ ] All existing tests pass
- [ ] New features have tests
- [ ] Accessibility tests pass
- [ ] Manual testing on different devices
- [ ] Screen reader testing (if applicable)

## 📋 Pull Request Checklist

- [ ] Descriptive title and description
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] Accessibility considerations addressed
- [ ] No breaking changes (or clearly marked)
- [ ] Screenshots for UI changes

## 🎨 Code Style

- **Python**: Follow PEP 8, use Black formatter
- **JavaScript**: Use Prettier, ES6+ features
- **HTML**: Semantic, accessible markup
- **CSS**: Mobile-first, dyslexia-friendly styles

## 🐛 Reporting Issues

Use our issue templates:
- [Bug Report](.github/ISSUE_TEMPLATE/bug_report.md)
- [Feature Request](.github/ISSUE_TEMPLATE/feature_request.md)

## 💬 Getting Help

- **GitHub Discussions**: For questions and ideas
- **Issues**: For bugs and feature requests
- **Code Review**: We're here to help and learn together!

## 🌟 Recognition

Contributors are recognized in:
- README.md contributors section
- Release notes for major contributions
- Special thanks in documentation

---

**Remember**: We're building for neurodivergent users. Every line of code should make email easier and more accessible! 💙
EOL

print_status "Created essential files"

# Initialize git repository
print_info "Initializing Git repository..."

git init
git add .
git commit -m "🎉 Initial commit: Dyslexia-friendly Email AI Assistant

✨ Features:
- Complete GitHub repository structure
- Deployment-ready configuration
- Accessibility-first design
- Comprehensive documentation
- Testing and CI/CD setup

♿ Built for neurodivergent users with love 💙"

print_status "Git repository initialized"

# Print next steps
print_info "🎉 Repository setup complete!"
echo ""
print_info "📋 Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Add your repository URL:"
echo "   ${YELLOW}git remote add origin https://github.com/yourusername/dyslexia-email-assistant.git${NC}"
echo "3. Push your code:"
echo "   ${YELLOW}git push -u origin main${NC}"
echo "4. Set up Heroku deployment (optional):"
echo "   ${YELLOW}https://heroku.com/deploy?template=https://github.com/yourusername/dyslexia-email-assistant${NC}"
echo ""
print_status "Ready to make email accessible for everyone! 🚀"

# Optional: Open GitHub in browser (if on macOS/Linux with appropriate tools)
if command -v open &> /dev/null; then
    print_info "Opening GitHub in browser..."
    open "https://github.com/new"
elif command -v xdg-open &> /dev/null; then
    print_info "Opening GitHub in browser..."
    xdg-open "https://github.com/new"
fi

echo ""
print_warning "Don't forget to:"
echo "- Add your Perplexity API key to .env"
echo "- Update the repository URLs in README.md"
echo "- Add GitHub Secrets for deployment"
echo "- Test the application locally first"
echo ""
print_status "Happy coding, BROski! 🚀♾️"