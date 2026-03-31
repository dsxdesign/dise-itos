$file = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos\index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# =========================
# GLOBAL SECTION RHYTHM
# =========================
$content = $content.Replace(
    '<section class="py-16 px-4 lg:px-8 fade-up">',
    '<section class="py-14 lg:py-16 px-4 lg:px-8 fade-up">'
)

$content = $content.Replace(
    '<section class="py-16 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.1);">',
    '<section class="py-14 lg:py-16 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.08);">'
)

$content = $content.Replace(
    '<section class="py-20 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.1); background: #0d0d0f;">',
    '<section class="py-18 lg:py-20 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.08); background: #0d0d0f;">'
)

$content = $content.Replace(
    '<section id="estudio" class="py-16 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.1); background: var(--industrial);">',
    '<section id="estudio" class="py-14 lg:py-16 px-4 lg:px-8 border-t fade-up" style="border-color: rgba(255,255,255,0.08); background: #111111;">'
)

# =========================
# SECTION HEADER RHYTHM
# =========================
$content = $content.Replace(
    '<div class="flex items-end justify-between mb-8">',
    '<div class="flex items-end justify-between mb-10">'
)

$content = $content.Replace(
    '<div class="flex items-center justify-between mb-8">',
    '<div class="flex items-center justify-between mb-10">'
)

$content = $content.Replace(
    '<div class="flex flex-col lg:flex-row lg:items-end lg:justify-between mb-12 gap-6">',
    '<div class="flex flex-col lg:flex-row lg:items-end lg:justify-between mb-10 gap-6">'
)

# =========================
# HEADING SCALE NORMALIZATION
# =========================
$content = $content.Replace(
    '<h2 class="font-display text-2xl">Nuevas Instalaciones</h2>',
    '<h2 class="font-display leading-none" style="font-size: clamp(2rem, 4vw, 3rem); line-height: .96; letter-spacing: -0.02em;">Nuevas Instalaciones</h2>'
)

$content = $content.Replace(
    '<h2 class="font-display text-2xl">Por Material</h2>',
    '<h2 class="font-display leading-none" style="font-size: clamp(2rem, 4vw, 3rem); line-height: .96; letter-spacing: -0.02em;">Por Material</h2>'
)

$content = $content.Replace(
    '<h2 class="font-display text-2xl">Piezas Esenciales</h2>',
    '<h2 class="font-display leading-none" style="font-size: clamp(2rem, 4vw, 3rem); line-height: .96; letter-spacing: -0.02em;">Piezas Esenciales</h2>'
)

$content = $content.Replace(
    '<h2 class="font-display mb-4" style="font-size: clamp(2rem, 4vw, 3.5rem);">',
    '<h2 class="font-display leading-none mb-5" style="font-size: clamp(2.4rem, 5vw, 4rem); line-height: .94; letter-spacing: -0.02em;">'
)

$content = $content.Replace(
    '<h2 class="font-display mb-4" style="font-size: clamp(1.8rem, 4vw, 3rem);">',
    '<h2 class="font-display leading-none mb-5" style="font-size: clamp(2.2rem, 4.5vw, 3.6rem); line-height: .95; letter-spacing: -0.02em;">'
)

# =========================
# TEXT OPACITY NORMALIZATION
# =========================
$content = $content.Replace('rgba(255,255,255,0.8)', 'rgba(255,255,255,0.88)')
$content = $content.Replace('rgba(255,255,255,0.7)', 'rgba(255,255,255,0.68)')
$content = $content.Replace('rgba(255,255,255,0.65)', 'rgba(255,255,255,0.68)')
$content = $content.Replace('rgba(255,255,255,0.6)', 'rgba(255,255,255,0.68)')
$content = $content.Replace('rgba(255,255,255,0.5)', 'rgba(255,255,255,0.42)')
$content = $content.Replace('rgba(255,255,255,0.45)', 'rgba(255,255,255,0.42)')
$content = $content.Replace('rgba(255,255,255,0.4)', 'rgba(255,255,255,0.42)')
$content = $content.Replace('rgba(255,255,255,0.3)', 'rgba(255,255,255,0.42)')
$content = $content.Replace('rgba(255,255,255,0.25)', 'rgba(255,255,255,0.18)')
$content = $content.Replace('rgba(255,255,255,0.15)', 'rgba(255,255,255,0.18)')

