# Partner Cloud V5 - Share Instructions

## 🌐 Your Code is Here:
**GitHub Repository:** https://github.com/saloni-rai_sfemu/partner-cloud-v5

---

## 🚀 Easy Sharing Options (No Credits Needed!)

### Option 1: Cloudflare Pages (FREE - Recommended)

1. **Go to:** https://pages.cloudflare.com/
2. **Sign up** with your email (free)
3. **Connect to Git** and select `partner-cloud-v5` repo
4. **Build settings:**
   - Build command: (leave empty)
   - Build output directory: `code/v5`
5. **Deploy!**

You'll get: `https://partner-cloud-v5.pages.dev`

---

### Option 2: Render (FREE Static Site)

1. **Go to:** https://render.com/
2. **Sign up** (free)
3. **New** → **Static Site**
4. Connect GitHub: `partner-cloud-v5`
5. **Build settings:**
   - Build Command: (leave empty)
   - Publish Directory: `code/v5`
6. **Create Static Site**

You'll get: `https://partner-cloud-v5.onrender.com`

---

### Option 3: Local Share with LocalTunnel (Instant!)

Run this in your terminal:

```bash
# Install localtunnel (one-time)
npm install -g localtunnel

# Start your server
cd /Users/saloni.rai/agentic-partner-cloud/code/v5
python3 -m http.server 8000 &

# Create public tunnel
lt --port 8000 --subdomain partnercloud
```

You'll get: `https://partnercloud.loca.lt`

---

### Option 4: Replit (Deploy with One Click)

1. **Go to:** https://replit.com/
2. **Import from GitHub**
3. Select `partner-cloud-v5`
4. Click **Run**
5. Share the URL from the webview!

---

## 🔧 Quick Local Preview

```bash
cd /Users/saloni.rai/agentic-partner-cloud/code/v5
python3 -m http.server 8000
```

Open: http://localhost:8000/home.html

---

## 📂 Files Structure

- `home.html` - Navigation landing page
- `screen-3.html` - Setup landing
- `screen-4.html` - Features discovery  
- `screen-5.html` - Loyalty setup
- `screen-6.html` through `screen-10.html` - Other screens
- `v2.css` - Main styles
- `screen-3-updated.css` - Figma-aligned updates

---

## ✨ What's New

✅ Left sidebar navigation matching Figma design
✅ Updated typography and colors
✅ Modern input styling with gradient footer
✅ Connections bar with icon badges
✅ Hidden scrollbars for cleaner UI
✅ "End Session" button in title bar

All changes follow the Figma design specifications!
