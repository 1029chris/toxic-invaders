pico-8 cartridge // http://www.pico-8.com
version 34
__lua__
#include objects.lua
#include particles.lua
#include players.lua
#include enemies.lua
#include bullets.lua
#include pickups.lua
#include waves.lua

function _update60()
#include update.lua
end

function _draw()
#include background.lua
#include draw.lua
end
__gfx__
0000000000000000000000000000000000bbbb00d555555d00000000000000000000000000000000000000000000000000000000003bb3000000000000000000
000000000000000000000000000000000b7777b055588555000000000000000000000000000000000000000073bb33000000000003bbbbb3b900b33900000000
007007000000000000000000000bb000b77b777b5558855500000000000000000000000000000000000000000b33bbb973bbb300bbb333333bbb000000000000
0007700000000000000bb00000b77b00b77bbb7b588888850000000000000000000000000000000000000000b3bbbbb9b3bb3b397b3bbbbbb3b3b90000000000
0007700000000000000bb00000b77b00b7bbb77b522882250000000000000000000000000000000000000000b3bb3b30b3bbbbb97b3bbbbbb3b3b90000000000
007007000000000000000000000bb000b777b77b555885550000000000000000000000000000000000000000b3bbbbb90b33bbb9bbb333333bbb000000000000
000000000000000000000000000000000b7777b05552255500000000000000000000000000000000000000000b33bbb973bb330003bbbbb3b900b33900000000
0000000000000000000000000000000000bbbb00d555555d000000000000000000000000000000000000000073bb330000000000003bb3000000000000000000
9ccc1cc700000000000000000000000000cccc00d555555d00000000000000000000000000000000000000007bbbbb3000000000000330000003300000000000
0cccc1009ccc1cc700000000000000000c7777c05c55c55500000000000000000000000000000000000000000003bbb97bb33b309b9b9b9999b9b9b900000000
01ccccc00cc1111000000000000cc000c77c777c5cc5cc55000000000000000000000000000000000000000000003bb9003bb3b90003300000033000003b3300
00c111cc01c111cc000cc00000c77c00c77ccc7c5cccccc50000000000000000000000000000000000000000003bb3b0003bb3b90bbbbbb00bbbbbb000bbb000
00c111cc01cccccc000cc00000c77c00c7ccc77c5cc1cc150000000000000000000000000000000000000000003bb3b000003bb903b3bb3003b3bb30007b7000
01ccccc00cccc11000000000000cc000c777c77c5c15c155000000000000000000000000000000000000000000003bb90003bbb90033b3000033b30000030300
0cccc1009ccc1cc700000000000000000c7777c05155155500000000000000000000000000000000000000000003bbb97bbbbb30000bb000000bb00000000000
9ccc1cc700000000000000000000000000cccc00d555555d00000000000000000000000000000000000000007bbbbb3000000000000770000007700000000000
9aaa4aa700000000000000000000000000999900d555555d0000000000000067760000000000000000000000000000000000000000077000000770000b000000
0aaaa4009aaa4aa700000000000000000977779055999a5500000000000763ebbe30003ebee9000000000000003bbbb9000000000b0b30b00b0b30b0b30000b3
04aaaaa00aa444a00000000000099000977977795999a555000000000073ebb33bbb03bbbee900000000000003bbb30003bbbbb90b3b3bb00b3b3bb033000b33
00a444aa04a444aa000990000097790097799979599999a500000000006ebbb33bebbebee000003bebebeee97b3b30007b3b330003b33b3003b33b303300b333
00a444aa04aaaaaa00099000009779009799977955559a550000000000bbbbbbbbbbbebbb3300ebbebebeee97b3b30007bbbb3000bbbbbb00bbbbbb0330b3333
04aaaaa00aaaa4400000000000099000977797795559a5550000000003bebbe3333333333ebbbbbe0000000003bbb300033bbbb9333333333333333303033333
0aaaa4009aaa4aa7000000000000000009777790555a5555000000006ebbbe3bebebebebe33ebebbee330000003bbbb900000000b3b3b3b33b3b3b3b00033330
9aaa4aa700000000000000000000000000999900d555555d000000007b33b3bb33ebe33bebe3b3b3b3bb900000000000000000003b3b3b3bb3b3b3b300003300
988828870000000000000000000000000088880000000000000000007b33b3bb33ebe33bebe3b3b3b3bb90000000000000000000000000000000000000000000
088882009888288700000000000000000877778000000000000000006ebbbe3bebebebebe33ebebbee330000003bbb3000003300000000000000000000000000
0288888008822280000000000008800087787778000000000000000003bebbe3333333333ebbbbbe000000007bbb33b97bb3bb39003bb3000000000000000000
0082228802822288000880000087780087788878000000000000000000bbbbbbbbbbbebbb3300ebbebebeee90003bbb00003bbb000bbbbb3b3b3b3b3b3b3b3b3
00822288028888880008800000877800878887780000000000000000006bbbb33bebbebee000003bebebeee90003bbb07bbb33b9007b7bb3b3b3b3b3b3b3b3b0
028888800888822000000000000880008777877800000000000000000073ebb33bbb03bbbee90000000000007bbb33b9003bbb3000bbbb300300300300300300
08888200988828870000000000000000087777800000000000000000000763ebbe30003ebee9000000000000003bbb3000000000000300300300300300300300
98882887000000000000000000000000008888000000000000000000000000677600000000000000000000000000000000000000000030030030030030030030
3bbbbbbbbbbbbbbbbbbbbe3300000000003bbbbbbbbbbbbb30000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbeebbebebbbe33eeee9a07bbbbbbbbbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbbbbbbe3e3e9907bb3b3b3bbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
b33eb33eb33ebe33333333ebbbb33e9907bb3b3b3bbbbbbbb300000000000000000000000000bbbbbbbb00000000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbe33ebbbb3e9907bb3b3b3bbbbbbbb3333303030000000000000000bbbbbbbbbbbb000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbe33ebbbb39a07bb3b3b3bbbbbbbb3bbbbbbbbbbbb9a00000000bbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
3eeeeee0000003bbb3ebbbe33bbbbe3007bbbbbbbbbbbbbbb3bbbbbbbbbbbb990000000bbbbbbbbbbbbbbbbbb000000000000000000000000000000000000000
077777000000003bb3ebbbe33bb3eb30003bbbbbbbbbbbbbb3bb33b33b33bb99000000bbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000
077770000000000bbbbbbbb33bb3ebe000333333333333333bbb33b33b33bb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
0777000000000033ebebbbe33bbbbbb3003bbbbbbbbbbbbbbbbbbbbbbbbbbb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
07700000000007ee3bebbbb33bbbbbbe00bbbbbbbbbbbbbbbbbbbbbbbbbbbb9a0000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
07000000000007ee3bebbbb33bbeeeee00bbbbb3bbbb3333333b3bbbb33030000000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
00000000000007ee3bee3bb33beebeee0bbbbb3bbb3bbbbbbbbbb3bb30000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbbbbb33beebebe0b33bbbbb3bbbbb3333bb3bb00000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3b3ebbb33bbebebe0b33bbbb3bb733333bb3bbb300000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbeeeb33bbebebe0b33bbbb3bb7bbbbb3b3bbb000000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbeeeb33bbebebe0b33bbbb3bb7bbbbb3b3bbb000000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3b3ebbb33bbebebe0b33bbbb3bb733333bb3bbb300000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbbbbb33beebebe0b33bbbbb3bbbbb3333bb3bb00000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bee3bb33beebeee0bbbbb3bbb3bbbbbbbbbb3bb30000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
07000000000007ee3bebbbb33bbeeeee00bbbbb3bbbb3333333b3bbbb33030000000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
07700000000007ee3bebbbb33bbbbbbe00bbbbbbbbbbbbbbbbbbbbbbbbbbbb9a0000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
0777000000000033ebebbbe33bbbbbb3003bbbbbbbbbbbbbbbbbbbbbbbbbbb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
077770000000000bbbbbbbb33bb3ebe000333333333333333bbb33b33b33bb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
077777000000003bb3ebbbe33bb3eb30003bbbbbbbbbbbbbb3bb33b33b33bb99000000bbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000
3eeeeee0000003bbb3ebbbe33bbbbe3007bbbbbbbbbbbbbbb3bbbbbbbbbbbb990000000bbbbbbbbbbbbbbbbbb000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbe33ebbbb39a07bb3b3b3bbbbbbbb3bbbbbbbbbbbb9a00000000bbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbe33ebbbb3e9907bb3b3b3bbbbbbbb3333303030000000000000000bbbbbbbbbbbb000000000000000000000000000000000000000000
b33eb33eb33ebe33333333ebbbb33e9907bb3b3b3bbbbbbbb300000000000000000000000000bbbbbbbb00000000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbbbbbbe3e3e9907bb3b3b3bbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbeeebebebbbe33eeee9a07bbbbbbbbbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
3bbbbbbbbbbbbbbbbbbbbe3300000000003bbbbbbbbbbbbb30000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000444440000004444440000000000000444444444000000000000000000000000000000000000000000000000000000000000000000
02888888888882000000004440444000044444444000044000044444444444400000000000000000000000000000000000000000000000000000000000000000
28888888888888200444444404444040444000044400400404444440044444440000000000000000000000000000000000000000000000000000000000000000
88222244422228804444444404440444440444004440000444444404404444440000000000000000000000000000004444444444000000000000000000000000
88222444222228804444400440004444440444400444004444444044404444440000000000000000000000000000444444444444440000000000000000000004
88888888888888804444044444444444444044400004444004444044044444400000000000000000000000000044444444444444444400000000000000004444
88202200022028800444044444444440444444400000000000000044444444000000000000000000000000004444444444444444444444000000000004444444
22002800028002200000004444444000044444000000000000000004444440000000000000000000000000044444444444444444444444400000004444444444
00002200022000000000000000044440000000000444400000444000000000000000000000000000000000444444444444444444444444440000444444444444
00028888888200000044440000444444000000004444440004444400004444000000000000000000000004444444444444444444444444444404444444440444
00288888888820000444444004444444044444044444444044444400444444400000000000000000000044444444444444444444444444444400444444004444
02888222228882004440044404444444444444444440444444044004444000440000000000000000000044444444444444444444444444444440444400044444
02882888882882004400004440440444444444444404444444400444400000040000000000000000000444444444444444444444444444444440044000444444
08888888888888004400000444004444044444444404444444444444000040040000000000000000000444444444444444444444444444444444000044444444
08828828288288000440040044444440000000000000444004444400000004400000000000000000004444444444444444444444444444444444000044444444
08888888888888000044400000444400000000000000000000000000000000000000000000000000004444444444444444444444444444444440000444444440
08282828282828000002888888882000000000000020000000000000000000080000000000000000044444444444444444444444444444444400004444444000
08288888888828000028822422288200000000000820000008000800000000282000000000000000044444444444444444444444444444440000044444400000
08282828282828000088888888888800000000080820000008888800000000888000000000000000044444444444444444444444444444400004444444000000
08288888888828000022200220022200000000082828000000808000000008888200000000000000044444444444444444444444444400000044444440000000
08282828282828000008000220008000000008082828000080808080000082888820000000000000044444444444444444444444444000004444444400000000
08288888888828000008288888828000000008282808000088888880000008888880000000000000044444444444444444444444400000444444444000000000
08282828282828000002888888882000000008282808000000808000000088882880000000000000044444444444444444444444000004444444400000000000
08288888888828000028282828288200000008280808000000808000000288288082000000000000044444444444444444444000000444444444000000000000
08222828282228000028888888888200000008082802000000802000000002888800000000000004044444444444444444440000004444444400000000000000
08288888888828000088224442228800000000880882000000208000000088888880000000000044044444444444444444000004444444440000000000000000
08282828282828000088244422228800000000080820000000802000000828088282000000004444044444444444444400000444444444000000000000000000
08288822288828000088888888888800000000082200000000808000000008888800000000444444004444444444000000044444444400000000000000000000
08282822282828000082888888282800000002022000000000202000000082022204000004444440000444444400000004444444440000000000000000000000
08888822288888000488882828888800400002082000004000202400000000222000020044444400000000000000004444444440000000000000000000000000
28282822282888020482882228282840000400222000200004202400400200022402020444444000000000000004444444444000000000000000000000000000
28288822288828020488882228888840020420022020200024242420000002042402000044440000000000000044444444400000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff000000000000000000000000000000ff
__map__
9700808100008485002600008687000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000808100000090910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
9091000000949500000096970000008600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000003001313131300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010001313130000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000030000002c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000004041424300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000002123230000232323235051525300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000002323000000000061626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000300000000000b007071727300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000828300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000929300000300003b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
a0a1a4a500a2a3a0a1a7a800a6a7a8a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b0b1b4b500b2b3b0b1b7b800b6b7b8b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
490100001902036040361402e03027020210201d11005610240002600000000290002a0002b000000002c0002d0002d000000002d0002d0002b0002a00027000220001e000180001600014000130001300013000
49020000296200e07034630150703564010070276400d0000a05005000010500465006660076000866006600056600365000650006500f7000f7000f7000f7000f7000f7000f7000f7000f700000000000000000
4d020000116611b36110661026510e551193510e6510e6410b5310d6310d621006210862105621026010261101611006110061100611006010060101601016010060100601006010060100601006010060100001
49010000133101a440193401e4501c450173501454011520113001c5000e100175000b50011100031003510000100000000000000000000000000000000000000000000000000000000000000000000000000000
49010000233403a3703d16020650191602266024140206301e63000000000001c63000000000001b4200000019420000000000000000000000000000000000000000000000000000000000000000000000000000
490200003003734637350473664738407326473940730647384072f6473204730047290371a627120270000708057090570000700007076570764700007080370863707627000070862708617000070000700007
6d040000243263234637056110261f136264462e136374263c1160000600306003060030600306003060030600306003062a30600006000060000600006000060000600006000060000600006000060000600006
490100002f0332a0533b063297633405323743270331c7230f023127130a013077130000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003
