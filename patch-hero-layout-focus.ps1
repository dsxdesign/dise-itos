$dir = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos"

# ---------- index.html ----------
$file = Join-Path $dir "index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Move hero block up and constrain composition
$content = $content.Replace(
    '<div class="absolute bottom-10 lg:bottom-14 left-0 p-8 lg:p-16 max-w-3xl">',
    '<div class="absolute left-0 bottom-20 lg:bottom-24 p-8 lg:p-16" style="max-width: 52rem;">'
)
$content = $content.Replace(
    '<div class="absolute bottom-0 left-0 p-8 lg:p-16 max-w-3xl">',
    '<div class="absolute left-0 bottom-20 lg:bottom-24 p-8 lg:p-16" style="max-width: 52rem;">'
)

# Tighten hero hierarchy without changing words
$content = $content.Replace(
    '<h1 class="font-display leading-none mb-4" style="font-size: clamp(3.5rem, 9vw, 8rem); line-height: 1;">',
    '<h1 class="font-display mb-5" style="font-size: clamp(4.8rem, 10vw, 7.5rem); line-height: .84; letter-spacing: -0.02em;">'
)

# Make the second line subordinate and closer
$content = $content.Replace(
    '<span class="text-stroke" style="font-size: clamp(2rem, 5vw, 5rem);">DENTAL STUDIO</span>',
    '<span class="text-stroke" style="display:block; margin-top:-0.1em; font-size: clamp(1.9rem, 4.4vw, 4rem); line-height: .92; letter-spacing: -0.01em;">DENTAL STUDIO</span>'
)

# Normalize body rhythm only
$content = $content.Replace(
    '<p class="mb-9 font-light" style="color: rgba(255,255,255,0.7); font-size: 1.1rem; line-height: 1.75; max-width: 32rem;">',
    '<p class="mb-10 font-light" style="color: rgba(255,255,255,0.72); font-size: 1.05rem; line-height: 1.68; max-width: 31rem;">'
)
$content = $content.Replace(
    '<p class="mb-8 font-light" style="color: rgba(255,255,255,0.7); font-size: 1.1rem; max-width: 28rem;">',
    '<p class="mb-10 font-light" style="color: rgba(255,255,255,0.72); font-size: 1.05rem; line-height: 1.68; max-width: 31rem;">'
)

# Slightly strengthen eyebrow spacing
$content = $content.Replace(
    '<span class="section-num">CULTURA INSTALADA — EST. 2026</span>',
    '<span class="section-num" style="margin-bottom: 1rem;">CULTURA INSTALADA — EST. 2026</span>'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html" -ForegroundColor Green


# ---------- khrysos-brand_statement.html ----------
$file = Join-Path $dir "khrysos-brand_statement.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Increase editorial breathing room
$content = $content.Replace(
    '<header class="px-4 py-12 lg:px-6 lg:py-16 grid-bg relative overflow-hidden">',
    '<header class="px-4 py-16 lg:px-6 lg:py-20 grid-bg relative overflow-hidden">'
)
$content = $content.Replace(
    '<header class="px-4 py-6 lg:px-6 lg:py-8 grid-bg relative overflow-hidden">',
    '<header class="px-4 py-16 lg:px-6 lg:py-20 grid-bg relative overflow-hidden">'
)

# Constrain inner content to feel like a proper hero column
$content = $content.Replace(
    '<div class="relative z-10">',
    '<div class="relative z-10" style="max-width: 42rem;">'
)

# Align hero size with brand hierarchy
$content = $content.Replace(
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(3.2rem, 7vw, 6.5rem); line-height: .92; max-width: 10ch;">',
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(4.2rem, 8vw, 7rem); line-height: .86; letter-spacing: -0.02em; max-width: 8ch;">'
)
$content = $content.Replace(
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(2.2rem, 6vw, 5rem);">',
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(4.2rem, 8vw, 7rem); line-height: .86; letter-spacing: -0.02em; max-width: 8ch;">'
)

# Give eyebrow better separation
$content = $content.Replace(
    '<span class="ref fade-up stagger-1">ESTUDIO — "La clínica como estudio de diseño" // Santiago</span>',
    '<span class="ref fade-up stagger-1" style="margin-bottom: 1rem;">ESTUDIO — "La clínica como estudio de diseño" // Santiago</span>'
)

# Slightly reduce ghost K visual pressure
$content = $content.Replace(
    'style="font-size: 28vw; opacity: 0.6; transform: translateX(10%);"',
    'style="font-size: 24vw; opacity: 0.32; transform: translateX(8%);"'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-brand_statement.html" -ForegroundColor Green

Write-Host ""
Write-Host "Focused hero layout patch applied." -ForegroundColor Yellow