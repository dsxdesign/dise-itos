$dir = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos"

# ---------- khrysos-catalogo.html ----------
$file = Join-Path $dir "khrysos-catalogo.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Reduce dead top space and bring hero into the frame earlier
$content = $content.Replace(
    '<header class="catalog-header grid-visual flex flex-col justify-end px-6 lg:px-12 pb-16 lg:pb-20 pt-24 lg:pt-28" style="min-height: 88vh;">',
    '<header class="catalog-header grid-visual flex flex-col justify-between px-6 lg:px-12 pt-20 lg:pt-24 pb-10 lg:pb-12" style="min-height: 78vh;">'
)

# Give the content block a deliberate top offset instead of bottom anchoring
$content = $content.Replace(
    '<div class="relative z-10" style="max-width: 52rem;">',
    '<div class="relative z-10" style="max-width: 52rem; margin-top: auto; padding-top: 6vh;">'
)

# Tighten the distance to metadata and marquee
$content = $content.Replace(
    '<p class="mt-5 mono text-xs uppercase tracking-widest" style="color: rgba(255,255,255,0.26); line-height: 1.8;">',
    '<p class="mt-4 mono text-xs uppercase tracking-widest" style="color: rgba(255,255,255,0.26); line-height: 1.8;">'
)

$content = $content.Replace(
    '<div class="marquee-container mt-12 py-3 border-t" style="border-color: rgba(255,255,255,0.08);">',
    '<div class="marquee-container mt-8 py-3 border-t" style="border-color: rgba(255,255,255,0.08);">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-catalogo.html" -ForegroundColor Green


# ---------- khrysos-estudio.html ----------
$file = Join-Path $dir "khrysos-estudio.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Keep presence but remove bottom-heavy feel
$content = $content.Replace(
    '<section class="relative grid-visual" style="min-height: 100vh; display: flex; align-items: flex-end; overflow: hidden;">',
    '<section class="relative grid-visual" style="min-height: 86vh; display: flex; align-items: center; overflow: hidden;">'
)

# Pull content upward into the active field
$content = $content.Replace(
    '<div class="relative z-10 px-8 lg:px-20 pb-24 lg:pb-28 pt-28 lg:pt-32" style="max-width: 78rem;">',
    '<div class="relative z-10 px-8 lg:px-20 pt-24 lg:pt-28 pb-20 lg:pb-22" style="max-width: 78rem; width: 100%;">'
)

# Tighten the support cluster under the title
$content = $content.Replace(
    '<div class="flex flex-col lg:flex-row lg:items-end gap-6 lg:gap-10 mt-6">',
    '<div class="flex flex-col lg:flex-row lg:items-end gap-5 lg:gap-8 mt-5">'
)

# Slightly reduce the metadata column footprint
$content = $content.Replace(
    '<div class="fade-up stagger-4 flex flex-col gap-3 lg:ml-auto" style="min-width: 16rem;">',
    '<div class="fade-up stagger-4 flex flex-col gap-3 lg:ml-auto" style="min-width: 14rem;">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-estudio.html" -ForegroundColor Green

Write-Host ""
Write-Host "Vertical space rebalance applied." -ForegroundColor Yellow