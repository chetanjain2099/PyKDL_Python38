
all:
	@$(MAKE) -C sipgen
	@$(MAKE) -C siplib

install:
	@$(MAKE) -C sipgen install
	@$(MAKE) -C siplib install
	@if not exist C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages mkdir C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages
	copy /y sipconfig.py C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages\sipconfig.py
	copy /y C:\Users\cheta\Documents\zephyr3\Python38\setup\Modules\sip-4.18.1\sipdistutils.py C:\Users\cheta\Documents\zephyr3\Python38\win64\Lib\site-packages\sipdistutils.py

clean:
	@$(MAKE) -C sipgen clean
	@$(MAKE) -C siplib clean
