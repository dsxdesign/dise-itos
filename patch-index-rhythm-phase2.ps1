$file = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos\index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# =========================
# CUSTOM SECTION HEADLINE
# =========================
# Make the stack less oversized and more composed
$content = $content.Replace(
    '<h2 class="font-display leading-none mb-6" style="font-size: clamp(3rem, 7vw, 6rem);">',
    '<h2 class="font-display leading-none mb-5" style="font-size: clamp(2.7rem, 6.2vw, 5.2rem); line-height: .88; letter-spacing: -0.02em; max-width: 11ch;">'
)

# Reduce body spacing slightly for tighter stack rhythm
$content = $content.Replace(
    '<p class="mb-4 font-light" style="color: rgba(255,255,255,0.68); font-size: 1.1rem; line-height: 1.7;">',
    '<p class="mb-4 font-light" style="color: rgba(255,255,255,0.68); font-size: 1.02rem; line-height: 1.66; max-width: 31rem;">'
)

# Quiet the background marquee text so it stops competing
$content = $content.Replace(
    'color: rgba(255,215,0,0.06);',
    'color: rgba(255,215,0,0.04);'
)

# Soften decorative K on the right
$content = $content.Replace(
    'font-size: 8rem; -webkit-text-stroke: 1px rgba(255,215,0,0.10); color: transparent;',
    'font-size: 6.5rem; -webkit-text-stroke: 1px rgba(255,215,0,0.08); color: transparent;'
)

# =========================
# KRYSTAL SECTION HEADLINE
# =========================
# Tighten the mark and soften its visual break
$content = $content.Replace(
    '<h2 class="font-display leading-none" style="font-size: clamp(3rem, 7vw, 6rem);">',
    '<h2 class="font-display leading-none" style="font-size: clamp(3rem, 6.6vw, 5.4rem); line-height: .88; letter-spacing: -0.02em;">'
)

$content = $content.Replace(
    'KRYSTAL<span style="background: linear-gradient(135deg, #e0f7ff 0%, #a8d8ff 50%, #ffffff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    'KRYSTAL<span style="display:inline-block; margin-left:0.04em; font-size:0.72em; transform: translateY(-0.02em); background: linear-gradient(135deg, rgba(224,247,255,0.72) 0%, rgba(168,216,255,0.72) 50%, rgba(255,255,255,0.72) 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>'
)

# Tighten section intro rhythm
$content = $content.Replace(
    '<p class="mt-3 font-light max-w-md" style="color: rgba(255,255,255,0.42); font-size: 0.95rem; line-height: 1.7;">',
    '<p class="mt-3 font-light max-w-md" style="color: rgba(255,255,255,0.42); font-size: 0.95rem; line-height: 1.66;">'
)

# Slightly reduce divider assertiveness
$content = $content.Replace(
    'background: linear-gradient(90deg, transparent, rgba(168,216,255,0.3), transparent);',
    'background: linear-gradient(90deg, transparent, rgba(168,216,255,0.18), transparent);'
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html rhythm phase 2 applied" -ForegroundColor Green