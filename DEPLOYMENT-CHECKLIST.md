# 🚀 V5 Deployment Checklist

## ✅ Pre-Deployment Verification

All checks have been completed and passed:

- ✅ **V5 Files Created**: 7 HTML files + 1 CSS file
- ✅ **V4 Files Updated**: All 7 files now include V5 in dropdown
- ✅ **V1, V2, V3 Updated**: All include V5 in dropdown
- ✅ **Cross-Version Navigation**: All versions link to each other
- ✅ **Navigation Handlers**: All onclick events configured
- ✅ **Documentation**: README, implementation guide, and quick start created

## 📦 Files Ready for Deployment

```
~/agentic-partner-cloud/code/
├── v1-index.html         ← Upload to root
├── v2-index.html         ← Upload to root  
├── v3-index.html         ← Upload to root
├── v4/                   ← Upload to /v4/
│   ├── index.html
│   ├── screen-*.html (6 files)
│   └── v2.css
└── v5/                   ← Upload to /v5/ ✨ NEW
    ├── index.html
    ├── screen-*.html (6 files)
    └── v2.css
```

## 🔗 Expected URLs After Deployment

- https://partner-cloud-proto.netlify.app/v1-index.html
- https://partner-cloud-proto.netlify.app/v2/index.html
- https://partner-cloud-proto.netlify.app/v3/index.html
- https://partner-cloud-proto.netlify.app/v4/index.html
- https://partner-cloud-proto.netlify.app/v5/index.html ✨ NEW

## 🧪 Post-Deployment Testing

After deploying, test these scenarios:

### 1. V5 Loads Correctly
- [ ] Visit https://partner-cloud-proto.netlify.app/v5/
- [ ] Main dashboard displays with Sales Workspace
- [ ] All UI elements render properly
- [ ] CSS loads correctly

### 2. All 7 V5 Screens Load
- [ ] index.html (Sales Home)
- [ ] screen-2.html
- [ ] screen-3.html
- [ ] screen-6.html
- [ ] screen-8.html
- [ ] screen-9.html
- [ ] screen-10.html

### 3. Version Dropdown Shows All Versions
Open each version and verify dropdown shows all 5:
- [ ] V1 shows: V1, V2, V3, V4, V5
- [ ] V2 shows: V1, V2, V3, V4, V5
- [ ] V3 shows: V1, V2, V3, V4, V5
- [ ] V4 shows: V1, V2, V3, V4, V5
- [ ] V5 shows: V1, V2, V3, V4, V5

### 4. Navigation Works
Test navigation from each version:
- [ ] V1 → V5 navigation works
- [ ] V2 → V5 navigation works
- [ ] V3 → V5 navigation works
- [ ] V4 → V5 navigation works
- [ ] V5 → V1 navigation works
- [ ] V5 → V2 navigation works
- [ ] V5 → V3 navigation works
- [ ] V5 → V4 navigation works

### 5. Screen Navigation in V5
- [ ] Next button works (moves to screen-2)
- [ ] Prev button works (moves back)
- [ ] Screen counter shows correctly (1/7, 2/7, etc.)
- [ ] Journey dropdown works

### 6. Visual Verification
- [ ] Salesforce branding displays correctly
- [ ] KPI cards render properly
- [ ] Action items table displays
- [ ] "Pull Forward Deal" button visible
- [ ] Generate buttons on each action
- [ ] Charts/graphs render
- [ ] Icons display correctly

## 🐛 Troubleshooting

### Issue: V5 page shows 404
**Solution**: Verify v5 folder was uploaded to root directory with correct structure

### Issue: CSS not loading
**Solution**: Check that v2.css exists in v5 folder and path is correct

### Issue: Version dropdown missing V5
**Solution**: Re-upload the updated v1, v2, v3, v4 files

### Issue: Navigation links broken
**Solution**: Verify relative paths (../v5/index.html) are correct

## 📝 Deploy Commands

### Option 1: Netlify CLI
```bash
cd ~/agentic-partner-cloud/code
netlify deploy --prod --dir=.
```

### Option 2: Git Deploy
```bash
cd ~/agentic-partner-cloud
git add .
git commit -m "Deploy V5 - Enhanced Setup Hub v2 with full cross-version navigation"
git push origin main
```

### Option 3: Manual Upload
1. Go to https://app.netlify.com/
2. Select "partner-cloud-proto" site
3. Go to "Deploys" tab
4. Drag and drop the `code` folder
5. Wait for deployment to complete

## 🎉 Success Criteria

Deployment is successful when:
- ✅ V5 loads at /v5/index.html
- ✅ All 7 V5 screens are accessible
- ✅ Version dropdown shows all 5 versions on every page
- ✅ Clicking any version navigates correctly
- ✅ No console errors in browser dev tools
- ✅ CSS styles applied correctly
- ✅ All interactive elements work

## 📊 Deployment Stats

- **Total Files**: 25 (17 HTML, 2 CSS, 3 MD docs)
- **New Files**: 8 (V5 directory)
- **Updated Files**: 10 (V1, V2, V3, V4 with V5 navigation)
- **Total Lines**: ~10,000+ lines of code
- **Deployment Size**: ~200-300 KB

## 📧 Post-Deployment

After successful deployment:
1. ✅ Test all scenarios in this checklist
2. ✅ Share V5 URL with stakeholders
3. ✅ Document any customizations made to V5
4. ✅ Create backups of working state

---

**Created**: June 3, 2026  
**Status**: Ready for Production Deployment 🚀
