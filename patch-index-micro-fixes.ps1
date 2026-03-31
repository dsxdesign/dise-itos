$file = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos\index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Make KHRYSOS hero TM white
$content = $content.Replace(
    '<span class="sh-gold">KHRYSOS</span><span class="text-gold">™</span><br>',
    '<span class="sh-gold">KHRYSOS</span><span style="color: var(--pure-white); -webkit-text-fill-color: var(--pure-white);">™</span><br>'
)

# Make KRYSTAL section TM white
$content = $content.Replace(
    '<span class="sh-ice">KRYSTAL</span><span style="background: linear-gradient(135deg, #e0f7ff 0%, #a8d8ff 50%, #ffffff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    '<span class="sh-ice">KRYSTAL</span><span style="color: var(--pure-white); -webkit-text-fill-color: var(--pure-white);">™</span>'
)

# Normalize Colección 2026 heading scale
$content = $content.Replace(
    '<h2 class="font-display leading-none" style="font-size: clamp(2.5rem, 6vw, 5rem);">Colección<br>2026</h2>',
    '<h2 class="font-display leading-none" style="font-size: clamp(2.2rem, 4.8vw, 4rem); line-height: .92; letter-spacing: -0.02em;">Colección<br>2026</h2>'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html micro-fixes applied" -ForegroundColor Green