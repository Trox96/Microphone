# Microphone
 bat файл который сбрасывает настройки микрофона на пк

Откройте блокнот и введите следующий код:
powershell
Copy code
$vol = 40
$vol = $vol / 100
$device = Get-AudioDevice -Playback
$device.AudioEndpointVolume.MasterVolumeLevelScalar = $vol
Сохраните файл с расширением ".ps1" (например, "set_mic_volume.ps1") в удобном для вас месте.

Чтобы запустить скрипт при загрузке Windows, необходимо создать задачу планировщика:

Нажмите на кнопку "Пуск" и введите "Планировщик задач" в строке поиска.

Нажмите правой кнопкой мыши на "Планировщик задач" и выберите "Создать задачу".

Вкладка "Общие": задайте имя задачи (например, "Set Mic Volume"), выберите "Выполнять независимо от того, вошел ли пользователь в систему", и выберите версию операционной системы.

Вкладка "Триггер": нажмите "Новый", выберите "При входе в систему" в качестве типа триггера, и нажмите "ОК".

Вкладка "Действие": нажмите "Новый", выберите "Начать программу" в качестве типа действия, и укажите путь к файлу скрипта.

Нажмите "ОК", чтобы сохранить задачу.

Теперь, когда вы загрузите Windows, скрипт будет автоматически выполняться и установит уровень громкости микрофона на 40%. Обратите внимание, что для запуска скрипта требуются права администратора.



