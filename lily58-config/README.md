Currently there's an issue where the two halves are unable to Communicate via the TRRS. So I am flashing the bothe halves independently with to seperate firmware
by changing the `#define MASTER_RIGHT` to `#define MASTER_LEFT` in config.h file

### Setup QMK locally on Linux

to build the .hex file follow these instruction first [https://docs.qmk.fm/newbs_getting_started]

building the files is kinda Jank cause idk how to setup QMK correctly.

#### For left side

Copy everthing to the custome folder within the qmk_firmware first
`cp -r /home/wicked/dotfiles/lily58-config/right ~/qmk_firmware/keyboards/lily58/keymaps/custom`

and then run `qmk compile -kb lily58/rev1 -km custom`

If custome folder already exists then you might want to delete that first.

After the Hex file is generated, get that from the .build folder and paste it in this folder

#### For Right side