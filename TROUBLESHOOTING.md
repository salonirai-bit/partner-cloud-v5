# Troubleshooting Guide - Styling Issues

## ✅ Current Status (Just Updated)

**Latest Push:** Added cache-busting parameters  
**Timestamp:** 1780526681  
**Commit:** 61ec591

---

## 🔍 What Should You See on Screens 4 & 5:

### Left Side:
```
┌─────────────────────────┐
│ 🔍 [Quick Find]         │ ← Search box
├─────────────────────────┤
│ Setup Home              │
│                         │
│ ADMINISTRATION          │
│ > Users                 │
│ > Data                  │
│ > Email                 │
│                         │
│ PLATFORM TOOLS          │
│ > Apps                  │
│ > Feature Settings      │
│ > Slack                 │
│ > Heroku                │
│ > MuleSoft              │
│ > Einstein              │
│ ┃ Partner Ecosystem...  │ ← Active (blue bar)
└─────────────────────────┘
```

### Top:
```
✨ Configuring Partner Experience    [End Session]
```

### Center:
```
User message: 
    ┌────────────────────────────┐
    │ Help me set up...          │ ← Blue bubble, right-aligned
    └────────────────────────────┘

Agent:
┌─ Agentforce ─────────────────────────────────────┐
│ Let me search...                                 │
│                                                  │
│ 🔍 Searching 'Partner Cloud' in SF  14 sources │
│ 🔍 Searching 'Partner Selling' in SF 12 sources│
└──────────────────────────────────────────────────┘
```

### Bottom:
```
┌─────────────────────────────────────────────────┐
│ Follow up...                                    │
│ ─────────────────────────────────────────       │
│ 📎  🖼️                                          │
└─────────────────────────────────────────────────┘
Connections: ▢SF ▢Data ▢Slack   [Share feedback]
```

---

## ❌ What You Might Currently See (Old Version):

### Issues:
1. **No left sidebar** - just conversation in center
2. **Title says "Partner Selling Setup"** instead of "Configuring Partner Experience"  
3. **No "End Session" button**
4. **Green checkmarks** instead of gray search icons
5. **Different input box** - simple rounded box instead of modern bordered area
6. **Colored dots** instead of connection icons

---

## 🔧 Fix Steps (IN ORDER):

### 1. Wait for GitHub Pages Build (IMPORTANT!)
Check: https://github.com/salonirai-bit/partner-cloud-v5/actions

You should see:
- ✅ Green checkmark = Build complete
- 🟡 Yellow dot = Still building (wait!)
- ❌ Red X = Build failed

**Wait until you see the green checkmark!** (Usually 30-90 seconds)

---

### 2. Clear Browser Cache (MUST DO!)

#### Chrome/Edge:
1. Open the page
2. Press `F12` to open DevTools
3. Right-click the refresh button (⟳)
4. Select **"Empty Cache and Hard Reload"**
5. Close DevTools
6. Press `Cmd+Shift+R` (Mac) or `Ctrl+Shift+R` (Windows)

#### Safari:
1. Press `Cmd+Option+E` to empty caches
2. Press `Cmd+R` to reload

#### Firefox:
1. Press `Cmd+Shift+Delete` (Mac) or `Ctrl+Shift+Delete` (Windows)
2. Select "Cache" and click "Clear Now"
3. Press `Cmd+Shift+R` (Mac) or `Ctrl+Shift+R` (Windows)

---

### 3. Verify the URLs (Copy-Paste These):

**Screen 4:**
```
https://salonirai-bit.github.io/partner-cloud-v5/screen-4.html
```

**Screen 5:**
```
https://salonirai-bit.github.io/partner-cloud-v5/screen-5.html
```

**Home (Navigation):**
```
https://salonirai-bit.github.io/partner-cloud-v5/home.html
```

---

### 4. Test in Incognito/Private Mode

Sometimes cache is stubborn. Try:
- **Chrome/Edge**: `Cmd+Shift+N` (Mac) or `Ctrl+Shift+N` (Windows)
- **Safari**: `Cmd+Shift+N`
- **Firefox**: `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows)

Then paste the URL and see if it loads correctly.

---

## 🐛 Still Not Working? Debug Steps:

### Check 1: Is CSS Loading?
1. Open the page
2. Press `F12` to open DevTools
3. Go to **Network** tab
4. Press `Cmd+R` to reload
5. Look for these files:
   - ✅ `v2.css` (should be ~35KB)
   - ✅ `screen-3-updated.css` (should be ~5KB)

If you see **404 errors**, the files aren't deployed yet.

### Check 2: Inspect the HTML
1. Open DevTools (`F12`)
2. Go to **Elements** tab
3. Press `Cmd+F` (Mac) or `Ctrl+F` (Windows)
4. Search for: `setup-sidebar`

**Should find:** 3 results  
**If 0 results:** You're seeing cached HTML

### Check 3: Check CSS Link
1. View page source (`Cmd+U` or `Ctrl+U`)
2. Look for these lines near the top:
```html
<link rel="stylesheet" href="v2.css?v=1780526681">
<link rel="stylesheet" href="screen-3-updated.css?v=1780526681">
```

**If you see these:** CSS should load  
**If different timestamp or no `?v=`:** Clear cache again

---

## 📊 File Verification Checklist:

Run these commands to verify deployment:

```bash
# Check sidebar HTML exists
curl -s "https://salonirai-bit.github.io/partner-cloud-v5/screen-4.html" | grep -c "setup-sidebar"
# Should output: 3

# Check CSS loads
curl -I "https://salonirai-bit.github.io/partner-cloud-v5/screen-3-updated.css" 2>&1 | grep "HTTP"
# Should output: HTTP/2 200

# Check cache-bust param
curl -s "https://salonirai-bit.github.io/partner-cloud-v5/screen-4.html" | grep "v2.css"
# Should show: ?v=1780526681
```

---

## 🎯 Expected Timeline:

- **0-30 sec:** GitHub receives push
- **30-90 sec:** GitHub Pages builds site
- **90 sec+:** Site is live
- **+ cache clear:** You see new version

**Total time:** ~2-3 minutes from push to seeing changes

---

## 📞 Still Stuck?

1. Share a screenshot of what you're seeing
2. Tell me which browser you're using
3. Check the GitHub Actions page and tell me if build is complete
4. Try the incognito/private browsing test

---

## ✨ Quick Test:

**Right now, try this:**

1. Go to: https://github.com/salonirai-bit/partner-cloud-v5/actions
2. Wait for green checkmark ✅
3. Open in **Incognito/Private** window: https://salonirai-bit.github.io/partner-cloud-v5/screen-4.html
4. Do you see the left sidebar?

If YES → It's a caching issue, clear your regular browser cache  
If NO → Screenshot and show me what you see
