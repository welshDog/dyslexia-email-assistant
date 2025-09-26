# 📧 Dyslexia-Friendly Email AI Assistant

[💎⚡ SUPPORT THE HYPERFOCUS EMPIRE ⚡💎 – Donation & Sponsorship Portal](https://welshdog.github.io/hyperfocuszone.com-Support-Hub-/)

> Join our Focus Warriors, Elite Agents, and Empire Builders to power next-gen ADHD-friendly tools!

> **Transform email writing with AI designed for neurodivergent minds!** ✨

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/yourusername/dyslexia-email-assistant)
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/yourusername/dyslexia-email-assistant)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)

## 🚀 Quick Deploy (1-Click!)

### **Heroku (Recommended)**
1. Click the "Deploy to Heroku" button above
2. Add your Perplexity API key
3. Click "Deploy app"  
4. Done! Your assistant is live! 🎉

### **GitHub Codespaces (Development)**
1. Click "Open in GitHub Codespaces" 
2. Wait for environment to load
3. Run: `python app/main.py`
4. Click the "Open in Browser" popup

### **Railway (Alternative)**
```bash
git clone https://github.com/yourusername/dyslexia-email-assistant
cd dyslexia-email-assistant
railway login
railway up
```

## 📱 Live Demo
**Try it now:** [https://your-email-assistant.herokuapp.com](https://your-email-assistant.herokuapp.com)

## ✨ Features

### 🤖 **AI-Powered Writing**
- **Perplexity AI integration** with real-time web search
- **Dyslexia-optimized text** (short sentences, simple words)
- **Reading level analysis** with friendly indicators
- **Multiple tone options** (professional, friendly, casual)

### ♿ **Accessibility Champion**
- **OpenDyslexic font** support
- **High contrast themes** (3 options)
- **Adjustable text size** and spacing
- **Keyboard navigation** optimized
- **Screen reader** compatible

### 🎨 **User Experience**
- **Clean interface** with dyslexia-friendly design
- **Real-time preview** of your emails
- **Template library** for common emails
- **Progress indicators** and encouragement

## 🛠️ Installation

### Local Development
```bash
# Clone the repo
git clone https://github.com/yourusername/dyslexia-email-assistant
cd dyslexia-email-assistant

# Install dependencies
pip install -r requirements.txt

# Set up environment
cp .env.example .env
# Add your Perplexity API key to .env

# Run the app
python app/main.py
```

### Environment Variables
```env
SECRET_KEY=your-secret-key-here
PERPLEXITY_API_KEY=your-perplexity-api-key
DEBUG=True
```

## 📁 Project Structure
```
dyslexia-email-assistant/
├── app/
│   ├── main.py              # Flask application
│   ├── ai_writer.py         # AI writing logic
│   ├── email_handler.py     # Email processing
│   ├── templates/           # HTML templates
│   └── static/              # CSS, JS, fonts
├── tests/                   # Test files
├── .github/                 # GitHub workflows
├── docs/                    # Documentation
└── scripts/                 # Setup scripts
```

## 🧪 Testing
```bash
# Run all tests
python -m pytest tests/ -v

# Run with coverage
pytest --cov=app tests/

# Security scan
bandit -r app/
```

## 🚀 Deployment Options

### Heroku (Easy)
1. Fork this repository
2. Connect to Heroku
3. Add environment variables
4. Deploy!

### Docker (Advanced)
```bash
docker build -t email-assistant .
docker run -p 5000:5000 email-assistant
```

### Railway
```bash
railway login
railway up
```

## 🤝 Contributing

We love contributions! Please read our [Contributing Guide](CONTRIBUTING.md).

### Quick Start for Contributors
1. Fork the repo
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Run tests: `pytest`
5. Commit: `git commit -m 'Add amazing feature'`
6. Push: `git push origin feature/amazing-feature`
7. Create a Pull Request

## 🐛 Bug Reports

Found a bug? Please use our [Bug Report Template](.github/ISSUE_TEMPLATE/bug_report.md).

## 💡 Feature Requests

Have an idea? Use our [Feature Request Template](.github/ISSUE_TEMPLATE/feature_request.md).

## 📚 Documentation

- [User Guide](docs/user-guide.md)
- [API Reference](docs/api-reference.md)
- [Deployment Guide](docs/deployment.md)
- [Accessibility Features](docs/accessibility.md)

## ♿ Accessibility

This project is designed with dyslexic users in mind:
- Simple, clear language
- High contrast themes
- Dyslexia-friendly fonts
- Keyboard navigation
- Screen reader support

## 🔒 Security

- Environment variables for API keys
- Input validation and sanitization
- CSRF protection
- Rate limiting
- Security headers

## 📊 Analytics

- Reading level analysis
- Usage statistics
- Performance monitoring
- Error tracking

## 🎯 Roadmap

- [ ] Mobile app version
- [ ] Gmail integration
- [ ] Outlook plugin
- [ ] Voice dictation
- [ ] Multi-language support
- [ ] Collaborative editing

## 🙏 Acknowledgments

- [Perplexity AI](https://perplexity.ai/) for AI capabilities
- [OpenDyslexic](https://opendyslexic.org/) for the font
- The dyslexia community for feedback and testing

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 💖 Support

If this project helps you, please consider:
- ⭐ Starring the repository
- 🐛 Reporting bugs
- 💡 Suggesting features
- 📢 Sharing with others

---

**Made with ❤️ for the neurodivergent community**

*"Email should be easy for everyone!"* ✨
