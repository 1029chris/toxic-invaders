pico-8 cartridge // http://www.pico-8.com
version 35
__lua__
--toxic invaders
--wip by chris & ribbon!

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
00000000000000000000000003bbbb30577777750000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000003b7777b37778877700633333300003eb0000000000000000000000000000000000000000000000000000000073ee330000000000
00700700003b3300003bb300b77b777b7778877707bebbbbbe33bba0000000000000000000000000000000000000000000000000000000000e33bbe973bbb300
0007700000bbb00000b77b00b77bbb7b788888877bbbebbbbbebbb9300000000000000000000000000000000000000000000000000000000b3bbbbe9b3bb3e39
00077000007b700000b77b00b7bbb77b722882277bbbebbbbbeebb9000000000000000000000000000000000000000000000000000000000b3bb3e30b3bbbbe9
0070070000030300003bb300b777b77b777887777bbb3eeeee3eeb9300000000000000000000000000000000000000000000000000000000b3bbbbe90e33eee9
0000000000000000000000003b7777b37772277707eebbbbbe33eea0000000000000000000000000000000000000000000000000000000000e33bbe973ee3300
00000000000000000000000003bbbb305777777500633333300003eb0000000000000000000000000000000000000000000000000000000073ee330000000000
9fcc1fc700000000000000000fccccf057777775003bb30000000000000000000000000000000000000000000000000000000000000000007ebbbb3000000000
0fcff1009fccfcc700000000fc7777cf7c77c77703bbbbb3b900b339000000000000000000000000000000000000000000000000000000000003ebb97eb33e30
01fcccf00ff111f000fccf00c77c777c7cc7cc77bbb333333bbb00000000000000000000000000000000000000000000000000000000000000003eb9003bb3e9
00f111cc01f111cc00c77c00c77ccc7c7cccccc77b3bbbbbb3b3b90000000000000000000000000000000000000000000000000000000000003bb3e0003bb3e9
00f111cc01fccccf00c77c00c7ccc77c7ccfccf77b3bbbbbb3b3b90000000000000000000000000000000000000000000000000000000000003bb3e000003eb9
01fcccf00fcff1f000fccf00c777c77c7cf7cf77bbb333333bbb00000000000000000000000000000000000000000000000000000000000000003eb90003ebb9
0fcff1009fcc1fc700000000fc7777cf7f77f77703bbbbb3b900b339000000000000000000000000000000000000000000000000000000000003ebb97ebbbb30
9fcc1fc700000000000000000fccccf057777775003bb30000000000000000000000000000000000000000000000000000000000000000007ebbbb3000000000
6a994a97000000000000000004999940577777750000000000000000000000007e33e3ee33bee33bbee3e3e3e3eea00000033000000330000000000000000000
0a9aa4006a99a997000000004977779477999a770000000000000000000000006ebebe3ebebebebee33be333eb3390009e9e9e9999e9e9e9003ebbe900000000
04a999a00aa444a000499400977977797999a777003bb300000000000000000003eeeee3333333333eeeeee333333000000330000003300003ebb300033bbbb9
00a44499049444990097790097799979799999a700bbbbb3b3b3b3b3b3b3b3b300bebebebebebebebeee333be3b3b33a0eeeeee00eeeeee07e3b30007e3b3300
00a4449904a9999a009779009799977977779a77007b7bb3b3b3b3b3b3b3b3b0006eeee33eeeeee3e333333ee3e3e33a03b3bb3003b3bb307e3b30007eebe300
04a999a00a9aa44000499400977797797779a77700bbbb3003003003003003000073beb33ebe03beee33a000333333330033b3000033b30003ebb300033ebbb9
0a9aa4006a994a970000000049777794777a7777000300300300300300300300000763eeee30003ebe3e3a0000000000000ee000000ee000003ebbe900000000
6a994a97000000000000000004999940577777750000300300300300300300300000006776000000033333a00000000000077000000770000000000000000000
00003333333333333333333300a00000a9a00000223fff22222272220b0000007b33b3bb33ebe33bebe3b3b3b3bb900000077000000770000000000000000000
00003bbbbb3bbbb33b3bbbb30a9a0000999a00002ffffeb222252222b30000b36ebbbe3bebebebebe33eb33eee33a0000b0b30b00b0b30b0003ebb3000003300
0000333b333b33b33b3b3333a999a000a999a000fff1eddb22d2222233000b3303bebbe3333333333ebbbbe3333330000b3b3bb00b3b3bb07ebe33e97eb3bb39
0000003b303b33b33b3b30000a999a000aaaaa002f1fdffd200dd0003300b33300bbbbbbbbbbbebbbbbbeeebebebeee903e33e3003e33e300003bbe00003bbe0
0000003e303e33e33e3e300000a999a000a999a0f370d70d05550700330b3333006bbbb33bebbebee333333bebebeee90eeeeee00eeeeee00003bbe07ebe33e9
0000003b303b33b33b3b3333000a999a000aaaaa22da9ddbdfcc060d030333330073ebb33bbb03bbbe33a0003333333333333333333333337ebe33e9003ebb30
0000003e303eeee33e3eeee30000a9990000a9a0229999ae2d0000d200033330000763ebbe30003ebe3ee90000000000e3e3e3e33e3e3e3e003ebb3000000000
00000033303333333333333300000a9a00000a0029999ae22220d222000033000000006776000000033333a0000000003b3b3b3bb3b3b3b30000000000000000
3bbbbbbbbbbbbbbbbbbbbe3300000000003bbbbbbbbbbbbb30000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbeebbebebbbe33eeee9a06bbbbbbbbbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbbbbbbe3e3e9907bb3b3b3bbbbbbbb3000000000000000000000000000000000000000000000000000000000000000000000000000000
b33eb33eb33ebe33333333ebbbb33e9907bb3b3b3bbbbbbbb300000000000000000000000000bbbbbbbb00000000000000000000000000000000000000000000
be3ebe3ebe3ebbbbbbbbe33ebbbb3e9907bb3b3b3bbbbbbbb3333303030000000000000000bbbbbbbbbbbb000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbe33ebbbb39a07bb3b3b3bbbbbbbb3bbbbbbbbbbbb9a00000000bbbbbbbbbbbbbbbb0000000000000000000000000000000000000000
3eeeeee0000003bbb3ebbbe33bbbbe3006bbbbbbbbbbbbbbb3bbbbbbbbbbbb990000000bbbbbbbbbbbbbbbbbb000000000000000000000000000000000000000
077776000000003bb3ebbbe33bb3eb30003bbbbbbbbbbbbbb3bb33b33b33bb99000000bbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000
077760000000000bbbbbbbb33bb3ebe000333333333333333bbb33b33b33bb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
0776000000000033ebebbbe33bbbbbb3003bbbbbbbbbbbbbbbbbbbbbbbbbbb9900000bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000000000000000
07600000000006ee3bebbbb33bbbbbbe00bbbbbbbbbbbbbbbbbbbbbbbbbbbb9a0000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
06000000000007ee3bebbbb33bbeeeee00bbbbb3bbbb3333333b3bbbb33030000000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000
00000000000007ee3bee3bb33beebeee0bbbbb3bbb3bbbbbbbbbb3bb30000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbbbbb33beebebe0b33bbbbb3bbbbb3333bb3bb00000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3b3ebbb33bbebebe0b33bbbb3bb633333bb3bbb300000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007ee3bbeeeb33bbebebe0b33bbbb3bb7bbbbb3b3bbb000000000000bbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000
00000000000007333ee333e33ee3e3e30e33eeee3ee7eeeee3e3eee000000000000eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000
00000000000007333e33eee33ee3e3e30e33eeee3ee633333ee3eee300000000000eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000
00000000000007333ebebeb33e33e3e30e33eeeee3eeeee3333ee3ee00000000000eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000
00000000000007333e333ee33e33e3330eeeee3eee3eeeeeeeeee3ee30000000000eeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000
06000000000007333e3ebeb33ee3333300eeeee3eeee3333333e3eeee33030000000eeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000000000000000
07600000000006333e3eeee33eeeeee300eeeeeeeeeeeeeeeeeeeeeeeeeeee9a0000eeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000000000000000
0776000000000033be3ebeb33ebebeb3003eeeeeeeeeeeeeeeeeeeeeeeeeee9900000eeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000
077760000000000eeeeeeee33ee3eee000333333333333333eee33e33e33ee9900000eeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000
077776000000003eb33ebeb33eb3be30003eeeeeeeeeeeeee3ee33e33e33ee99000000eeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000
3eeeeee0000003eee33eeee33eeeee3006eeeeeeeeeeeeeee3eeeeeeeeeeee990000000eeeeeeeeeeeeeeeeee000000000000000000000000000000000000000
bebebebebebebebebebebe33bebeb39a07ee3e3e3eeeeeeee3eeeeeeeeeeee9a00000000eeeeeeeeeeeeeeee0000000000000000000000000000000000000000
ee33ee33ee33eeeeeeeee33eeeee3e9907ee3e3e3eeeeeeee3333303030000000000000000eeeeeeeeeeee000000000000000000000000000000000000000000
b333b333b333be33333333bebeb33e9907ee3e3e3eeeeeeee300000000000000000000000000eeeeeeee00000000000000000000000000000000000000000000
ee33ee33ee33eeeeeeeeeeeeee3e3e9907ee3e3e3eeeeeeee3000000000000000000000000000000000000000000000000000000000000000000000000000000
bebebebebebee333e3e3eebe33eeee9a06eeeeeeeeeeeeeee3000000000000000000000000000000000000000000000000000000000000000000000000000000
3eeeeeeeeeeeeeeeeeeeee3300000000003eeeeeeeeeeeee30000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000000000000000000000000000000000000000000000000000222222222222220000000022222222200000022222220222000
02888888888882000000000000000000000000000000000000000000000000000000000002222022222002222222000000222222222200000222222202220000
28888888888888200000000000000000000000000000000002222000000000000022220022222202220220222222222222222222222200002222222022200000
88222244422228800000000000000000222222220000000022000200000000022222222022200220222020222222222222222222222200022222220222000000
88222444222228800000000000000222222222222220000020220020000002222222222222020022002220222222222222222222222000222222202220000000
88888888888888800000000000022222222222222222200022220200000222222222222222220002222202222222222222222222220002222222022200000000
88202222222028800022200002222222222222222222220002200000022222202222222202202000000022222222222222222222200022222220222000000000
22002820282002200222220022002222222222222222222000000000222000000222222200002200000222222222222222222222000222222202220000000000
00002220222000000220020220220222222000022222222200000022000000000222222200022222222222222222222222222220002222222022200022220000
00028888888200000220220222020222220222202222222220002000000000002222222200022222222222222222222222222200222222220222000022200000
00288888888820000222000022220222202220220220022222000000000000002222222200002222222222222222222222222002222222202220000020000000
02888222228882000022222222202222002202020202202222200000000000022222022200002222222222222222222222200022222222022200000000000000
02882888882882000000000000022222002202220220202222200000000000222222222000000222222222222222222222000222222202222000000000000000
28888888888888200000000002222222002220000022202222200000000002222220222000000022222222222222222200022222222022220000000000000000
28828828288288200002222222222222000222222222022222220000000022222202220000000002222222222222220002222222220222200000000000000000
28888888888888200022222222222222200002222200222222220000000222222222200000000000222222222222000222222222202220000000000000000000
28282848282828200002888888882000000000000000000022202220000080000044400000000000000000000000000000222222220000222222222000404000
28288888888828200028822422288200000000002820000028222820000282000444440000444400000000000000000000002220000022222222202200000000
28284848282828200088888888888800000000282820000028888820000888004444440044444440000000220222000000000000002222222222022240044400
28288888888828200022200000022200000000282828200022828222008888204404400444400444000002202202200000000000222222222202222240440440
28284828282828200028200000028200000028282828200022828282082888804440044440004044000022202220220200000022222222220022220040444404
28288888888828200028288888828200000028282828200028888882008888824444444400004444000222000222022000002222222222002222000004404004
28282828284828200022888888882200000028282828200022828222088882880444444000000440002220000000000000222222222200222220000000000040
28288888888828200028282848488200000028282828200002828200288288020044440000000000022220000000000022222222220022222000000000404000
28222828482228200028888888888200000028282828200002828200002888800044444440000440022200000000222222222222202222200044440000000000
28288888888828200288224442228820000002882882000002828200088888880444444444004444222200000022222222222220222220000440004000000000
28282828282828200288244422228820000000282820000002828200828088284444000444404044222222222222222222220022220000004044400400000000
28288822288828200288888888888820000000288200000002828200008888804440444044440444222222222222222200002222000000004440440404888884
28282822282828200282888888282820000000282000000002828200082088204440444404444440222222222222000222222000000000000404400408a98a98
28888822288888200288882828888820000000282000000002828200000222004444044400444400222222220022222222200000000000000000004008988988
28882822282888200282882228282820000200282000200002828202000082000444444400000000022222222222222200000000000000004000000008988a98
28888822288888222288882228888822020220282220202022828222000082000044444000000000002222222222200000000000000000000404400004888884
__gff__
0040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000010000000000000000000000010000000100000000000000000000000001000101
__sfx__
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
490100001902036040361402e03027020210201d11005610240002600000000290002a0002b000000002c0002d0002d000000002d0002d0002b0002a00027000220001e000180001600014000130001300013000
49020000296200e07034630150703564010070276400d0000a05005000010500465006660076000866006600056600365000650006500f7000f7000f7000f7000f7000f7000f7000f7000f700000000000000000
490400003003134631350413664123611326412461130641246112f6413204130041290311a621120210000108051090510000100001076510764100001080310863107621000010862106611026110161101611
490100001905135571361712d57126151211411d13105621240010462100001036212a00100611000012c0012d0012d001000012d0012d0012b0012a00127001220011e001180011600114001130011300113001
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
49010000133101a440193401e4501c450173501454011520113001c5000e100175000b50011100031003510000100000000000000000000000000000000000000000000000000000000000000000000000000000
49010000233403a3703d16020650191602266024140206301e63000000000001c63000000000001b4200000019420000000000000000000000000000000000000000000000000000000000000000000000000000
4d020000116611b36110661026510e551193510e6510e6410b5310d6310d621006210862105621026010261101611006110061100611006010060101601016010060100601006010060100601006010060100001
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
480300001a6321e64220652206521e6521d65218652156421263211632106220e6120e6120e6120e6120f61200002000020000200002000020000200002000020000200002000020000200002000020000200002
4802000008630076300764007640066400c630066400f6300663006640036300664006640046400663006640066400a640056400563005630066400363002630066400b640066400663006630066400863008630
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
490100002f0332a0533b063297633405323743270331c7230f023127130a013077130000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
55040000243363233637036110361f136264362e136374363c1360000600306003060030600306003060030600306003062a30600006000060000600006000060000600006000060000600006000060000600006
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d11c00081f011220161a0161f0162b0112e016260162b016000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
490e00081006334615346253461510063346153462534615000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
110e00080030207755077550775500700077550775507755000000000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09380000221212212229121291222912500100001000f1021b1211b1222812128122281250010000100281021d1211d1222112121122211250010000100211021f1211f122221212212222125221002210000000
a71c0010373272e327373272e327373122d312223120c3122b327223272b327223272b31221312163120031200000000000000000000000000000000000000000000000000000000000000000000000000000000
490e0008100533460510003346051c655346050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4d0e002010053073250a425093251c655073250c4250a32510053073250a425093251c655073250c4250e32510053073250a425093251c655073250c4250a32510053073250a425093251c655073250042502325
d11c000821011240161c016210162d01130016280162d01621000180001c000210002d00024000280002d00000000000000000000000000000000000000000000000000000000000000000000000000000000000
4d0e002012053093250c4250b3251e655093250e4250c32512053093250c4250b3251e655093250e4251032512053093250c4250b3251e655093250e4250c32512053093250c4250b3251e655093250242504325
4d0e00200e0530532508425073251a655053250a425083250e0530532508425073251a655053250a4250c3250e0530532508425073251a655053250a425083250e0530532508425073251a655053250042500325
d11c000821011240161c016210162d01130016280162d0161f000220001a0001f0002b0002e000260002b00000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 20616263
00 20256263
01 20266144
00 23266263
00 24266263
00 20266144
00 27286144
02 2a296144

