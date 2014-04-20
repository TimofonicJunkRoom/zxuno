sjasmplus 2b500.asm
copy /b ESXMMC.BIN+                   ^
        2b500.bin+                    ^
        ..\firmware.rom+              ^
        leches.rom+                   ^
        mmces3eE.rom+                 ^
        se.rom+                       ^
        48.rom+                       ^
        ManicMiner.rom+               ^
        JetSetWilly.rom+              ^
        LalaPrologue.rom+             ^
        Deathchase.rom+               ^
        MasterChess.rom+              ^
        Backgammon.rom+               ^
        HungryHorace.rom+             ^
        HoraceSpiders.rom+            ^
        Planetoids.rom+               ^
        SpaceRaiders.rom              ^
    roms_29500.bin
cd ..
call  make.bat
cd roms
call promgen -w -spi -p mcs -o tld_zxuno.mcs -s 4096 -u 0 tld_zxuno.bit
srec_cat  tld_zxuno.mcs   -Intel                    ^
          roms_29500.bin  -binary -offset 0x29500   ^
          -o prom.mcs     -Intel                    ^
          -line-length=44                           ^
          -line-termination=nl
srec_cat  tld_zxuno.mcs     -Intel  ^
          -o tld_zxuno.bin  -binary
copy /b tld_zxuno.bin+    ^
        ESXMMC.BIN+       ^
        2b500.bin+        ^
        ..\firmware.rom   ^
    machine.bin
..\GenRom 0 0 0 0 'Machine' machine.bin machine.tap