# Gold soft tiers
$content = $content.Replace('rgba(255,215,0,0.5)', 'rgba(255,215,0,0.55)')
$content = $content.Replace('rgba(255,215,0,0.4)', 'rgba(255,215,0,0.55)')
$content = $content.Replace('rgba(255,215,0,0.3)', 'rgba(255,215,0,0.10)')
$content = $content.Replace('rgba(255,215,0,0.2)', 'rgba(255,215,0,0.10)')
$content = $content.Replace('rgba(255,215,0,0.15)', 'rgba(255,215,0,0.10)')
$content = $content.Replace('rgba(255,215,0,0.08)', 'rgba(255,215,0,0.06)')
$content = $content.Replace('rgba(255,215,0,0.07)', 'rgba(255,215,0,0.06)')
$content = $content.Replace('rgba(255,215,0,0.06)', 'rgba(255,215,0,0.06)')
$content = $content.Replace('rgba(255,215,0,0.05)', 'rgba(255,215,0,0.06)')
$content = $content.Replace('rgba(255,215,0,0.04)', 'rgba(255,215,0,0.06)')
$content = $content.Replace('rgba(255,215,0,0.03)', 'rgba(255,215,0,0.06)')

# =========================
# CARD + BORDER CONSISTENCY
# =========================
$content = $content.Replace('border: 1px solid rgba(255,255,255,0.15);', 'border: 1px solid rgba(255,255,255,0.12);')
$content = $content.Replace('border-color: rgba(255,255,255,0.1);', 'border-color: rgba(255,255,255,0.08);')
$content = $content.Replace('border: 1px solid rgba(255,255,255,0.15)', 'border: 1px solid rgba(255,255,255,0.12)')
$content = $content.Replace('border: 1px solid rgba(255,255,255,0.18)', 'border: 1px solid rgba(255,255,255,0.12)')

# =========================
# PRODUCT RAIL DENSITY
# =========================
$content = $content.Replace(
    '<div class="flex gap-4 overflow-x-auto hide-scrollbar pb-4">',
    '<div class="flex gap-5 overflow-x-auto hide-scrollbar pb-4">'
)

# =========================
# KRYSTAL SECTION SOFT INTEGRATION
# =========================
$content = $content.Replace(
    'background: #0d0d0f;',
    'background: #0b0b0d;'
)

$content = $content.Replace(
    '<span class="mono text-xs px-2 py-1" style="background: linear-gradient(135deg, #a8d8ff, #ffffff); color: #0a0a0a; font-size: 0.6rem; font-weight: 700;">KRYSTAL</span>',
    '<span class="mono text-xs px-2 py-1" style="background: linear-gradient(135deg, rgba(168,216,255,0.92), rgba(255,255,255,0.92)); color: #0a0a0a; font-size: 0.6rem; font-weight: 700;">KRYSTAL</span>'
)

$content = $content.Replace(
    'style="color: rgba(168,216,255,0.6);"',
    'style="color: rgba(168,216,255,0.55);"'
)

$content = $content.Replace(
    'style="color: rgba(168,216,255,0.8);"',
    'style="color: rgba(168,216,255,0.72);"'
)

# =========================
# CUSTOM SECTION REBALANCE
# =========================
$content = $content.Replace(
    '<section class="relative flex items-center" style="min-height: 80vh; padding: 6rem 0; background: var(--void-black); overflow: hidden;">',
    '<section class="relative flex items-center" style="min-height: 74vh; padding: 5rem 0; background: var(--void-black); overflow: hidden;">'
)

$content = $content.Replace(
    '<div class="relative z-10 px-8 lg:px-16 max-w-2xl">',
    '<div class="relative z-10 px-8 lg:px-16 max-w-2xl" style="padding-top: 2rem; padding-bottom: 2rem;">'
)

# =========================
# PROCESS SECTION CLEANUP
# =========================
$content = $content.Replace(
    '<div class="lg:pl-8">',
    '<div class="lg:pl-8" style="max-width: 36rem;">'
)

# =========================
# FINAL STUDIO BLOCK QUIETER / MORE IN-SYSTEM
# =========================
$content = $content.Replace(
    '<div class="max-w-4xl mx-auto text-center">',
    '<div class="max-w-4xl mx-auto text-center" style="padding-top: .5rem;">'
)

$content = $content.Replace(
    '<form class="flex flex-col sm:flex-row gap-4 max-w-xl mx-auto mt-8" onsubmit="return false;">',
    '<form class="flex flex-col sm:flex-row gap-4 max-w-xl mx-auto mt-10" onsubmit="return false;">'
)

# =========================
# FOOTER RHYTHM
# =========================
$content = $content.Replace(
    '<footer class="pt-16 pb-8 px-4 lg:px-8 border-t" style="border-color: rgba(255,255,255,0.1);">',
    '<footer class="pt-14 pb-8 px-4 lg:px-8 border-t" style="border-color: rgba(255,255,255,0.08);">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html rhythm phase 1 applied" -ForegroundColor Green