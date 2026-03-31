$file = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos\index.html"
$content = Get-Content $file -Raw -Encoding UTF8

if ($content -notmatch '\.sh-gold') {
    $css = @"

        @keyframes shimmer-gold {
            0%   { background-position: -200% center; }
            100% { background-position:  200% center; }
        }

        .sh-gold {
            background: linear-gradient(90deg, #b8860b, #FFD700, #fff1a8, #FFA500, #FFD700, #b8860b);
            background-size: 200% auto;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: shimmer-gold 5s linear infinite;
        }

        .sh-ice {
            background: linear-gradient(90deg, #7fc8ff, #cfeeff, #ffffff, #dff4ff, #a8d8ff, #7fc8ff);
            background-size: 200% auto;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: shimmer-gold 5s linear infinite;
        }
"@

    $content = [regex]::Replace($content, '(?s)</style>', "$css`r`n</style>", 1)
}

$content = $content.Replace(
    'KHRYSOS<span class="text-gold">™</span><br>',
    '<span class="sh-gold">KHRYSOS</span><span class="text-gold">™</span><br>'
)

$content = [regex]::Replace(
    $content,
    'KRYSTAL<span style="display:inline-block; margin-left:0.04em; font-size:0.72em; transform: translateY\(-0.02em\); background: linear-gradient\(135deg, rgba\(224,247,255,0.72\) 0%, rgba\(168,216,255,0.72\) 50%, rgba\(255,255,255,0.72\) 100%\); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    '<span class="sh-ice">KRYSTAL</span><span style="background: linear-gradient(135deg, #e0f7ff 0%, #a8d8ff 50%, #ffffff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    1
)

$content = [regex]::Replace(
    $content,
    'KRYSTAL<span style="background: linear-gradient\(135deg, #e0f7ff 0%, #a8d8ff 50%, #ffffff 100%\); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    '<span class="sh-ice">KRYSTAL</span><span style="background: linear-gradient(135deg, #e0f7ff 0%, #a8d8ff 50%, #ffffff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">™</span>',
    1
)

[System.IO.File]::WriteAllText($file, $content, (New-Object System.Text.UTF8Encoding $true))
Write-Host "[DONE] index.html shimmer fixed" -ForegroundColor Green