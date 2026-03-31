$file = "C:\Users\aiamd\Desktop\KHRISOS website\dise-itos\index.html"
$raw = Get-Content $file -Raw -Encoding UTF8

$patterns = @(
    '(?is)<section class="relative grid-visual".*?</section>',
    '(?is)<section class="py-14 lg:py-16 px-4 lg:px-8 fade-up">.*?</section>',
    '(?is)<section class="py-18 lg:py-20 px-4 lg:px-8 border-t fade-up".*?</section>',
    '(?is)<section class="relative flex items-center".*?</section>',
    '(?is)<section id="estudio".*?</section>',
    '(?is)<footer\b.*?</footer>'
)

$out = ""
$i = 1
foreach ($p in $patterns) {
    $m = [regex]::Match($raw, $p)
    if ($m.Success) {
        $out += "===== TARGET $i =====`r`n"
        $out += $m.Value.Substring(0, [Math]::Min(9000, $m.Value.Length))
        $out += "`r`n`r`n"
        $i++
    }
}

$out | Set-Clipboard
Write-Host "Index final polish targets copied to clipboard." -ForegroundColor Green