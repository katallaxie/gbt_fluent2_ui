/// Used for remove diacritics words.
/// Source: https://www.woolha.com/tutorials/dart-remove-diacritics-accents-from-a-string-examples
class Diacritics {
  static final _map = <String, String>{};

  Diacritics() {
    if (_map.isEmpty) {
      _init();
    }
  }

  void _init() {
    _register('A', [
      'A',
      'Á',
      'Ă',
      'Ắ',
      'Ặ',
      'Ằ',
      'Ẳ',
      'Ẵ',
      'Ǎ',
      'Â',
      'Ấ',
      'Ậ',
      'Ầ',
      'Ẩ',
      'Ẫ',
      'Ä',
      'Ạ',
      'À',
      'Ả',
      'Ā',
      'Ą',
      'Å',
      'Ǻ',
      'Ã',
      'Ⓐ',
      'Ａ',
      'Ȧ',
      'Ǡ',
      'Ǟ',
      'Ȁ',
      'Ȃ',
      'Ḁ',
      'Ⱥ',
      'Ɐ'
    ]);
    _register('B', ['B', 'Ḅ', 'Ɓ', 'Ⓑ', 'Ｂ', 'Ḃ', 'Ḇ', 'Ƀ', 'Ƃ']);
    _register(
        'C', ['C', 'Ć', 'Č', 'Ç', 'Ĉ', 'Ċ', 'ʗ', 'Ⓒ', 'Ｃ', 'Ḉ', 'Ƈ', 'Ȼ', 'Ꜿ']);
    _register('D', [
      'D',
      'Ď',
      'Ḓ',
      'Ḍ',
      'Ɗ',
      'Ḏ',
      'Đ',
      'Ð',
      'Ⓓ',
      'Ｄ',
      'Ḋ',
      'Ḑ',
      'Ƌ',
      'Ɖ',
      'Ꝺ'
    ]);
    _register('E', [
      'E',
      'É',
      'Ĕ',
      'Ě',
      'Ê',
      'Ế',
      'Ệ',
      'Ề',
      'Ể',
      'Ễ',
      'Ë',
      'Ė',
      'Ẹ',
      'È',
      'Ẻ',
      'Ē',
      'Ę',
      'Ẽ',
      'Ɛ',
      'Ə',
      'Ⓔ',
      'Ｅ',
      'Ḕ',
      'Ḗ',
      'Ȅ',
      'Ȇ',
      'Ȩ',
      'Ḝ',
      'Ḙ',
      'Ḛ',
      'Ǝ'
    ]);
    _register('F', ['F', 'Ƒ', 'Ⓕ', 'Ｆ', 'Ḟ', 'Ꝼ']);
    _register('G', [
      'G", ' 'Ǵ',
      'Ğ',
      'Ǧ',
      'Ģ',
      'Ĝ',
      'Ġ',
      'Ḡ',
      'ʛ',
      'G',
      'Ⓖ',
      'Ｇ',
      'Ǵ',
      'Ǥ',
      'Ɠ',
      'Ꞡ',
      'Ᵹ',
      'Ꝿ'
    ]);
    _register('H',
        ['H', 'Ḫ', 'Ĥ', 'Ḥ', 'Ħ', 'Ⓗ', 'Ｈ', 'Ḣ', 'Ḧ', 'Ȟ', 'Ḩ', 'Ⱨ', 'Ⱶ', 'Ɥ']);
    _register('I', [
      'I',
      'Í',
      'Ĭ',
      'Ǐ',
      'Î',
      'Ï',
      'İ',
      'Ị',
      'Ì',
      'Ỉ',
      'Ī',
      'Į',
      'Ĩ',
      'Ⓘ',
      'Ｉ',
      'Ḯ',
      'Ȉ',
      'Ȋ',
      'Ḭ',
      'Ɨ'
    ]);
    _register('J', ['J', 'Ĵ', 'Ⓙ', 'Ｊ', 'Ɉ']);
    _register('K',
        ['K', 'Ķ', 'Ḳ', 'Ƙ', 'Ḵ', 'Ⓚ', 'Ｋ', 'Ḱ', 'Ǩ', 'Ⱪ', 'Ꝁ', 'Ꝃ', 'Ꝅ', 'Ꞣ']);
    _register('L', [
      'L',
      'Ĺ',
      'Ƚ',
      'Ľ',
      'Ļ',
      'Ḽ',
      'Ḷ',
      'Ḹ',
      'Ḻ',
      'Ŀ',
      'Ł',
      'Ⓛ',
      'Ｌ',
      'Ɫ',
      'Ⱡ',
      'Ꝉ',
      'Ꝇ',
      'Ꞁ'
    ]);
    _register('M', ['M', 'Ḿ', 'Ṁ', 'Ṃ', 'Ⓜ', 'Ｍ', 'Ɱ', 'Ɯ']);
    _register('N', [
      'N',
      'Ń',
      'Ň',
      'Ņ',
      'Ṋ',
      'Ṅ',
      'Ṇ',
      'Ǹ',
      'Ɲ',
      'Ṉ',
      'Ñ',
      'Ⓝ',
      'Ｎ',
      'Ƞ',
      'Ꞑ',
      'Ꞥ'
    ]);
    _register('O', [
      'O',
      'Ó',
      'Ŏ',
      'Ǒ',
      'Ô',
      'Ố',
      'Ộ',
      'Ồ',
      'Ổ',
      'Ỗ',
      'Ö',
      'Ọ',
      'Ő',
      'Ò',
      'Ỏ',
      'Ơ',
      'Ớ',
      'Ợ',
      'Ờ',
      'Ở',
      'Ỡ',
      'Ō',
      'Ɵ',
      'Ǫ',
      'Ø',
      'Ǿ',
      'Õ',
      'Ⓞ',
      'Ｏ',
      'Ṍ',
      'Ȭ',
      'Ṏ',
      'Ṑ',
      'Ṓ',
      'Ȯ',
      'Ȱ',
      'Ȫ',
      'Ȍ',
      'Ȏ',
      'Ǭ',
      '  - O',
      'Ꝋ',
      'Ꝍ',
      'Ɔ'
    ]);
    _register('P', ['P', 'Ⓟ', 'Ｐ', 'Ṕ', 'Ṗ', 'Ƥ', 'Ᵽ', 'Ꝑ', 'Ꝓ', 'Ꝕ']);
    _register('Q', ['Q', 'Ⓠ', 'Ｑ', 'Ꝗ', 'Ꝙ', 'Ɋ']);
    _register('R', [
      'R',
      'Ŕ',
      'Ř',
      'Ŗ',
      'Ṙ',
      'Ṛ',
      'Ṝ',
      'Ṟ',
      'ʁ',
      'Ⓡ',
      'Ｒ',
      'Ȑ',
      'Ȓ',
      'Ɍ',
      'Ɽ',
      'Ꝛ',
      'Ꞧ',
      'Ꞃ'
    ]);
    _register('S', [
      'S',
      'Ś',
      'Š',
      'Ş',
      'Ŝ',
      'Ș',
      'Ṡ',
      'Ṣ',
      'ẞ',
      'Ⓢ',
      'Ｓ',
      'Ṥ',
      'Ṧ',
      'Ṩ',
      'Ȿ',
      'Ꞩ',
      'Ꞅ'
    ]);
    _register('T', [
      'T',
      'Ť',
      'Ţ',
      'Ṱ',
      'Ț',
      'Ṭ',
      'Ṯ',
      'Ŧ',
      'Ⓣ',
      'Ｔ',
      'Ṫ',
      'Ƭ',
      'Ʈ',
      'Ⱦ',
      'Ꞇ'
    ]);
    _register('U', [
      'U',
      'Ú',
      'Ŭ',
      'Ǔ',
      'Û',
      'Ü',
      'Ǘ',
      'Ǚ',
      'Ǜ',
      'Ǖ',
      'Ụ',
      'Ű',
      'Ù',
      'Ủ',
      'Ư',
      'Ứ',
      'Ự',
      'Ừ',
      'Ử',
      'Ữ',
      'Ū',
      'Ų',
      'Ů',
      'Ũ',
      'Ⓤ',
      'Ｕ',
      'Ṹ',
      'Ṻ',
      'Ȕ',
      'Ȗ',
      'Ṳ',
      'Ṷ',
      'Ṵ',
      'Ʉ'
    ]);
    _register('V', ['V', 'Ⓥ', 'Ｖ', 'Ṽ', 'Ṿ', 'Ʋ', 'Ꝟ', 'Ʌ']);
    _register('W', ['W', 'Ẃ', 'Ŵ', 'Ẅ', 'Ẁ', 'Ⓦ', 'Ｗ', 'Ẇ', 'Ẉ', 'Ⱳ']);
    _register('X', ['X', 'Ⓧ', 'Ｘ', 'Ẋ', 'Ẍ']);
    _register('Y', [
      'Y',
      'Ý',
      'Ŷ',
      'Ÿ',
      'Ẏ',
      'Ỵ',
      'Ỳ',
      'Ƴ',
      'Ỷ',
      'Ȳ',
      'Ỹ',
      'Ⓨ',
      'Ｙ',
      'Ɏ',
      'Ỿ'
    ]);
    _register('Z', [
      'Z',
      'Ź',
      'Ž',
      'Ż',
      'Ẓ',
      'Ẕ',
      'Ƶ',
      'Ⓩ',
      'Ｚ',
      'Ẑ',
      'Ȥ',
      'Ɀ',
      'Ⱬ',
      'Ꝣ',
      'ʒ',
      'ǯ',
      'ʓ'
    ]);
    _register('a', [
      'a',
      'á',
      'ă',
      'ắ',
      'ặ',
      'ằ',
      'ẳ',
      'ẵ',
      'ǎ',
      'â',
      'ấ',
      'ậ',
      'ầ',
      'ẩ',
      'ẫ',
      'ä',
      'ạ',
      'à',
      'ả',
      'ā',
      'ą',
      'å',
      'ǻ',
      'ã',
      'ɑ',
      'ɐ',
      'ɒ',
      'ⓐ',
      'ａ',
      'ẚ',
      'ȧ',
      'ǡ',
      'ǟ',
      'ȁ',
      'ȃ',
      'ḁ',
      'ⱥ',
      'ə',
      'ɚ'
    ]);
    _register('b', ['ḅ', 'ɓ', 'b', 'ⓑ', 'ｂ', 'ḃ', 'ḇ', 'ƀ', 'ƃ']);
    _register('c',
        ['ć', 'č', 'ç', 'ĉ', 'ɕ', 'ċ', 'c', 'ⓒ', 'ｃ', 'ḉ', 'ƈ', 'ȼ', 'ꜿ', 'ↄ']);
    _register('d', [
      'ď',
      'ḓ',
      'ḍ',
      'ɗ',
      'ḏ',
      'đ',
      'ɖ',
      'ð',
      'd',
      'ⓓ',
      'ｄ',
      'ḋ',
      'ḑ',
      'ƌ',
      'ꝺ'
    ]);
    _register('e', [
      'é',
      'ĕ',
      'ě',
      'ê',
      'ế',
      'ệ',
      'ề',
      'ể',
      'ễ',
      'ë',
      'ė',
      'ẹ',
      'è',
      'ẻ',
      'ē',
      'ę',
      'ẽ',
      'ɘ',
      'ɜ',
      'ɝ',
      'ʚ',
      'ɞ',
      'e',
      'ⓔ',
      'ｅ',
      'ḕ',
      'ḗ',
      'ȅ',
      'ȇ',
      'ȩ',
      'ḝ',
      'ḙ',
      'ḛ',
      'ɇ',
      'ǝ',
      'ɛ'
    ]);
    _register('f', ['ƒ', 'f', 'ⓕ', 'ｆ', 'ḟ', 'ꝼ']);
    _register('g', [
      'ǵ',
      'ğ',
      'ǧ',
      'ģ',
      'ĝ',
      'ġ',
      'ɠ',
      'ḡ',
      'ɡ',
      'ɣ',
      'g',
      'ⓖ',
      'ｇ',
      'ǥ',
      'ꞡ',
      'ᵹ',
      'ꝿ'
    ]);
    _register('h', [
      'ḫ',
      'ĥ',
      'ḥ',
      'ɦ',
      'ẖ',
      'ħ',
      'ɧ',
      'ɥ',
      'ʮ',
      'ʯ',
      'h',
      'ⓗ',
      'ｈ',
      'ḣ',
      'ḧ',
      'ȟ',
      'ḩ',
      'ⱨ',
      'ⱶ'
    ]);
    _register('i', [
      'í',
      'ĭ',
      'ǐ',
      'î',
      'ï',
      'ị',
      'ì',
      'ỉ',
      'ī',
      'į',
      'ɨ',
      'ĩ',
      'ɩ',
      'ı',
      'i',
      'ⓘ',
      'ｉ',
      'ḯ',
      'ȉ',
      'ȋ',
      'ḭ'
    ]);
    _register('j', ['ǰ', 'ĵ', 'ʝ', 'ȷ', 'ɟ', 'ʄ', 'j', 'ⓙ', 'ｊ', 'ɉ']);
    _register('k', [
      'ķ',
      'ḳ',
      'ƙ',
      'ḵ',
      'ĸ',
      'ʞ',
      'k',
      'ⓚ',
      'ｋ',
      'ḱ',
      'ǩ',
      'ⱪ',
      'ꝁ',
      'ꝃ',
      'ꝅ',
      'ꞣ'
    ]);
    _register('l', [
      'ĺ',
      'ƚ',
      'ɬ',
      'ľ',
      'ļ',
      'ḽ',
      'ḷ',
      'ḹ',
      'ḻ',
      'ŀ',
      'ɫ',
      'ɭ',
      'ł',
      'ƛ',
      'l',
      'ⓛ',
      'ｌ',
      'ⱡ',
      'ꝉ',
      'ꞁ',
      'ꝇ'
    ]);
    _register('m', ['ḿ', 'ṁ', 'ṃ', 'ɱ', 'ɯ', 'ɰ', 'm', 'ⓜ', 'ｍ']);
    _register('n', [
      'ŉ',
      'ń',
      'ň',
      'ņ',
      'ṋ',
      'ṅ',
      'ṇ',
      'ǹ',
      'ɲ',
      'ṉ',
      'ɳ',
      'ñ',
      'ŋ',
      'Ŋ',
      'n',
      'ꝕⓝ',
      'ｎ',
      'ƞ',
      'ꞑ',
      'ꞥ',
      'л',
      'ԉ',
      'ⓝ'
    ]);
    _register('o', [
      'ó',
      'ŏ',
      'ǒ',
      'ô',
      'ố',
      'ộ',
      'ồ',
      'ổ',
      'ỗ',
      'ö',
      'ọ',
      'ő',
      'ò',
      'ỏ',
      'ơ',
      'ớ',
      'ợ',
      'ờ',
      'ở',
      'ỡ',
      'ō',
      'ǫ',
      'ø',
      'ǿ',
      'õ',
      'ɔ',
      'ɵ',
      'ʘ',
      '߀',
      'o',
      'ⓞ',
      'ｏ',
      'ṍ',
      'ȭ',
      'ṏ',
      'ṑ',
      'ṓ',
      'ȯ',
      'ȱ',
      'ȫ',
      'ȍ',
      'ȏ',
      'ǭ',
      'ꝋ',
      'ꝍ'
    ]);
    _register('p', ['ɸ', 'p', 'ⓟ', 'ｐ', 'ṕ', 'ṗ', 'ƥ', 'ᵽ', 'ꝑ', 'ꝓ', 'ꝕ']);
    _register('q', ['ʠ', 'q', 'ⓠ', 'ｑ', 'ɋ', 'ꝗ', 'ꝙ']);
    _register('r', [
      'ŕ',
      'ř',
      'ŗ',
      'ṙ',
      'ṛ',
      'ṝ',
      'ɾ',
      'ṟ',
      'ɼ',
      'ɽ',
      'ɿ',
      'ɹ',
      'ɻ',
      'ɺ',
      'r',
      'ⓡ',
      'ｒ',
      'ȑ',
      'ȓ',
      'ɍ',
      'ꝛ',
      'ꞧ',
      'ꞃ'
    ]);
    _register('s', [
      'ś',
      'š',
      'ş',
      'ŝ',
      'ș',
      'ṡ',
      'ṣ',
      'ʂ',
      'ſ',
      'ʃ',
      'ʆ',
      'ʅ',
      's',
      'ⓢ',
      'ｓ',
      'ṥ',
      'ṧ',
      'ṩ',
      'ȿ',
      'ꞩ',
      'ꞅ',
      'ẛ'
    ]);
    _register('t', [
      'ť',
      'ţ',
      'ṱ',
      'ț',
      'ẗ',
      'ṭ',
      'ṯ',
      'ʈ',
      'ŧ',
      'ʇ',
      't',
      'ⓣ',
      'ｔ',
      'ṫ',
      'ƭ',
      'ⱦ',
      'ꞇ'
    ]);
    _register('u', [
      'ʉ',
      'ú',
      'ŭ',
      'ǔ',
      'û',
      'ü',
      'ǘ',
      'ǚ',
      'ǜ',
      'ǖ',
      'ụ',
      'ű',
      'ù',
      'ủ',
      'ư',
      'ứ',
      'ự',
      'ừ',
      'ử',
      'ữ',
      'ū',
      'ų',
      'ů',
      'ũ',
      'ʊ',
      'u',
      'ⓤ',
      'ｕ',
      'ṹ',
      'ṻ',
      'ȕ',
      'ȗ',
      'ṳ',
      'ṷ',
      'ṵ'
    ]);
    _register('v', ['ʋ', 'ʌ', 'v', 'ⓥ', 'ｖ', 'ṽ', 'ṿ', 'ꝟ']);
    _register(
        'w', ['ẃ', 'ŵ', 'ẅ', 'ẁ', 'ʍ', 'w', 'ⓦ', 'ｗ', 'ẇ', 'ẘ', 'ẉ', 'ⱳ']);
    _register('x', ['x', 'ⓧ', 'ｘ', 'ẋ', 'ẍ']);
    _register('y', [
      'ý',
      'ŷ',
      'ÿ',
      'ẏ',
      'ỵ',
      'ỳ',
      'ƴ',
      'ỷ',
      'ȳ',
      'ỹ',
      'ʎ',
      'y',
      'ⓨ',
      'ｙ',
      'ẙ',
      'ɏ',
      'ỿ'
    ]);
    _register('z', [
      'ź',
      'ž',
      'ʑ',
      'ż',
      'ẓ',
      'ẕ',
      'ʐ',
      'ƶ',
      'z',
      'ⓩ',
      'ｚ',
      'ẑ',
      'ȥ',
      'ɀ',
      'ⱬ',
      'ꝣ'
    ]);
    _register('AA', ['Ꜳ']);
    _register('AE', ['Æ', 'Ǽ', 'Ǣ']);
    _register('AO', ['Ꜵ']);
    _register('AU', ['Ꜷ']);
    _register('AV', ['Ꜹ', 'Ꜻ']);
    _register('AY', ['Ꜽ']);
    _register('DZ', ['Ǳ', 'Ǆ']);
    _register('Dz', ['ǲ', 'ǅ']);
    _register('IJJ', ['Ĳ']);
    _register('LJ', ['Ǉ']);
    _register('Lj', ['ǈ']);
    _register('NJ', ['Ǌ']);
    _register('Nj', ['ǋ']);
    _register('OE', ['ɶ']);
    _register('OI', ['Ƣ']);
    _register('OO', ['Ꝏ']);
    _register('OU', ['Ȣ']);
    _register('Th', ['Þ']);
    _register('TZ', ['Ꜩ']);
    _register('VY', ['Ꝡ']);
    _register('WW', ['ʬ']);
    _register('aa', ['ꜳ']);
    _register('ae', ['æ', 'ǽ', 'ǣ']);
    _register('ao', ['ꜵ']);
    _register('au', ['ꜷ']);
    _register('av', ['ꜹ', 'ꜻ']);
    _register('ay', ['ꜽ']);
    _register('dZ', ['ʤ', 'ʣ', 'ʥ']);
    _register('dz', ['ǳ', 'ǆ']);
    _register('ff', ['ﬀ']);
    _register('fi', ['ﬁ']);
    _register('fl', ['ﬂ']);
    _register('ffi', ['ﬃ']);
    _register('ffl', ['ﬄ']);
    _register('fN', ['ʩ']);
    _register('hv', ['ƕ']);
    _register('ij', ['ĳ']);
    _register('lj', ['ǉ']);
    _register('lZ', ['ɮ']);
    _register('ls', ['ʪ']);
    _register('lz', ['ʫ']);
    _register('nj', ['ǌ']);
    _register('oe', ['Œ', 'œ']);
    _register('oi', ['ƣ']);
    _register('ou', ['ȣ']);
    _register('oo', ['ꝏ']);
    _register('ss', ['ß']);
    _register('tC', ['ʨ']);
    _register('tS', ['ʧ']);
    _register('th', ['þ']);
    _register('ts', ['ʦ']);
    _register('tz', ['ꜩ']);
    _register('vy', ['ꝡ']);
  }

  void _register(String asciiChar, List<String> diacriticChars) {
    for (final diacriticChar in diacriticChars) {
      _map[diacriticChar] = asciiChar;
    }
  }

  Map<String, String> get map => _map;
}

/// Extension that implement the 'withoutDiacritics' method
extension DiacriticsAwareString on String {
  /// Get a new String with replaced diacritics
  String withoutDiacritics(Diacritics diacritics) {
    final diacriticsMap = diacritics.map;

    return splitMapJoin(
      '',
      onNonMatch: (char) => diacriticsMap[char] ?? char,
    );
  }
}