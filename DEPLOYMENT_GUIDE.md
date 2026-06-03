# Partner Cloud V5 - Deployment Guide

## ✅ Current Status
- Git repository initialized
- All files committed
- Ready for deployment!

---

## 🚀 Option 1: GitHub Pages (Recommended - Free & Easy)

### Step 1: Create GitHub Repository
```bash
# Navigate to your project
cd /Users/saloni.rai/agentic-partner-cloud

# Create a new repository on GitHub.com:
# 1. Go to https://github.com/new
# 2. Name it: partner-cloud-v5
# 3. Make it Public
# 4. Don't initialize with README (we already have files)
# 5. Click "Create repository"
```

### Step 2: Push to GitHub
```bash
# Replace YOUR_USERNAME with your GitHub username
git remote add origin https://github.com/YOUR_USERNAME/partner-cloud-v5.git
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings**
3. Scroll to **Pages** (left sidebar)
4. Under "Source", select **main** branch and **/code/v5** folder
5. Click **Save**

### 🎉 Your Site Will Be Live At:
`https://YOUR_USERNAME.github.io/partner-cloud-v5/`

---

## 🚀 Option 2: Vercel (Easy Deploy with UI)

### Step 1: Go to Vercel
1. Visit https://vercel.com/signup
2. Sign in with GitHub

### Step 2: Import Project
1. Click "New Project"
2. Import your `partner-cloud-v5` repository
3. Set Root Directory to: `code/v5`
4. Click "Deploy"

### 🎉 You'll Get:
- Instant deployment
- Auto-updates on git push
- Custom domain support
- HTTPS by default

---

## 🚀 Option 3: Netlify Drop (Instant - No Account Needed)

### Quickest Option for Testing:
1. Go to https://app.netlify.com/drop
2. Drag and drop the `/Users/saloni.rai/agentic-partner-cloud/code/v5` folder
3. Get instant shareable link!

**Note**: Free accounts give you random URLs, paid accounts allow custom domains.

---

## 📱 Quick Local Preview

To test locally before deploying:
```bash
cd /Users/saloni.rai/agentic-partner-cloud/code/v5
python3 -m http.server 8000
```

Then open: http://localhost:8000/home.html

---

## 🎯 Navigation

After deployment, visitors can access:
- **Landing Page**: `/home.html` - Overview of all screens
- **Screen 3**: `/screen-3.html` - Setup landing
- **Screen 4**: `/screen-4.html` - Features discovery
- **Screen 5**: `/screen-5.html` - Loyalty setup
- **Screens 6-10**: Other workflow screens

---

## 🔧 Files Already Configured

✅ `vercel.json` - Vercel configuration
✅ `.vercelignore` - Ignore unnecessary files
✅ `home.html` - Beautiful landing page with all screens
✅ Git repository initialized and committed

---

## 💡 Tips

1. **Custom Domain**: Most services let you add a custom domain
2. **Auto-Deploy**: GitHub Pages/Vercel auto-deploy on git push
3. **Analytics**: Add Google Analytics or Vercel Analytics later
4. **Password Protection**: Vercel Pro allows password-protected previews

---

## Need Help?

Run any of these commands for help:
- `gh repo create` (if you have GitHub CLI)
- `vercel login` then `vercel` (for Vercel)
- `netlify deploy` (for Netlify)
