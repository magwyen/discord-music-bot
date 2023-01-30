# Discord Youtube Music Bot

Docker hub link = https://hub.docker.com/r/magwyen/redradio
```bash
docker run -it magwyen/redradio
```
Bu komut ile docker image'in içine girip ayarlar yapmamız gerekiyor;<br>
"/root/kur" dizininde;<br>
 <b>setup.sh</b> ile radyo config dosyalarını oluşturuyoruz,<br>
 <b>start.sh</b> ile de radyoyu çalıştırıyoruz.<br>

çalıştırdıktan sonra discord tarafında ki ayarları yapmak için;<br>
https://docs.discord.red/en/stable/bot_application_guide.html <br>

"https://discord.com/developers/applications" yaptığımız ayarlardan sonra bir token üretiyoruz bu ürettiğimiz tokeni<br>
sunucumuza giriyoruz girdikten sonra
```bash
Pick a prefix. A prefix is what you type before a command. Example:
!help
^ The exclamation mark is the prefix in this case.
The prefix can be multiple characters. You will be able to change it later and add more of them.
Choose your prefix:

Prefix>
```
buraya "!" yazdıktan sonra bize bir invite link oluşturuyor bununla discord dahil ediyoruz ve gerekli rolleri veriyoruz.<br>

Bütün ayarları yaptınız ve botu discord ekledikten sonra sunucuda docker image'in arka planda çalışması için;<br>
```bash
docker run  --name redradio -d magwyen/redradio
docker start redradio
```
"docker ps" komutu ile de kontrol edebilirsiniz.
