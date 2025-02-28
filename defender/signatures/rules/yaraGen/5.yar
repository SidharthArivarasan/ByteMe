/*
   YARA Rule Set
   Author: yarGen Rule Generator
   Date: 2024-04-17
   Identifier: mw5
   Reference: https://github.com/Neo23x0/yarGen
*/

/* Rule Set ----------------------------------------------------------------- */

import "pe"

rule _root_BytMe_new_datasets_mw5_017 {
   meta:
      description = "mw5 - file 017"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "396223eeec49493a52dd9d8ba5348a332bf064483a358db79d8bb8d22e6eb62c"
   strings:
      $s1 = "D:\\New folder\\HHDWQA\\Release\\HHDWQA.pdb" fullword ascii
      $s2 = "      <assemblyIdentity type=\"win32\" name=\"Microsoft.VC90.CRT\" version=\"9.0.21022.8\" processorArchitecture=\"x86\" publicK" ascii
      $s3 = "      <assemblyIdentity type=\"win32\" name=\"Microsoft.VC90.CRT\" version=\"9.0.21022.8\" processorArchitecture=\"x86\" publicK" ascii
      $s4 = "333333333333333331" ascii /* hex encoded string '333333331' */
      $s5 = "f33333" ascii /* reversed goodware string '33333f' */
      $s6 = "@3333333331" fullword ascii /* hex encoded string '33331' */
      $s7 = "#333333333333<" fullword ascii /* hex encoded string '333333' */
      $s8 = "@333333333333333331" fullword ascii /* hex encoded string '333333331' */
      $s9 = "@33333333333331" fullword ascii /* hex encoded string '3333331' */
      $s10 = "#3333333333<" fullword ascii /* hex encoded string '33333' */
      $s11 = "#3333333333333333<" fullword ascii /* hex encoded string '33333333' */
      $s12 = "@3333333333333331" fullword ascii /* hex encoded string '33333331' */
      $s13 = "#33333333333333<" fullword ascii /* hex encoded string '3333333' */
      $s14 = "#33333333<" fullword ascii /* hex encoded string '3333' */
      $s15 = "#333333333333333333<" fullword ascii /* hex encoded string '333333333' */
      $s16 = "@333333333331" fullword ascii /* hex encoded string '333331' */
      $s17 = "@33333331" fullword ascii /* hex encoded string '3331' */
      $s18 = "uussrrqqq" fullword ascii
      $s19 = "rFOW1%Dmw%" fullword ascii
      $s20 = ":V:\\:d:k:p:v:|:" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 900KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_024 {
   meta:
      description = "mw5 - file 024"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "ad277cb24b005d277552206dd6028826498a7cab057eaf46d377a79f06580d02"
   strings:
      $s1 = "Error setting %s.Count8Listbox (%s) style must be virtual in order to set Count\"Unable to find a Table of Contents" fullword wide
      $s2 = " Clipboard does not support Icons/Menu '%s' is already being used by another formDocked control must have a name%Error removing" wide
      $s3 = "UpGlyph.Data" fullword ascii
      $s4 = "DownGlyph.Data" fullword ascii
      $s5 = "None?Sc:\\" fullword ascii
      $s6 = "Address already in use." fullword wide
      $s7 = "* (()@-3$-" fullword ascii
      $s8 = "_GetLongPathNameA'o" fullword ascii
      $s9 = "GaGetY;" fullword ascii
      $s10 = "lrrrrhd" fullword ascii
      $s11 = "%AN:\\\\\"u=/" fullword ascii
      $s12 = "    version=\"1.0.0.0\" " fullword ascii
      $s13 = "http:/wwware/m4" fullword wide
      $s14 = "GHIJKLMNOPQRSTUVWXYZ" fullword ascii
      $s15 = "Exceptionln" fullword ascii
      $s16 = "Currenc" fullword ascii
      $s17 = "SpinButton1" fullword ascii
      $s18 = "S5Dq -" fullword ascii
      $s19 = "XPManifest1" fullword ascii
      $s20 = "IdMailBox1" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 1000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_009 {
   meta:
      description = "mw5 - file 009"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "9d86beb9d4b07dec9db6a692362ac3fce2275065194a3bda739fe1d1f4d9afc7"
   strings:
      $s1 = "process call create \"cmd /c start %s\"" fullword wide
      $s2 = "msvcp5%d.dll" fullword ascii
      $s3 = "\\wbem\\wmic.exe" fullword wide
      $s4 = "A%windir%\\system32\\wbem\\wmic" fullword wide
      $s5 = "GET /%s HTTP/1.1" fullword ascii
      $s6 = "Dear %s, your files have been encrypted by RSA-2048 and ChaCha algorithms" fullword wide
      $s7 = "`AAAAAAAA" fullword ascii /* base64 encoded string '      ' */
      $s8 = "$AAAAAAA" fullword ascii /* reversed goodware string 'AAAAAAA$' */
      $s9 = "Bootfont.bin" fullword wide
      $s10 = "%s! Alert! %s! Alert! Dear %s Your files have been encrypted by %s! Attention! %s" fullword wide
      $s11 = "webauth" fullword ascii
      $s12 = "%EMAIL_ADDRESS%" fullword ascii
      $s13 = "The only way to restore them is to buy decryptor" fullword wide
      $s14 = "You need to buy decryptor in order to restore the files." fullword wide
      $s15 = "nkernel32" fullword wide
      $s16 = "\\Low\\Content.IE5\\" fullword wide
      $s17 = "bootsect.bak" fullword wide
      $s18 = "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko" fullword ascii
      $s19 = "home computer" fullword wide
      $s20 = "analytics" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 1000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_029 {
   meta:
      description = "mw5 - file 029"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "c979e54186f670ead05d0b789572f92001e3a7e4df60263570dbd73cbd1f2e62"
   strings:
      $s1 = "TCommonDialogpqB" fullword ascii
      $s2 = "Unable to insert a line Clipboard does not support Icons.There is no default printer currently selected/Menu '%s' is already bei" wide
      $s3 = "PageSetupDialog1" fullword ascii
      $s4 = "FFFFFF" fullword ascii /* reversed goodware string 'FFFFFF' */
      $s5 = "3#4'4+4/43474<4" fullword ascii /* hex encoded string '4DCGD' */
      $s6 = "OnGetSiteInfoP2C" fullword ascii
      $s7 = "5 5$5(565" fullword ascii /* hex encoded string 'UUe' */
      $s8 = "LargeChangeT" fullword ascii
      $s9 = ": :$:(:,:0:4:8:<:@:D:H:L:\\:|:" fullword ascii
      $s10 = "9U:\\:s:Z<n<" fullword ascii
      $s11 = "TConversiond" fullword ascii
      $s12 = "OnKeyUpP2C" fullword ascii
      $s13 = "TComponentListNexus,8B" fullword ascii
      $s14 = ": :$:(:,:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s15 = "AutoHotkeys@cD" fullword ascii
      $s16 = "OnKeyDownx3C" fullword ascii
      $s17 = "OnKeyUpP" fullword ascii
      $s18 = "9,:<:H:L:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s19 = ":$:D:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s20 = "TCustomCombo " fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_016 {
   meta:
      description = "mw5 - file 016"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "75964d39116458ea638a445294d435e75b9e998754ee3ccd7698426791e24419"
   strings:
      $s1 = "vvvvvvf" fullword ascii /* reversed goodware string 'fvvvvvv' */
      $s2 = "wvvvvvv" fullword ascii /* reversed goodware string 'vvvvvvw' */
      $s3 = "ivvvvvv" fullword ascii /* reversed goodware string 'vvvvvvi' */
      $s4 = "pvvvvvv" fullword ascii /* reversed goodware string 'vvvvvvp' */
      $s5 = "vvvvvvt" fullword ascii /* reversed goodware string 'tvvvvvv' */
      $s6 = "PasswordChar8PD" fullword ascii
      $s7 = "}vvvvvv" fullword ascii /* reversed goodware string 'vvvvvv}' */
      $s8 = "OnDrawItempED" fullword ascii
      $s9 = "=7=?=\\=d=" fullword ascii /* hex encoded string '}' */
      $s10 = "3+5_6F7|7" fullword ascii /* hex encoded string '5ow' */
      $s11 = "l&{dlll&+dlll" fullword ascii
      $s12 = "dvvvvvv" fullword ascii
      $s13 = "hvvvvvv" fullword ascii
      $s14 = "nvvvvvv" fullword ascii
      $s15 = "kovvvvvv" fullword ascii
      $s16 = "rvvvvvvt" fullword ascii
      $s17 = "vvvvvvn" fullword ascii
      $s18 = "vvvvvvug" fullword ascii
      $s19 = "evvvvvv" fullword ascii
      $s20 = "vvvvvveq" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_018 {
   meta:
      description = "mw5 - file 018"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "471325daa2bc75f50856e93e9de088386556fc3ead653894d5c2a67f2a8b4975"
   strings:
      $s1 = "jQj0jajwj" fullword ascii /* base64 encoded string 'B=#j<#' */
      $s2 = "ACD Systems International" fullword wide
      $s3 = "lOsb3322" fullword ascii
      $s4 = "x| -kY" fullword ascii
      $s5 = "\\%.DDD" fullword ascii
      $s6 = "x| -8o" fullword ascii
      $s7 = "x| -dysm" fullword ascii
      $s8 = "jMRjNj1" fullword ascii
      $s9 = "lOsb056" fullword ascii
      $s10 = "AMEw8461" fullword ascii
      $s11 = "x| -78" fullword ascii
      $s12 = "lOsb0242" fullword ascii
      $s13 = "x| -qXk" fullword ascii
      $s14 = "?+x| -G%j" fullword ascii
      $s15 = "x| -Wv" fullword ascii
      $s16 = "AMEw6434" fullword ascii
      $s17 = "x| -pFv" fullword ascii
      $s18 = ":U[)Zx| -8o" fullword ascii
      $s19 = "%BWmjFNR" fullword ascii
      $s20 = "Wjsjmj5j" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 400KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_028 {
   meta:
      description = "mw5 - file 028"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "c53bb7c67834bf15a10b577acea646a09ce3b280832147afe9930e515465e075"
   strings:
      $s1 = "PasswordChar8PD" fullword ascii
      $s2 = "OnDrawItempED" fullword ascii
      $s3 = "888888v" fullword ascii /* reversed goodware string 'v888888' */
      $s4 = "888888$" fullword ascii /* reversed goodware string '$888888' */
      $s5 = "9888888" ascii /* reversed goodware string '8888889' */
      $s6 = "V888888" fullword ascii /* reversed goodware string '888888V' */
      $s7 = ".888888" fullword ascii /* reversed goodware string '888888.' */
      $s8 = "888888?" fullword ascii /* reversed goodware string '?888888' */
      $s9 = "^888888" fullword ascii /* reversed goodware string '888888^' */
      $s10 = "888888]" fullword ascii /* reversed goodware string ']888888' */
      $s11 = "888888#" fullword ascii /* reversed goodware string '#888888' */
      $s12 = "=7=?=\\=d=" fullword ascii /* hex encoded string '}' */
      $s13 = "3+5_6F7|7" fullword ascii /* hex encoded string '5ow' */
      $s14 = "l&{dlll&+dlll" fullword ascii
      $s15 = ": :$:@:H:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s16 = "EVariantInvalidArgErrort" fullword ascii
      $s17 = "AutoHotkeysXFD" fullword ascii
      $s18 = "KeyPreviewLMD" fullword ascii
      $s19 = "EThread\\ A" fullword ascii
      $s20 = "EVariantUnexpectedError<" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_025 {
   meta:
      description = "mw5 - file 025"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "e9c6124bc881f0a0e51525cc7e7b46804c17ea31dddfe0a4ee7cda7f440009cf"
   strings:
      $s1 = "TCommonDialogpqB" fullword ascii
      $s2 = "Unable to insert a line Clipboard does not support Icons.There is no default printer currently selected/Menu '%s' is already bei" wide
      $s3 = "PageSetupDialog1" fullword ascii
      $s4 = "FFFFFF" fullword ascii /* reversed goodware string 'FFFFFF' */
      $s5 = "3#4'4+4/43474<4" fullword ascii /* hex encoded string '4DCGD' */
      $s6 = "OnGetSiteInfoP2C" fullword ascii
      $s7 = "5 5$5(565" fullword ascii /* hex encoded string 'UUe' */
      $s8 = "LargeChangeT" fullword ascii
      $s9 = ": :$:(:,:0:4:8:<:@:D:H:L:\\:|:" fullword ascii
      $s10 = "9U:\\:s:Z<n<" fullword ascii
      $s11 = "TConversiond" fullword ascii
      $s12 = "OnKeyUpP2C" fullword ascii
      $s13 = "TComponentListNexus,8B" fullword ascii
      $s14 = ": :$:(:,:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s15 = "AutoHotkeys@cD" fullword ascii
      $s16 = "OnKeyDownx3C" fullword ascii
      $s17 = "OnKeyUpP" fullword ascii
      $s18 = "9,:<:H:L:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s19 = ":$:D:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s20 = "TCustomCombo " fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_005 {
   meta:
      description = "mw5 - file 005"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "4b12f4fdf07d06fb59b5619d01a293c51d32efd183d45a87459b47d5169cfe51"
   strings:
      $s1 = "C:\\lihedoyeyusun\\pezigekoyipu\\herubodojog.pdb" fullword ascii
      $s2 = "94773\\bin\\dutisulek.pdb" fullword ascii
      $s3 = "xjelishu.izi" fullword wide
      $s4 = ".39/<,5,2;+22." fullword ascii /* hex encoded string '9R"' */
      $s5 = "Rapef luligonit mubajaxiwaOYufo busikemeyek mom hefovuzixadoge bidagote zudifefabajog jabe gimo xuvikoruxuPGuka geja zeravala mo" wide
      $s6 = "slcfcdgggpg" fullword ascii
      $s7 = "ncdddfe" fullword ascii
      $s8 = "pddbdbbghgenefwty" fullword ascii
      $s9 = "l:\\\"96X" fullword ascii
      $s10 = "FileVersionBeer" fullword wide
      $s11 = "GEVEBJJ" fullword ascii
      $s12 = "ZJWUUCRO" fullword ascii
      $s13 = "EWWJJFQX" fullword ascii
      $s14 = "1.3.3.4" fullword wide
      $s15 = "*/4+-)%-)02++<2;" fullword ascii /* hex encoded string '@"' */
      $s16 = "N2  -O1" fullword ascii
      $s17 = "hqruzb" fullword ascii
      $s18 = "IICEERP2" fullword ascii
      $s19 = "(-+/293<1." fullword ascii /* hex encoded string ')1' */
      $s20 = "ICazo wohecelu tekuvila jerakire rek gakuvum dekamofofeyeyu hafahi vezusiy@Vahulituhez ruz hehi gogu woho tihafu rucag guwotapid" wide
   condition:
      uint16(0) == 0x5a4d and filesize < 500KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_014 {
   meta:
      description = "mw5 - file 014"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "7409de5d7d36a66df5ad5d19fd6e6c34efc03dfd9d5dc4f64ebd1c22b161dfb0"
   strings:
      $s1 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s2 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_type_info.cpp" fullword ascii
      $s3 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\per_thread_data.cpp" fullword ascii
      $s4 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcstartup\\src\\misc\\thread_safe_statics.cpp" fullword wide
      $s5 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\winapi_downlevel.cpp" fullword wide
      $s6 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_exception.cpp" fullword wide
      $s7 = "Dminkernel\\crts\\ucrt\\src\\appcrt\\internal\\report_runtime_error.cpp" fullword wide
      $s8 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s9 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s10 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlbase.h" fullword wide
      $s11 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlexcept.h" fullword ascii
      $s12 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlalloc.h" fullword wide
      $s13 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlconv.h" fullword wide
      $s14 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
      $s15 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atltrace.h" fullword wide
      $s16 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcomcli.h" fullword wide
      $s17 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlsimpcoll.h" fullword wide
      $s18 = "Error code: 0x%x - %Ts" fullword ascii
      $s19 = "hc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s20 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_006 {
   meta:
      description = "mw5 - file 006"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "6b84733e089f51187e8652511afffd0b235ecf6bbbb254c21e2d8f671f0ed895"
   strings:
      $s1 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s2 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_type_info.cpp" fullword ascii
      $s3 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\per_thread_data.cpp" fullword ascii
      $s4 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcstartup\\src\\misc\\thread_safe_statics.cpp" fullword wide
      $s5 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\winapi_downlevel.cpp" fullword wide
      $s6 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_exception.cpp" fullword wide
      $s7 = "Dminkernel\\crts\\ucrt\\src\\appcrt\\internal\\report_runtime_error.cpp" fullword wide
      $s8 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s9 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s10 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlbase.h" fullword wide
      $s11 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlexcept.h" fullword ascii
      $s12 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlalloc.h" fullword wide
      $s13 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlconv.h" fullword wide
      $s14 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
      $s15 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atltrace.h" fullword wide
      $s16 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcomcli.h" fullword wide
      $s17 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlsimpcoll.h" fullword wide
      $s18 = "Error code: 0x%x - %Ts" fullword ascii
      $s19 = "hc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s20 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_002 {
   meta:
      description = "mw5 - file 002"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "0ff86be22199d6627108f483b31997efd7172f8b5e2825852811403b764614c1"
   strings:
      $s1 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s2 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_type_info.cpp" fullword ascii
      $s3 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\per_thread_data.cpp" fullword ascii
      $s4 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcstartup\\src\\misc\\thread_safe_statics.cpp" fullword wide
      $s5 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\winapi_downlevel.cpp" fullword wide
      $s6 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_exception.cpp" fullword wide
      $s7 = "Dminkernel\\crts\\ucrt\\src\\appcrt\\internal\\report_runtime_error.cpp" fullword wide
      $s8 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s9 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s10 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlbase.h" fullword wide
      $s11 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlexcept.h" fullword ascii
      $s12 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlalloc.h" fullword wide
      $s13 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlconv.h" fullword wide
      $s14 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
      $s15 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atltrace.h" fullword wide
      $s16 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcomcli.h" fullword wide
      $s17 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlsimpcoll.h" fullword wide
      $s18 = "Error code: 0x%x - %Ts" fullword ascii
      $s19 = "hc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s20 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 2000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_013 {
   meta:
      description = "mw5 - file 013"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "93d4d1c0a510b8a71ca6a8f5c8df121f83057e5eaa6cb3e2673e1934a77c7748"
   strings:
      $s1 = "3HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s2 = "edzgkphvesw.ixe" fullword wide
      $s3 = "FimuoFubakabav gokowatotohagot miwekas nowakakitiye hirusotoz mokogobusak waretevuza jivufufipise muhiyanedicey leyicPayojokevis" wide
      $s4 = "wptszvn" fullword ascii
      $s5 = "goooooooo" fullword ascii
      $s6 = "xipusadoxi" fullword ascii
      $s7 = "YYYYYYYYYYYYYYYYYo>>" fullword ascii
      $s8 = "FileVersionz" fullword wide
      $s9 = "Pamuhuguxofir xicela maxKJapuho gaxa cololikicimemih cusigalunose tixufuxomaror hex cecel pubinadoti<Wukiwanatodome bep naw xol " wide
      $s10 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s11 = "OCCCCCCCCCCCC" fullword ascii
      $s12 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s13 = "FCCCCCCCCCCCCCCCCCCCCC" ascii
      $s14 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s15 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s16 = "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC" ascii
      $s17 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" fullword ascii
      $s18 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH" ascii
      $s19 = "SHHHHHHHHHHHHHHHHHHHHHHHHHHH" fullword ascii
      $s20 = "HHHHHHHHHHHHHHHHHHHHHHHHHHHHS" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_020 {
   meta:
      description = "mw5 - file 020"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "2a76819be5a29258097838911daddbaac374acb25a6aaf48729930a1ea21612e"
   strings:
      $x1 = "cmd.exe /c ping 0 -n 2 & del \"" fullword wide
      $x2 = "ExecutionPolicy Bypass -WindowStyle Hidden -NoExit -File \"" fullword wide
      $s3 = "/plugins/PasswordStealer.dll" fullword wide
      $s4 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s5 = "svchosts.exe" fullword wide
      $s6 = "Shell Command has been executed" fullword wide
      $s7 = "Ionic.Zip.dll" fullword wide
      $s8 = "/C ping 1.1.1.1 -n 1 -w 4000 > Nul & Del \"" fullword wide
      $s9 = "WindowsUpdate.exe" fullword wide
      $s10 = "StartKeylogger" fullword wide
      $s11 = "StopKeylogger" fullword wide
      $s12 = "Passwords.txt" fullword wide
      $s13 = "Password Stealer has been executed" fullword wide
      $s14 = "\\vmGuestLib.dll" fullword wide
      $s15 = "\\vboxmrxnp.dll" fullword wide
      $s16 = "!Host Process for Windows Services" fullword ascii
      $s17 = "ProcessHacker" fullword wide
      $s18 = "ProcessEye" fullword wide
      $s19 = "/plugins/Ionic.Zip.dll" fullword wide
      $s20 = "/plugins/FileSearcher.dll" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 300KB and
      1 of ($x*) and 4 of them
}

rule _root_BytMe_new_datasets_mw5_027 {
   meta:
      description = "mw5 - file 027"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "bdd7aa2e5ca1c94c7b23fc83320eb456cb0e6faabd7f38d877a68131248df8ac"
   strings:
      $s1 = "%x.exe" fullword ascii
      $s2 = "qriv.PHY%" fullword ascii
      $s3 = "WhBhyjN*/" fullword ascii
      $s4 = "xbagsmQz" fullword ascii
      $s5 = "a^rnWG)W$" fullword ascii
      $s6 = "NJUnEgOw" fullword ascii
      $s7 = "NvPN6Od" fullword ascii
      $s8 = "CKHvK*H" fullword ascii
      $s9 = "RkeVk9!" fullword ascii
      $s10 = "\\lp~YM3P" fullword ascii
      $s11 = "?V$^%+" fullword ascii
      $s12 = ",P#3';" fullword ascii
      $s13 = ":mT\\Eq" fullword ascii
      $s14 = "Eds9g," fullword ascii
      $s15 = "gS$6z$" fullword ascii
      $s16 = "#[pza<" fullword ascii
      $s17 = "8'858@8M8s8" fullword ascii
      $s18 = "je3x:rN" fullword ascii
      $s19 = "uD0ohe" fullword ascii
      $s20 = "$]HE<U" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 400KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_011 {
   meta:
      description = "mw5 - file 011"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "33f89af2ea3baf8978621bf7d11d93462195f7f9c62f2af3b0902beb5640ef4f"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "IClientUIHost" fullword ascii /* base64 encoded string ' )bz{T z,' */
      $s3 = "NanoCore Client.exe" fullword ascii
      $s4 = "ClientLoaderForm.resources" fullword ascii
      $s5 = "IClientLoggingHost" fullword ascii
      $s6 = "ClientLoaderForm" fullword ascii
      $s7 = "PluginCommand" fullword ascii
      $s8 = "GetBlockHash" fullword ascii
      $s9 = "FileCommand" fullword ascii
      $s10 = "NanoCore.ClientPluginHost" fullword ascii
      $s11 = "PipeExists" fullword ascii
      $s12 = "PipeCreated" fullword ascii
      $s13 = "LogClientMessage" fullword ascii
      $s14 = "#=qh9KSqT0kHBFSDanZ7gXkKb1vdDfzZS3JIRcUnMfcljE=" fullword ascii
      $s15 = "#=qOKSmYE47P2z$UXqGETlnfg==" fullword ascii
      $s16 = "AddHostEntry" fullword ascii
      $s17 = "#=qPNzwB3EyeKwH$TwKjEdAjAC6A3IlGhANCdkUFCgvEiw=" fullword ascii
      $s18 = "LogClientException" fullword ascii
      $s19 = "#=q61s8d6EIAdSsDLLjqchw1w==" fullword ascii
      $s20 = "#=qfLFZgbR_r0GETPSprP6O9w==" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 600KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_007 {
   meta:
      description = "mw5 - file 007"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "08c7fe8e6248b90a7d9e7765fec09fb6e24f502c6bea44b90665ab522f863176"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "IClientUIHost" fullword ascii /* base64 encoded string ' )bz{T z,' */
      $s3 = "NanoCore Client.exe" fullword ascii
      $s4 = "ClientLoaderForm.resources" fullword ascii
      $s5 = "IClientLoggingHost" fullword ascii
      $s6 = "ClientLoaderForm" fullword ascii
      $s7 = "PluginCommand" fullword ascii
      $s8 = "GetBlockHash" fullword ascii
      $s9 = "FileCommand" fullword ascii
      $s10 = "NanoCore.ClientPluginHost" fullword ascii
      $s11 = "PipeExists" fullword ascii
      $s12 = "PipeCreated" fullword ascii
      $s13 = "LogClientMessage" fullword ascii
      $s14 = "#=qh9KSqT0kHBFSDanZ7gXkKb1vdDfzZS3JIRcUnMfcljE=" fullword ascii
      $s15 = "#=qOKSmYE47P2z$UXqGETlnfg==" fullword ascii
      $s16 = "AddHostEntry" fullword ascii
      $s17 = "#=qPNzwB3EyeKwH$TwKjEdAjAC6A3IlGhANCdkUFCgvEiw=" fullword ascii
      $s18 = "LogClientException" fullword ascii
      $s19 = "#=q61s8d6EIAdSsDLLjqchw1w==" fullword ascii
      $s20 = "#=qfLFZgbR_r0GETPSprP6O9w==" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 600KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_026 {
   meta:
      description = "mw5 - file 026"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "b4d4c1ba58d578fc4d45444bba75199ccf9bfc57c5ace60bd93ac7eedbc15111"
   strings:
      $s1 = "MQLDdKDLOg" fullword wide
      $s2 = "pwenwukc" fullword ascii
      $s3 = "wlAVTqSAMt" fullword wide
      $s4 = "EJJITOWJDYSFOZIJDD" fullword ascii
      $s5 = "\\wwNC:LU" fullword ascii
      $s6 = "EJJITOWJDYSFOZIJDD0" fullword ascii
      $s7 = ",b+ D>" fullword ascii
      $s8 = "cWpOihxemZ" fullword ascii
      $s9 = "WnyVxLIKiR" fullword ascii
      $s10 = "_ZoH1zkTROY8H" fullword ascii
      $s11 = "CfbdSGlEWw" fullword ascii
      $s12 = "M pmczamKA" fullword ascii
      $s13 = "uwqkAyqZLN" fullword ascii
      $s14 = "xSuTHzLyaj" fullword ascii
      $s15 = "xDNmeyCcWa" fullword ascii
      $s16 = "kqQzkEgoQG" fullword ascii
      $s17 = "hMdw RcMEc" fullword ascii
      $s18 = "qWbs}Llc" fullword ascii
      $s19 = "NYlkkqCXGS" fullword ascii
      $s20 = "JovjZJwXbP" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 3000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_012 {
   meta:
      description = "mw5 - file 012"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "68a7be99acbeb91d518c3b3c8aeac1c42987bf24d0127a4eb509a9d311dab915"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s3 = "tFex256HtbePPBP.exe" fullword wide
      $s4 = "printPreviewDialog1.Icon" fullword wide
      $s5 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s6 = "printPreviewDialog1" fullword wide
      $s7 = "getMilkTea" fullword ascii
      $s8 = "getChineseTea" fullword ascii
      $s9 = "getMochaCof" fullword ascii
      $s10 = "getLatteCof" fullword ascii
      $s11 = "getEspresCof" fullword ascii
      $s12 = "getAfriCof" fullword ascii
      $s13 = "getValeCof" fullword ascii
      $s14 = "newrainbow" fullword ascii
      $s15 = "newespresso" fullword ascii
      $s16 = "ec719.resources" fullword wide
      $s17 = "98d30.png" fullword wide
      $s18 = "Service Charge " fullword wide
      $s19 = "Service Charge" fullword wide
      $s20 = "newToolStripButton.Image" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_015 {
   meta:
      description = "mw5 - file 015"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "41296cbfd438946ef97ec41ac1d7489264193d6f4ed894d875743219d4342461"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s3 = "tFex256HtbePPBP.exe" fullword wide
      $s4 = "printPreviewDialog1.Icon" fullword wide
      $s5 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s6 = "printPreviewDialog1" fullword wide
      $s7 = "getMilkTea" fullword ascii
      $s8 = "getChineseTea" fullword ascii
      $s9 = "getMochaCof" fullword ascii
      $s10 = "getLatteCof" fullword ascii
      $s11 = "getEspresCof" fullword ascii
      $s12 = "getAfriCof" fullword ascii
      $s13 = "getValeCof" fullword ascii
      $s14 = "newrainbow" fullword ascii
      $s15 = "newespresso" fullword ascii
      $s16 = "ec719.resources" fullword wide
      $s17 = "98d30.png" fullword wide
      $s18 = "Service Charge " fullword wide
      $s19 = "Service Charge" fullword wide
      $s20 = "newToolStripButton.Image" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_001 {
   meta:
      description = "mw5 - file 001"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "0f415a88d185713dcb5162ee0089aef65b7af511ee6de9286f3d4f9ef53ad524"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s3 = "tFex256HtbePPBP.exe" fullword wide
      $s4 = "printPreviewDialog1.Icon" fullword wide
      $s5 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s6 = "printPreviewDialog1" fullword wide
      $s7 = "getMilkTea" fullword ascii
      $s8 = "getChineseTea" fullword ascii
      $s9 = "getMochaCof" fullword ascii
      $s10 = "getLatteCof" fullword ascii
      $s11 = "getEspresCof" fullword ascii
      $s12 = "getAfriCof" fullword ascii
      $s13 = "getValeCof" fullword ascii
      $s14 = "newrainbow" fullword ascii
      $s15 = "newespresso" fullword ascii
      $s16 = "ec719.resources" fullword wide
      $s17 = "98d30.png" fullword wide
      $s18 = "Service Charge " fullword wide
      $s19 = "Service Charge" fullword wide
      $s20 = "newToolStripButton.Image" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_008 {
   meta:
      description = "mw5 - file 008"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "8fbb358d2ebc29540e03e45f66ecb57b9279e3d7ca7e77fcc03816d980fb7f53"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s3 = "tFex256HtbePPBP.exe" fullword wide
      $s4 = "printPreviewDialog1.Icon" fullword wide
      $s5 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s6 = "printPreviewDialog1" fullword wide
      $s7 = "getMilkTea" fullword ascii
      $s8 = "getChineseTea" fullword ascii
      $s9 = "getMochaCof" fullword ascii
      $s10 = "getLatteCof" fullword ascii
      $s11 = "getEspresCof" fullword ascii
      $s12 = "getAfriCof" fullword ascii
      $s13 = "getValeCof" fullword ascii
      $s14 = "newrainbow" fullword ascii
      $s15 = "newespresso" fullword ascii
      $s16 = "ec719.resources" fullword wide
      $s17 = "98d30.png" fullword wide
      $s18 = "Service Charge " fullword wide
      $s19 = "Service Charge" fullword wide
      $s20 = "newToolStripButton.Image" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_021 {
   meta:
      description = "mw5 - file 021"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "a2ec2449e1ca2210d0df6caec4168d7a6b2c459438cbecd1059280d571e20318"
   strings:
      $s1 = "lSystem.Resources.ResourceReader, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#System.Resources.R" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s3 = "tFex256HtbePPBP.exe" fullword wide
      $s4 = "printPreviewDialog1.Icon" fullword wide
      $s5 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s6 = "printPreviewDialog1" fullword wide
      $s7 = "getMilkTea" fullword ascii
      $s8 = "getChineseTea" fullword ascii
      $s9 = "getMochaCof" fullword ascii
      $s10 = "getLatteCof" fullword ascii
      $s11 = "getEspresCof" fullword ascii
      $s12 = "getAfriCof" fullword ascii
      $s13 = "getValeCof" fullword ascii
      $s14 = "newrainbow" fullword ascii
      $s15 = "newespresso" fullword ascii
      $s16 = "ec719.resources" fullword wide
      $s17 = "98d30.png" fullword wide
      $s18 = "Service Charge " fullword wide
      $s19 = "Service Charge" fullword wide
      $s20 = "newToolStripButton.Image" fullword wide
   condition:
      uint16(0) == 0x5a4d and filesize < 700KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_004 {
   meta:
      description = "mw5 - file 004"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "2f2e75affe9217c7211043936678fb1777e2db4a8f1986b8805ddb1e84e9e99b"
   strings:
      $x1 = "C:\\crysis\\Release\\PDB\\payload.pdb" fullword ascii
      $s2 = "sssssbsss" fullword ascii
      $s3 = "sssssbs" fullword ascii
      $s4 = "9c%Q%f" fullword ascii
      $s5 = " !\"#$%&'()*+,-./0123@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" ascii /* Goodware String - occured 1 times */
      $s6 = "RSDS%~m" fullword ascii
      $s7 = "jNYZO\\" fullword ascii
      $s8 = "ZB3sE(/" fullword ascii
      $s9 = "AmrjR~" fullword ascii
      $s10 = "(yL[pZP" fullword ascii
      $s11 = "-IxGNP" fullword ascii
      $s12 = "b,_f n7" fullword ascii
      $s13 = "*]fZ*z66" fullword ascii
      $s14 = "*CjOZU" fullword ascii
      $s15 = "2;~Mv7\\~j" fullword ascii
      $s16 = "dHEp*6" fullword ascii
      $s17 = "TL86SH" fullword ascii
      $s18 = "<a-g6J" fullword ascii
      $s19 = "{aW^,;" fullword ascii
      $s20 = "}]{B{g}" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 300KB and
      1 of ($x*) and 4 of them
}

rule _root_BytMe_new_datasets_mw5_022 {
   meta:
      description = "mw5 - file 022"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "a2369aa6af898b3da1e73381fbc2160c2382929afcbffef858e757ca129fe1e0"
   strings:
      $x1 = "C:\\crysis\\Release\\PDB\\payload.pdb" fullword ascii
      $s2 = "sssssbsss" fullword ascii
      $s3 = "sssssbs" fullword ascii
      $s4 = "fKahc735" fullword ascii
      $s5 = " !\"#$%&'()*+,-./0123@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" ascii /* Goodware String - occured 1 times */
      $s6 = "RSDS%~m" fullword ascii
      $s7 = "EslHR.fR" fullword ascii
      $s8 = "\\kP@ @" fullword ascii
      $s9 = "L3T1Oa" fullword ascii
      $s10 = "|njdo[" fullword ascii
      $s11 = "&Rz7W8" fullword ascii
      $s12 = "[J5%ice" fullword ascii
      $s13 = "PCbOif" fullword ascii
      $s14 = "RUe(JEG" fullword ascii
      $s15 = "dk;em&" fullword ascii
      $s16 = "a~vJv;T" fullword ascii
      $s17 = "^XzuR=" fullword ascii
      $s18 = "sYvLgI" fullword ascii
      $s19 = "8zmiY@" fullword ascii
      $s20 = "]Tbb0f" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 300KB and
      1 of ($x*) and 4 of them
}

rule _root_BytMe_new_datasets_mw5_010 {
   meta:
      description = "mw5 - file 010"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "24caaf1f2c828fc3a04eb1603de89519f509de1090a3ad2b2ff7beca7232d4bb"
   strings:
      $s1 = "schtasks /create /f /sc ONLOGON /RL HIGHEST /tn LimeRAT-Admin /tr \"'" fullword wide
      $s2 = "select CommandLine from Win32_Process where Name='{0}'" fullword wide
      $s3 = "System.exe" fullword wide
      $s4 = "NTdll.dll" fullword ascii
      $s5 = "Regasm.exe" fullword wide
      $s6 = "\\vboxhook.dll" fullword wide
      $s7 = "Win32_Processor.deviceid=\"CPU0\"" fullword wide
      $s8 = "Select * from Win32_ComputerSystem" fullword wide
      $s9 = "EXECUTION_STATE" fullword ascii
      $s10 = "Y21kLmV4ZSAvYyBwaW5nIDAgLW4gMiAmIGRlbCA=" fullword wide /* base64 encoded string 'cmd.exe /c ping 0 -n 2 & del ' */
      $s11 = "vmware" fullword wide
      $s12 = "Flood! " fullword wide
      $s13 = "ES_SYSTEM_REQUIRED" fullword ascii
      $s14 = "SystemIdleTimerReset" fullword ascii
      $s15 = "Error! " fullword wide
      $s16 = "Plugin Error! " fullword wide
      $s17 = "_USB Error! " fullword wide
      $s18 = "_PIN Error! " fullword wide
      $s19 = "microsoft corporation" fullword wide
      $s20 = "VirtualBox" fullword wide /* Goodware String - occured 5 times */
   condition:
      uint16(0) == 0x5a4d and filesize < 80KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_023 {
   meta:
      description = "mw5 - file 023"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "ad2a9c2defbf66cdae0bb795b753d9cd0a8a56b3b8dc3ad5d38a2a1e95a332ae"
   strings:
      $s1 = "kernel32.dll_Get" fullword ascii
      $s2 = "40,''''($ " fullword ascii /* hex encoded string '@' */
      $s3 = "*ShellAPI*x" fullword ascii
      $s4 = "* (()@-3" fullword ascii
      $s5 = "ispatch" fullword ascii
      $s6 = "mxItB1g+ t%" fullword ascii
      $s7 = "rojectt" fullword ascii
      $s8 = "TRBc+ X4" fullword ascii
      $s9 = "wpN.WnW" fullword ascii
      $s10 = "Frame/7" fullword ascii
      $s11 = "CSCROLLBARD" fullword ascii
      $s12 = "rlM'iRc" fullword ascii
      $s13 = "Iarface" fullword ascii
      $s14 = "ULabel1" fullword ascii
      $s15 = "Associ7" fullword ascii
      $s16 = " -wz%3" fullword ascii
      $s17 = "ssRegul6" fullword ascii
      $s18 = "faVLCIDL7" fullword ascii
      $s19 = "lp /Po" fullword ascii
      $s20 = "(%{ /A" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 1000KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_003 {
   meta:
      description = "mw5 - file 003"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "2af156b23d936ece676fa3ad220672970547f5e3218d2359d2596e47a5bf5d3b"
   strings:
      $s1 = "6+676=6C6\\6" fullword ascii /* hex encoded string 'fvlf' */
      $s2 = "VVVVVWQ" fullword ascii
      $s3 = "S) *)%Y%J" fullword ascii
      $s4 = "5c8O!." fullword ascii
      $s5 = "7:7C7J7" fullword ascii /* Goodware String - occured 1 times */
      $s6 = "821xRUZw9NBT6ULAGDJRBW1BKAwvmkXH\\" fullword ascii
      $s7 = "MeOgU~M" fullword ascii
      $s8 = "GDcUY?0G/24'!" fullword ascii
      $s9 = "3333E3" fullword ascii /* Goodware String - occured 1 times */
      $s10 = "2*2H2j2" fullword ascii /* Goodware String - occured 1 times */
      $s11 = "expand 32-byte kexpand 16-byte k" fullword ascii
      $s12 = "t1SSSh" fullword ascii /* Goodware String - occured 2 times */
      $s13 = ":::\\:~:" fullword ascii /* Goodware String - occured 2 times */
      $s14 = "7+7g7v7" fullword ascii /* Goodware String - occured 3 times */
      $s15 = "QQQQQQQP" fullword ascii /* Goodware String - occured 3 times */
      $s16 = "\\;ME<1" fullword ascii
      $s17 = "425I5]5i5y5" fullword ascii
      $s18 = "U6*IIK" fullword ascii
      $s19 = "dg[S)Q~" fullword ascii
      $s20 = "M0e0l0" fullword ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 300KB and
      8 of them
}

rule _root_BytMe_new_datasets_mw5_019 {
   meta:
      description = "mw5 - file 019"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "7923413083f509af76f2ef527befa01336fccb7bfe9017bffd6f6bc5753a177f"
   strings:
      $x1 = "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?><assembly xmlns=\"urn:schemas-microsoft-com:asm.v1\" manifestVersio" ascii
      $s2 = "hSystem.Drawing.Bitmap, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD^V" fullword ascii
      $s3 = "questedPrivileges xmlns=\"urn:schemas-microsoft-com:asm.v3\"><requestedExecutionLevel level=\"asInvoker\" uiAccess=\"false\" /><" ascii
      $s4 = "aCGghbtpEd.exe" fullword wide
      $s5 = "<assemblyIdentity version=\"1.0.0.0\" name=\"MyApplication.app\" /><trustInfo xmlns=\"urn:schemas-microsoft-com:asm.v2\"><securi" ascii
      $s6 = "logoPictureBox.Image" fullword wide
      $s7 = "*  {#b" fullword ascii
      $s8 = "feffefefea" ascii
      $s9 = "afeffeefef" ascii
      $s10 = "ffefeeffe" ascii
      $s11 = "ffefeeffefea" ascii
      $s12 = "affefeeffefe" ascii
      $s13 = "feffefefe" ascii
      $s14 = "affeeffefea" ascii
      $s15 = "ffeeffefe" ascii
      $s16 = "ffeeffefeef" ascii
      $s17 = "afeffefefe" ascii
      $s18 = "afeffeefefhah" fullword ascii
      $s19 = "feffefefeefa" ascii
      $s20 = "ffeefefeffe" ascii
   condition:
      uint16(0) == 0x5a4d and filesize < 900KB and
      1 of ($x*) and 4 of them
}

/* Super Rules ------------------------------------------------------------- */

rule _011_007_0 {
   meta:
      description = "mw5 - from files 011, 007"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "33f89af2ea3baf8978621bf7d11d93462195f7f9c62f2af3b0902beb5640ef4f"
      hash2 = "08c7fe8e6248b90a7d9e7765fec09fb6e24f502c6bea44b90665ab522f863176"
   strings:
      $s1 = "IClientUIHost" fullword ascii /* base64 encoded string ' )bz{T z,' */
      $s2 = "NanoCore Client.exe" fullword ascii
      $s3 = "ClientLoaderForm.resources" fullword ascii
      $s4 = "IClientLoggingHost" fullword ascii
      $s5 = "ClientLoaderForm" fullword ascii
      $s6 = "PluginCommand" fullword ascii
      $s7 = "GetBlockHash" fullword ascii
      $s8 = "FileCommand" fullword ascii
      $s9 = "NanoCore.ClientPluginHost" fullword ascii
      $s10 = "PipeExists" fullword ascii
      $s11 = "PipeCreated" fullword ascii
      $s12 = "LogClientMessage" fullword ascii
      $s13 = "#=qh9KSqT0kHBFSDanZ7gXkKb1vdDfzZS3JIRcUnMfcljE=" fullword ascii
      $s14 = "#=qOKSmYE47P2z$UXqGETlnfg==" fullword ascii
      $s15 = "AddHostEntry" fullword ascii
      $s16 = "#=qPNzwB3EyeKwH$TwKjEdAjAC6A3IlGhANCdkUFCgvEiw=" fullword ascii
      $s17 = "LogClientException" fullword ascii
      $s18 = "#=q61s8d6EIAdSsDLLjqchw1w==" fullword ascii
      $s19 = "#=qfLFZgbR_r0GETPSprP6O9w==" fullword ascii
      $s20 = "#=q85afbI_HcqBFOZnC0iAqsNghLb3LsuyjFtpLEYYoPX8=" fullword ascii
   condition:
      ( uint16(0) == 0x5a4d and filesize < 600KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( 8 of them )
      ) or ( all of them )
}

rule _014_006_002_1 {
   meta:
      description = "mw5 - from files 014, 006, 002"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "7409de5d7d36a66df5ad5d19fd6e6c34efc03dfd9d5dc4f64ebd1c22b161dfb0"
      hash2 = "6b84733e089f51187e8652511afffd0b235ecf6bbbb254c21e2d8f671f0ed895"
      hash3 = "0ff86be22199d6627108f483b31997efd7172f8b5e2825852811403b764614c1"
   strings:
      $s1 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s2 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_type_info.cpp" fullword ascii
      $s3 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\per_thread_data.cpp" fullword ascii
      $s4 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcstartup\\src\\misc\\thread_safe_statics.cpp" fullword wide
      $s5 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\internal\\winapi_downlevel.cpp" fullword wide
      $s6 = "d:\\agent\\_work\\3\\s\\src\\vctools\\crt\\vcruntime\\src\\eh\\std_exception.cpp" fullword wide
      $s7 = "Dminkernel\\crts\\ucrt\\src\\appcrt\\internal\\report_runtime_error.cpp" fullword wide
      $s8 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlhost.h" fullword wide
      $s9 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s10 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlbase.h" fullword wide
      $s11 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlexcept.h" fullword ascii
      $s12 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlalloc.h" fullword wide
      $s13 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlconv.h" fullword wide
      $s14 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
      $s15 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atltrace.h" fullword wide
      $s16 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcomcli.h" fullword wide
      $s17 = "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlsimpcoll.h" fullword wide
      $s18 = "Error code: 0x%x - %Ts" fullword ascii
      $s19 = "hc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlwin.h" fullword wide
      $s20 = "Mc:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.16.27023\\atlmfc\\include\\atlcom.h" fullword wide
   condition:
      ( uint16(0) == 0x5a4d and filesize < 2000KB and pe.imphash() == "6f4a5db2ce2ae19074b0e088a68b6a05" and ( 8 of them )
      ) or ( all of them )
}

rule _029_025_2 {
   meta:
      description = "mw5 - from files 029, 025"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "c979e54186f670ead05d0b789572f92001e3a7e4df60263570dbd73cbd1f2e62"
      hash2 = "e9c6124bc881f0a0e51525cc7e7b46804c17ea31dddfe0a4ee7cda7f440009cf"
   strings:
      $s1 = "TCommonDialogpqB" fullword ascii
      $s2 = "Unable to insert a line Clipboard does not support Icons.There is no default printer currently selected/Menu '%s' is already bei" wide
      $s3 = "PageSetupDialog1" fullword ascii
      $s4 = "FFFFFF" fullword ascii /* reversed goodware string 'FFFFFF' */
      $s5 = "3#4'4+4/43474<4" fullword ascii /* hex encoded string '4DCGD' */
      $s6 = "OnGetSiteInfoP2C" fullword ascii
      $s7 = "5 5$5(565" fullword ascii /* hex encoded string 'UUe' */
      $s8 = "LargeChangeT" fullword ascii
      $s9 = ": :$:(:,:0:4:8:<:@:D:H:L:\\:|:" fullword ascii
      $s10 = "9U:\\:s:Z<n<" fullword ascii
      $s11 = "TConversiond" fullword ascii
      $s12 = "OnKeyUpP2C" fullword ascii
      $s13 = "TComponentListNexus,8B" fullword ascii
      $s14 = ": :$:(:,:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s15 = "AutoHotkeys@cD" fullword ascii
      $s16 = "OnKeyDownx3C" fullword ascii
      $s17 = "OnKeyUpP" fullword ascii
      $s18 = "9,:<:H:L:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s19 = ":$:D:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s20 = "TCustomCombo " fullword ascii
   condition:
      ( uint16(0) == 0x5a4d and filesize < 2000KB and pe.imphash() == "86cb21fe3fc32c3cf920f8a12457a1ce" and ( 8 of them )
      ) or ( all of them )
}

rule _029_016_028_025_3 {
   meta:
      description = "mw5 - from files 029, 016, 028, 025"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "c979e54186f670ead05d0b789572f92001e3a7e4df60263570dbd73cbd1f2e62"
      hash2 = "75964d39116458ea638a445294d435e75b9e998754ee3ccd7698426791e24419"
      hash3 = "c53bb7c67834bf15a10b577acea646a09ce3b280832147afe9930e515465e075"
      hash4 = "e9c6124bc881f0a0e51525cc7e7b46804c17ea31dddfe0a4ee7cda7f440009cf"
   strings:
      $s1 = "FPUMaskValue" fullword ascii /* Goodware String - occured 23 times */
      $s2 = "TFiler" fullword ascii /* Goodware String - occured 48 times */
      $s3 = "TPersistent" fullword ascii /* Goodware String - occured 55 times */
      $s4 = "Sender" fullword ascii /* Goodware String - occured 194 times */
      $s5 = "status" fullword wide /* Goodware String - occured 328 times */
      $s6 = "Target" fullword ascii /* Goodware String - occured 415 times */
      $s7 = "Source" fullword ascii /* Goodware String - occured 660 times */
      $s8 = "Default" fullword ascii /* Goodware String - occured 914 times */
      $s9 = "Formsp" fullword ascii /* Goodware String - occured 1 times */
      $s10 = " 2001, 2002 Mike Lischke" fullword ascii
      $s11 = "<0@0D0,181<1`1d1" fullword ascii /* Goodware String - occured 1 times */
      $s12 = "2X2`2h2p2x2" fullword ascii /* Goodware String - occured 2 times */
      $s13 = "~D_^[Y]" fullword ascii /* Goodware String - occured 2 times */
      $s14 = "1234567890ABCDEF" ascii /* Goodware String - occured 2 times */
      $s15 = " - Dock zone has no control\"Unable to find a Table of Contents" fullword wide /* Goodware String - occured 3 times */
      $s16 = "Metafile is not valid!Cannot change the size of an icon" fullword wide /* Goodware String - occured 3 times */
      $s17 = "3.454G4e4n4z4" fullword ascii
      $s18 = "9!:C:O:V:`:j:" fullword ascii
      $s19 = ";B0uGj" fullword ascii /* Goodware String - occured 4 times */
      $s20 = ";X0t@S" fullword ascii /* Goodware String - occured 4 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 2000KB and ( 8 of them )
      ) or ( all of them )
}

rule _016_028_4 {
   meta:
      description = "mw5 - from files 016, 028"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "75964d39116458ea638a445294d435e75b9e998754ee3ccd7698426791e24419"
      hash2 = "c53bb7c67834bf15a10b577acea646a09ce3b280832147afe9930e515465e075"
   strings:
      $s1 = "PasswordChar8PD" fullword ascii
      $s2 = "OnDrawItempED" fullword ascii
      $s3 = "=7=?=\\=d=" fullword ascii /* hex encoded string '}' */
      $s4 = "3+5_6F7|7" fullword ascii /* hex encoded string '5ow' */
      $s5 = "l&{dlll&+dlll" fullword ascii
      $s6 = ": :$:@:H:L:P:T:X:\\:`:d:h:l:p:t:x:|:" fullword ascii
      $s7 = "EVariantInvalidArgErrort" fullword ascii
      $s8 = "AutoHotkeysXFD" fullword ascii
      $s9 = "KeyPreviewLMD" fullword ascii
      $s10 = "EThread\\ A" fullword ascii
      $s11 = "EVariantUnexpectedError<" fullword ascii
      $s12 = "HelpKeyword(" fullword ascii
      $s13 = "9!9C:O:\\:n:" fullword ascii
      $s14 = "TThreadList " fullword ascii
      $s15 = "TComponentNamep A" fullword ascii
      $s16 = "l&/dll" fullword ascii
      $s17 = "Chlloll" fullword ascii
      $s18 = "O{%dll" fullword ascii
      $s19 = "Cjllmll" fullword ascii
      $s20 = "Controlsl" fullword ascii
   condition:
      ( uint16(0) == 0x5a4d and filesize < 2000KB and pe.imphash() == "eb3539e8006979f5750642b40bd0f3a8" and ( 8 of them )
      ) or ( all of them )
}

rule _012_015_001_008_021_5 {
   meta:
      description = "mw5 - from files 012, 015, 001, 008, 021"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "68a7be99acbeb91d518c3b3c8aeac1c42987bf24d0127a4eb509a9d311dab915"
      hash2 = "41296cbfd438946ef97ec41ac1d7489264193d6f4ed894d875743219d4342461"
      hash3 = "0f415a88d185713dcb5162ee0089aef65b7af511ee6de9286f3d4f9ef53ad524"
      hash4 = "8fbb358d2ebc29540e03e45f66ecb57b9279e3d7ca7e77fcc03816d980fb7f53"
      hash5 = "a2ec2449e1ca2210d0df6caec4168d7a6b2c459438cbecd1059280d571e20318"
   strings:
      $s1 = "hSystem.Drawing.Bitmap, System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aPADPAD4m[" fullword ascii
      $s2 = "tFex256HtbePPBP.exe" fullword wide
      $s3 = "printPreviewDialog1.Icon" fullword wide
      $s4 = "Text Files (*.txt)|*.txt|All files (*.*)|*.*" fullword wide
      $s5 = "printPreviewDialog1" fullword wide
      $s6 = "getMilkTea" fullword ascii
      $s7 = "getChineseTea" fullword ascii
      $s8 = "getMochaCof" fullword ascii
      $s9 = "getLatteCof" fullword ascii
      $s10 = "getEspresCof" fullword ascii
      $s11 = "getAfriCof" fullword ascii
      $s12 = "getValeCof" fullword ascii
      $s13 = "newrainbow" fullword ascii
      $s14 = "newespresso" fullword ascii
      $s15 = "ec719.resources" fullword wide
      $s16 = "98d30.png" fullword wide
      $s17 = "Service Charge " fullword wide
      $s18 = "Service Charge" fullword wide
      $s19 = "newToolStripButton.Image" fullword wide
      $s20 = "openToolStripButton.Image" fullword wide
   condition:
      ( uint16(0) == 0x5a4d and filesize < 700KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( 8 of them )
      ) or ( all of them )
}

rule _029_016_028_024_025_6 {
   meta:
      description = "mw5 - from files 029, 016, 028, 024, 025"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "c979e54186f670ead05d0b789572f92001e3a7e4df60263570dbd73cbd1f2e62"
      hash2 = "75964d39116458ea638a445294d435e75b9e998754ee3ccd7698426791e24419"
      hash3 = "c53bb7c67834bf15a10b577acea646a09ce3b280832147afe9930e515465e075"
      hash4 = "ad277cb24b005d277552206dd6028826498a7cab057eaf46d377a79f06580d02"
      hash5 = "e9c6124bc881f0a0e51525cc7e7b46804c17ea31dddfe0a4ee7cda7f440009cf"
   strings:
      $s1 = "UrlMon" fullword ascii /* Goodware String - occured 35 times */
      $s2 = "SysUtils" fullword ascii /* Goodware String - occured 49 times */
      $s3 = "Background" fullword wide /* Goodware String - occured 153 times */
      $s4 = "3333f3333333" ascii /* Goodware String - occured 1 times */
      $s5 = "7Project1" fullword ascii
      $s6 = "Not enough timers available" fullword wide /* Goodware String - occured 2 times */
      $s7 = "!'%s' is not a valid integer value" fullword wide /* Goodware String - occured 2 times */
      $s8 = "TForm1" fullword ascii /* Goodware String - occured 3 times */
      $s9 = "3333333383" ascii
      $s10 = "333DDD33333" ascii
      $s11 = "No help found for %s#No context-sensitive help installed$No topic-based help system installed" fullword wide /* Goodware String - occured 4 times */
      $s12 = "ExtActns" fullword ascii /* Goodware String - occured 5 times */
      $s13 = "ExtDlgs" fullword ascii /* Goodware String - occured 5 times */
      $s14 = "WinHelpViewer" fullword ascii /* Goodware String - occured 5 times */
      $s15 = "Error creating window class+Cannot focus a disabled or invisible window!Control '%s' has no parent window" fullword wide /* Goodware String - occured 5 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 2000KB and ( 8 of them )
      ) or ( all of them )
}

rule _010_020_7 {
   meta:
      description = "mw5 - from files 010, 020"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "24caaf1f2c828fc3a04eb1603de89519f509de1090a3ad2b2ff7beca7232d4bb"
      hash2 = "2a76819be5a29258097838911daddbaac374acb25a6aaf48729930a1ea21612e"
   strings:
      $s1 = "Select * from Win32_ComputerSystem" fullword wide
      $s2 = "vmware" fullword wide
      $s3 = "microsoft corporation" fullword wide
      $s4 = "VirtualBox" fullword wide /* Goodware String - occured 5 times */
      $s5 = "GetProcessesByName" fullword ascii /* Goodware String - occured 42 times */
      $s6 = "DownloadFile" fullword ascii /* Goodware String - occured 69 times */
      $s7 = "windir" fullword wide /* Goodware String - occured 85 times */
      $s8 = "CreateSubKey" fullword ascii /* Goodware String - occured 219 times */
      $s9 = "Manufacturer" fullword wide /* Goodware String - occured 395 times */
      $s10 = "Connect" fullword ascii /* Goodware String - occured 452 times */
      $s11 = "ThreadSafeObjectProvider`1" fullword ascii /* Goodware String - occured 1 times */
      $s12 = "My.Computer" fullword ascii /* Goodware String - occured 1 times */
      $s13 = "My.User" fullword ascii /* Goodware String - occured 1 times */
      $s14 = "m_ThreadStaticValue" fullword ascii /* Goodware String - occured 1 times */
      $s15 = "My.WebServices" fullword ascii /* Goodware String - occured 1 times */
      $s16 = "My.Application" fullword ascii /* Goodware String - occured 1 times */
      $s17 = "MyProject" fullword ascii /* Goodware String - occured 1 times */
      $s18 = "MyApplication" fullword ascii /* Goodware String - occured 1 times */
      $s19 = "MyWebServices" fullword ascii /* Goodware String - occured 1 times */
      $s20 = "\\root\\SecurityCenter2" fullword wide /* Goodware String - occured 1 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 300KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( 8 of them )
      ) or ( all of them )
}

rule _011_007_020_8 {
   meta:
      description = "mw5 - from files 011, 007, 020"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "33f89af2ea3baf8978621bf7d11d93462195f7f9c62f2af3b0902beb5640ef4f"
      hash2 = "08c7fe8e6248b90a7d9e7765fec09fb6e24f502c6bea44b90665ab522f863176"
      hash3 = "2a76819be5a29258097838911daddbaac374acb25a6aaf48729930a1ea21612e"
   strings:
      $s1 = "GetResourceString" fullword ascii /* Goodware String - occured 126 times */
      $s2 = "Hashtable" fullword ascii /* Goodware String - occured 647 times */
      $s3 = "_Lambda$__1" fullword ascii
      $s4 = "_Lambda$__7" fullword ascii
      $s5 = "_Lambda$__5" fullword ascii
      $s6 = "_Lambda$__10" fullword ascii
      $s7 = "My.MyProject.Forms" fullword ascii /* Goodware String - occured 1 times */
      $s8 = "_Lambda$__9" fullword ascii
      $s9 = "_Lambda$__2" fullword ascii
      $s10 = "_Lambda$__3" fullword ascii
      $s11 = "_Lambda$__6" fullword ascii
      $s12 = "<generated method>" fullword ascii
      $s13 = "_Lambda$__4" fullword ascii
      $s14 = "_Lambda$__8" fullword ascii
      $s15 = "System.Windows.Forms.Form" fullword ascii /* Goodware String - occured 1 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 600KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( 8 of them )
      ) or ( all of them )
}

rule _011_007_010_020_9 {
   meta:
      description = "mw5 - from files 011, 007, 010, 020"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "33f89af2ea3baf8978621bf7d11d93462195f7f9c62f2af3b0902beb5640ef4f"
      hash2 = "08c7fe8e6248b90a7d9e7765fec09fb6e24f502c6bea44b90665ab522f863176"
      hash3 = "24caaf1f2c828fc3a04eb1603de89519f509de1090a3ad2b2ff7beca7232d4bb"
      hash4 = "2a76819be5a29258097838911daddbaac374acb25a6aaf48729930a1ea21612e"
   strings:
      $s1 = "CompareString" fullword ascii /* Goodware String - occured 28 times */
      $s2 = "System.Net.Sockets" fullword ascii /* Goodware String - occured 150 times */
      $s3 = "get_MachineName" fullword ascii /* Goodware String - occured 326 times */
      $s4 = "System.Security.Principal" fullword ascii /* Goodware String - occured 379 times */
      $s5 = "4System.Web.Services.Protocols.SoapHttpClientProtocol" fullword ascii /* Goodware String - occured 1 times */
      $s6 = "MyTemplate" fullword ascii /* Goodware String - occured 1 times */
      $s7 = "Dispose__Instance__" fullword ascii /* Goodware String - occured 1 times */
      $s8 = "Create__Instance__" fullword ascii /* Goodware String - occured 1 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 600KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( all of them )
      ) or ( all of them )
}

rule _011_019_007_10 {
   meta:
      description = "mw5 - from files 011, 019, 007"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "33f89af2ea3baf8978621bf7d11d93462195f7f9c62f2af3b0902beb5640ef4f"
      hash2 = "7923413083f509af76f2ef527befa01336fccb7bfe9017bffd6f6bc5753a177f"
      hash3 = "08c7fe8e6248b90a7d9e7765fec09fb6e24f502c6bea44b90665ab522f863176"
   strings:
      $s1 = "feffefefea" ascii
      $s2 = "afeffeefef" ascii
      $s3 = "ffefeeffe" ascii
      $s4 = "ffefeeffefea" ascii
      $s5 = "Console" fullword ascii /* Goodware String - occured 528 times */
   condition:
      ( uint16(0) == 0x5a4d and filesize < 900KB and pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and ( all of them )
      ) or ( all of them )
}

rule _023_024_11 {
   meta:
      description = "mw5 - from files 023, 024"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "ad2a9c2defbf66cdae0bb795b753d9cd0a8a56b3b8dc3ad5d38a2a1e95a332ae"
      hash2 = "ad277cb24b005d277552206dd6028826498a7cab057eaf46d377a79f06580d02"
   strings:
      $s1 = "omboBoxEdit" fullword ascii
      $s2 = " MSWHEEL" fullword ascii /* Goodware String - occured 1 times */
      $s3 = "0r=<9w9i" fullword ascii /* Goodware String - occured 1 times */
      $s4 = "IcqIs" fullword ascii /* Goodware String - occured 1 times */
      $s5 = "HitTs?y" fullword ascii
      $s6 = "HIFTJIS" fullword ascii /* Goodware String - occured 2 times */
      $s7 = "%_ROLL" fullword ascii /* Goodware String - occured 2 times */
      $s8 = "HIh;J4u" fullword ascii /* Goodware String - occured 2 times */
      $s9 = "b,>wXr" fullword ascii
      $s10 = "_Nu6;_" fullword ascii
      $s11 = "t;Cpu'" fullword ascii
      $s12 = "fZ]_^[" fullword ascii
      $s13 = "P$TUIU" fullword ascii
      $s14 = "ive>NoAcc" fullword ascii
      $s15 = "*-&F&Q" fullword ascii
      $s16 = "9WE'Up" fullword ascii
      $s17 = " 2001," fullword ascii
      $s18 = "8,fk<d" fullword ascii
   condition:
      ( uint16(0) == 0x5a4d and filesize < 1000KB and ( 8 of them )
      ) or ( all of them )
}

rule _004_022_12 {
   meta:
      description = "mw5 - from files 004, 022"
      author = "yarGen Rule Generator"
      reference = "https://github.com/Neo23x0/yarGen"
      date = "2024-04-17"
      hash1 = "2f2e75affe9217c7211043936678fb1777e2db4a8f1986b8805ddb1e84e9e99b"
      hash2 = "a2369aa6af898b3da1e73381fbc2160c2382929afcbffef858e757ca129fe1e0"
   strings:
      $x1 = "C:\\crysis\\Release\\PDB\\payload.pdb" fullword ascii
      $s2 = "sssssbsss" fullword ascii
      $s3 = "sssssbs" fullword ascii
      $s4 = " !\"#$%&'()*+,-./0123@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" ascii /* Goodware String - occured 1 times */
      $s5 = "RSDS%~m" fullword ascii
   condition:
      ( uint16(0) == 0x5a4d and filesize < 300KB and pe.imphash() == "f86dec4a80961955a89e7ed62046cc0e" and ( 1 of ($x*) and all of them )
      ) or ( all of them )
}

