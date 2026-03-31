$dir = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos"

# ---------- index.html ----------
$file = Join-Path $dir "index.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<div class="absolute bottom-0 left-0 p-8 lg:p-16 max-w-3xl">',
    '<div class="absolute bottom-10 lg:bottom-14 left-0 p-8 lg:p-16 max-w-3xl">'
)

$content = $content.Replace(
    '<p class="mb-8 font-light" style="color: rgba(255,255,255,0.7); font-size: 1.1rem; max-width: 28rem;">',
    '<p class="mb-9 font-light" style="color: rgba(255,255,255,0.7); font-size: 1.1rem; line-height: 1.75; max-width: 32rem;">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html" -ForegroundColor Green


# ---------- khrysos-brand_statement.html ----------
$file = Join-Path $dir "khrysos-brand_statement.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<header class="px-4 py-6 lg:px-6 lg:py-8 grid-bg relative overflow-hidden">',
    '<header class="px-4 py-12 lg:px-6 lg:py-16 grid-bg relative overflow-hidden">'
)

$content = $content.Replace(
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(2.2rem, 6vw, 5rem);">',
    '<h1 class="font-display leading-none fade-up stagger-2" style="font-size: clamp(3.2rem, 7vw, 6.5rem); line-height: .92; max-width: 10ch;">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] khrysos-brand_statement.html" -ForegroundColor Green


# ---------- krystal.html ----------
$file = Join-Path $dir "krystal.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    'min-height:100vh; display:flex; flex-direction:column; justify-content:center; padding:7rem 1.5rem 0; position:relative; overflow:hidden; background:',
    'min-height:100vh; display:flex; flex-direction:column; justify-content:center; padding:6rem 1.5rem 2rem; position:relative; overflow:hidden; background:'
)

$content = $content.Replace(
    'font-size:0.55rem;letter-spacing:0.2em;color:rgba(168,216,255,0.58);margin-bottom:1.5rem;',
    'font-size:0.55rem;letter-spacing:0.2em;color:rgba(168,216,255,0.58);margin-bottom:1rem;'
)

$content = $content.Replace(
    'height:2px;width:80px;background:linear-gradient(90deg,#a8d8ff,transparent);margin:2rem 0;',
    'height:2px;width:80px;background:linear-gradient(90deg,#a8d8ff,transparent);margin:1.5rem 0 1.75rem;'
)

$content = $content.Replace(
    'display:flex; flex-wrap:wrap; gap:0.5rem; margin-bottom:2.5rem;',
    'display:flex; flex-wrap:wrap; gap:0.5rem; margin-bottom:2rem;'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] krystal.html" -ForegroundColor Green


# ---------- schedule.html ----------
$file = Join-Path $dir "schedule.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<div class="max-w-7xl mx-auto px-4 lg:px-8 py-14 lg:py-20 relative z-10">',
    '<div class="max-w-7xl mx-auto px-4 lg:px-8 py-16 lg:py-20 relative z-10">'
)

$content = $content.Replace(
    '<div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-end">',
    '<div class="grid grid-cols-1 lg:grid-cols-12 gap-6 items-end">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] schedule.html" -ForegroundColor Green


# ---------- schedule-mock.html ----------
$file = Join-Path $dir "schedule-mock.html"
$content = Get-Content $file -Raw -Encoding UTF8

$content = $content.Replace(
    '<div class="max-w-7xl mx-auto px-4 lg:px-8 py-14 lg:py-20 relative z-10">',
    '<div class="max-w-7xl mx-auto px-4 lg:px-8 py-16 lg:py-20 relative z-10">'
)

$content = $content.Replace(
    '<div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-end">',
    '<div class="grid grid-cols-1 lg:grid-cols-12 gap-6 items-end">'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] schedule-mock.html" -ForegroundColor Green

Write-Host ""
Write-Host "Hero spacing patch applied." -ForegroundColor Yellow