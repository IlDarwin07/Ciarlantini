$ErrorActionPreference = "Stop"
$dir = Join-Path $PSScriptRoot "img"
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$photos = [ordered]@{
  "cakes" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9Q5zOXwrMKtMXOykm6D_QF2g_FtAYcyv7AaBsr0t5hY9woIayJDPS4MD0Ten_YudiSpTwSRz4of6ZWgeSQJTcMusJLXar5NpOGJz8RhZmwA3Yf6HwRFvnr-Z7HYMqro4ZNpHY6_Vw=s1600"
  "cannoli" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9Qzg_oP7dYDg9Im6cT-WpRM-zoDttX9780aKuEhZqbqdIshVw9mIEH7N9zu-49L0WqOpDqPR1UETgHzql5gh40VX0lDGWcducUMpGm_2xRQs_xz6n5Iz_dO0mNFZvIduRHmXfLbuw=s1600"
  "coffee-cornetto" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9SzXUyiq3A6JlAoalWgLiGcprF8bD6uybPIci7_dibgh0YIT7DJkhC8AovnAZdnWGiy0nBLtUm5OEdW6_NXxSruedaUjLvmH2UoJvfpMcvdFa1D_tadAP7UZwTMcvq2eki_d2bLIXu8P2VB=s1600"
  "interior" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9T18yahXPwtesbQledOZNjAv5uYXpMTMLkc318qT5Ukg2oSSag_atx4rStE4eQdcCw9fCYOWQPeDkMU-nDCCGicUIrodg5paiKZTHT_vLqzVZ3MvMBE9ESPTZaKvPnW-AcgptpHj8-PB9oJ=s1600"
  "pastry-counter" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9SeRlnxxqDXJMk55XnmKrMm5938Ua2Wq12QEUZuPBL6JCCZAG2NThGATSVCsvafMbU3fodWEiMc04hiVqvnLXZ2NaApcaA_v2UwOhU9XdpJjvCo-Txd18cmkmq1zoUc1syFxvAxSy--47hN=s1600"
  "shopfront" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9RwfHwcz1tMw776Gw0zuMbjjvpjRIuZIkB86pKjl3Z3nr407A0O9IJHju9xAC9c6QB6zriDpadRNi_PJYCFuzmw_7AY3QM2By1Rmu5RuaESxvYNuO9jDpe_ONlSNl1iBi6SrsqdoQ=s1600"
  "street" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9T8PG_-f_PwusckpjsuAVUSLcmFPHlQkmGgX0JULq1mQ_OVctXN-dqrYcvdNcmJ-FrYcpKKX8zDZMmwHKlHhK3I1Ba4rhX-Qfox7iAtpeySzoH2puE0p7hllUu-rMIniYSdeWMYC6f--5my=s1600"
  "tiramisu" = "https://lh3.googleusercontent.com/gps-cs-s/ANWiy9RxN9DXJ0lu-cb-vwjszoHxCzcZ6aWN-bEPO-bFoUa4n0JaOXKMa3ieteOJNvhBKWYxDYcq8FszGf4BPL2PztoabLJZPsCYlUgm5SurILYK2AAfZ_AzICGenXgzg9QwZ2VJIQ5Q=s1600"
}
foreach ($name in $photos.Keys) {
  $out = Join-Path $dir "$name.jpg"
  Write-Host "Scarico $name.jpg ..."
  Invoke-WebRequest -Uri $photos[$name] -OutFile $out -UseBasicParsing
}
Write-Host "Fatto: $($photos.Count) foto in $dir"
