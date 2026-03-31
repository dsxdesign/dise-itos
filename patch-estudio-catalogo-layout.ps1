$dir = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos"

# ---------- khrysos-estudio.html ----------
$file = Join-Path $dir "khrysos-estudio.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<section class="relative grid-visual" style="min-height: 90vh; display: flex; align-items: flex-end; overflow: hidden;">',
    '<section class="relative grid-visual" style="min-height: 100vh; display: flex; align-items: flex-end; overflow: hidden;">'
)

$content = $content.Replace(
    '<div class="relative z-10 px-8 lg:px-20 pb-16 pt-24">',
    '<div class="relative z-10 px-8 lg:px-20 pb-24 lg:pb-28 pt-28 lg:pt-32" style="max-width: 78rem;">'
)

$content = $content.Replace(
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(4rem, 12vw, 11rem);">',
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(4.8rem, 11vw, 9.5rem); line-height: .84; letter-spacing: -0.02em;">'
)

$content = $content.Replace(
    '<div class="flex flex-col lg:flex-row lg:items-end gap-8 mt-8">',
    '<div class="flex flex-col lg:flex-row lg:items-end gap-6 lg:gap-10 mt-6">'
)

$content = $content.Replace(
    '<div class="max-w-lg fade-up stagger-3">',
    '<div class="max-w-xl fade-up stagger-3">'
)

$content = $content.Replace(
    'style="color: rgba(255,255,255,0.7); font-size: 1.1rem; line-height: 1.8;"',
    'style="color: rgba(255,255,255,0.72); font-size: 1.05rem; line-height: 1.68; max-width: 34rem;"'
)

$content = $content.Replace(
    '<div class="fade-up stagger-4 flex flex-col gap-3 lg:ml-auto">',
    '<div class="fade-up stagger-4 flex flex-col gap-3 lg:ml-auto" style="min-width: 16rem;">'
)

$content = $content.Replace(
    'style="color: rgba(255,255,255,0.25);"',
    'style="color: rgba(255,255,255,0.22); line-height: 1.85;"'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-estudio.html" -ForegroundColor Green


# ---------- khrysos-catalogo.html ----------
$file = Join-Path $dir "khrysos-catalogo.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<header class="catalog-header grid-visual flex flex-col justify-end px-6 lg:px-12 pb-10 pt-16">',
    '<header class="catalog-header grid-visual flex flex-col justify-end px-6 lg:px-12 pb-16 lg:pb-20 pt-24 lg:pt-28" style="min-height: 88vh;">'
)

$content = $content.Replace(
    '<div class="relative z-10">',
    '<div class="relative z-10" style="max-width: 52rem;">'
)

$content = $content.Replace(
    '<h1 class="font-display leading-none" style="font-size: clamp(3rem, 9vw, 8rem);">',
    '<h1 class="font-display leading-none" style="font-size: clamp(4.6rem, 10vw, 8.5rem); line-height: .84; letter-spacing: -0.02em;">'
)

$content = $content.Replace(
    '<span class="section-num">00 — CATÁLOGO COMPLETO</span>',
    '<span class="section-num" style="margin-bottom: 1rem;">00 — CATÁLOGO COMPLETO</span>'
)

$content = $content.Replace(
    '<p class="mt-4 mono text-xs uppercase tracking-widest" style="color: rgba(255,255,255,0.3);">',
    '<p class="mt-5 mono text-xs uppercase tracking-widest" style="color: rgba(255,255,255,0.26); line-height: 1.8;">'
)

$content = $content.Replace(
    '<div class="marquee-container mt-8 py-3 border-t" style="border-color: rgba(255,255,255,0.08);">',
    '<div class="marquee-container mt-12 py-3 border-t" style="border-color: rgba(255,255,255,0.08);">'
)

$content = $content.Replace(
    'style="font-size: 20vw; color: transparent; -webkit-text-stroke: 1px rgba(255,215,0,0.07);"',
    'style="font-size: 18vw; color: transparent; -webkit-text-stroke: 1px rgba(255,215,0,0.05);"'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-catalogo.html" -ForegroundColor Green

Write-Host ""
Write-Host "Estudio + catálogo layout patch applied." -ForegroundColor Yellow