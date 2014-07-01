
module Translatinator
  attr_accessor :input

  def self.lang
    languageMenu = {
        :Afrikaans => 'AF',
        :Albanian => 'SQ',
        :Arabic => 'AR',
        :Azerbaijani => 'AZ',
        :Basque => 'EU',
        :Bengali => 'BN',
        :Belarusian => 'BE',
        :Bulgarian => 'BG',
        :Catalan => 'CA',
        :Chinese_Simplified => 'ZH-CN',
        :Chinese_Traditional => 'ZH-TW',
        :Croatian => 'HR',
        :Czech => 'CS',
        :Danish => 'DA',
        :Dutch => 'NL',
        :English => 'EN',
        :Esperanto => 'EO',
        :Estonian => 'ET',
        :Filipino => 'TL',
        :Finnish => 'FI',
        :French => 'FR',
        :Galician => 'GL',
        :Georgian => 'KA',
        :German => 'DE',
        :Greek => 'EL',
        :Gujarati => 'GU',
        :Haitian_Creole => 'HT',
        :Hebrew => 'IW',
        :Hindi => 'HI',
        :Hungarian => 'HU',
        :Icelandic => 'IS',
        :Indonesian => 'ID',
        :Irish => 'GA',
        :Italian => 'IT',
        :Japanese => 'JA',
        :Kannada => 'KN',
        :Korean => 'KO',
        :Latin => 'LA',
        :Latvian => 'LV',
        :Lithuanian => 'LT',
        :Macedonian => 'MK',
        :Malay => 'MS',
        :Maltese => 'MT',
        :Norwegian => 'NO',
        :Persian => 'FA',
        :Polish => 'PL',
        :Portuguese => 'PT',
        :Romanian => 'RO',
        :Russian => 'RU',
        :Serbian => 'SR',
        :Slovak => 'SK',
        :Slovenian => 'SL',
        :Spanish => 'ES',
        :Swahili => 'SW',
        :Swedish => 'SV',
        :Tamil => 'TA',
        :Telugu => 'TE',
        :Thai => 'TH',
        :Turkish => 'TR',
        :Ukrainian => 'UK',
        :Urdu => 'UR',
        :Vietnamese => 'VI',
        :Welsh => 'CY',
        :Yiddish => 'YI'
    }

    return languageMenu
    puts ' '
  end

  def self.help
    "Welcome to Translatinator!

    Below are the commands to get your text translated.
    -lang ............................ Display supported languages and abbreviations.
    -use LANG \"text-to-translate\" .... Translate text (LANG = language abbreviation).
    -help, -menu ..................... Show these commands again.

      ***** **** *** ** *   Don't use !'s because... BUGS!  * ** *** **** *****
     "
  end

  def self.translate(language, text)
    if text.downcase == "i'll be back"
        puts Translatinator.rad
    else
        text = text.gsub(' ', '%20')

        result = 'https://www.googleapis.com/language/translate/v2?key=****YOUR KEY HERE*****&q=' + text + '&source=en&target=' + language
        result = HTTP.get(result)
        parsed =  JSON.parse(result)

        unless parsed["data"]["translations"].count > 1
          parsed["data"]["translations"].each do |x|
            done = x["translatedText"].gsub("&#39;", "'")
            return done
          end
        end
    end
    puts ' '
  end

  def self.rad
    "SCHWARZENEGGER MODE ACTIVATED:

                    ````                   ``, .+@@' .::;::`` :;,@@#;;:#
                     @'`    .;,     .` +,     `;@@@@@#:;;::`  @`;;:,,'#:
                    ``;   ,`.,      ;..,       :..@@@@.:;,:`  @@,@#:.:':
                    :@@@@#';     `. +:++` ``  `  `;++@ :;::`   @ @+:,:;:
                     ```, `   ``.#;,@+@@..;'.`.  `'#'  ::;,`    `@'`.:;:
                    `        :.@@@@@@@@@@@@@#:#`;;;;@##::::`   '`@',,,':
                    `      ,',@@@@@@@@@@@@@@@@@#::  `  ,:;,    @.@;,.,;,
                          .':+@@@@@@@@@@@@@@@@@@#:  .  ,,:,     .#;,.:,:
          @               +';@@@@@@@@@@@@@@@@@@@@: ``  ,:,.`   ;`@:`.,:,
           @@+@:         `+;+@@@@@@@@@@@@@@@@@@@@@# `  ::..`   @.@;:,.`,
           @  @@          ,:'@@@@@@@@@@@@@@@@@@@@@@  , :,..`     @,...`,
          `+  @@           .,+@@@@@@@@@@@@@@@@@@@@#    ,,..  ``  @:.,..:
          `'  @@           `,+@@@@@@@@@@@@@@@@@@@@#    .,,,   `  @',.;`,
          .;  @@          ` ,;#@@@@@@@@@@@@@@@@@@@+`   .:,:  . . @;,.,:,
        ` ,:  @@          ` ;#@@@@@@@@@@@@@@@@@@@@#;   ,,,,`    `@,.:,.'
        ,`;; `@@          ``#@@@@@@@@@@@@@@@@@@@@@@#   ,:;;.   : @:.:`.,
        +;@'  @@         `             `.``    ``.     ,,''`   @'@'.,,`:
        @#@# `@@                        .@             .:,,`    ,:`..,;'
        @@@# `@@                        `@      ``      :,,`    #:,`,:.;
        @@@@ .@@                        ,`     .,,.     ::,      `.`,:`;
        @@@@ .@@        @               @@  :  ,,,,   . ::.  ` #  ,`::,+
,.   `  @@@# ,@@                   @   @@@@ @  .,,.     ,,.  , `@.,`...:
 ;.`' .`#@@# ,@@                       @@@@    `..`     ::,` ` .@@``@.`@
   .` , +@@@ :@@                      :@@@@,            ,,.     ``@,;# `
        :@@# ;@@                     :@@@@@@,          ` ``    +, +  ;@
 .``.` :'@@# +@@                    ,,@@@@@@,,         ` `   :;,::::;#+:
 @` ,`` #@@#`'@@          `.......;#;#@;@@@@@+':;,;;: `,,,` @'':@,'#@#;@
 ,` ``  @@@# ;@@          .,,:;''#@+'#,,:++,'+++';;:  `  #;`.+;.'@# @:`
..`.``` @@@# ;@@    ;     `,,:;;''++@,;``..`:;;';:,,   ``` @:#;@#++`:,;.
`.,`. ` +@+@ ;@@    #      .,:::::;#@,,.;+',,@;::,,, `..., @+#++#++++'#+
.``.`.` '@;@ ;@@    :`     `,,,,,,#@@;.,,,,,:@@,,,,` ```,:.:+#+`@+#+'+++
```` `` ,@.@@:@@    `:.    `.,.,,+@@@@@@:.:@@@@#...``  `.,;';#;`:#+';;++
`.`.`.` `#`@@:@@    `:..   ````.:@@@@@#:;###@@@@,`` `  `.:`@+#'+###+''##
....`.`  #`#` @@@    .,.   ``  .:@@;;....,,,,#@@#  ``  `.:  #@'#@##++++#
`..,`.`  , +  @@+          `   ,+@#: `#@@@@@ `'@@``.    `` `##';,##''+'#
.....    ` ,  @@'         ``   :#@@,+@@@@@@@@@,@@.``    `` @:#'###++#+'+
.`..```    `  @#:          `   .'@@@#;;;;;;;;@@@#:.`    `.`@+@+####+##+#
.`,``.`    `  @+.          `   `,#@@';;'''';;@@@;:`      `  #@'`'##'++##
.`.```.    `  @+.               `,:;;';'+#';:;@@,`       .@ '@+`:#++####
.``````       @+`                `.::;'#@@@@'::.         .`@##',########
.`````        @#,                 `,+##@@@@@@@;`  .         `#.`,#######
..`.          @#`                 `,#@@@@@+'#@@`  +        ` +, .##'###+
.```          @#`         ``       `,:;;;';;;+,  `;   @@     :``,+#++##+
````          @@`          `.       `,:::,::,` ```'   `@@@      `'+'++##
```.          @@@          `.,       ..,,:::.` ..`+   ,;,@@@`    `,,;'##
```.  ,       ,@@          `,,.       `..,.`` .,..'    +@@@@@@    ``,'++
.```  `       `' @@@'      `,,,`        ``   `,,.,'`    ;#:@@@@@`    `,;
````  .       `;   `;@     `,,,,` .,:''++#;,``,,.,;`     .@;@@@@@     `,
```. `         : .;@+,@    `.,,,.`.,:#@@@@;,``,,,::.      :@@@`,@,
````` `        ;`@@@@@@@@  `.,,,,`.,;+#@@+:,`.,,,:::       @@@`` ,@
````` `      @ , @@@@@;@@  `.,,,:.`,:;+@@':,`.,,:::;        @@@`  @
```.  `        '@@@@@@,#'   ..,,:,..,:;++;:,`.,,:::;@`      ;@@@.  +@
`````          @@@@@@@.;    `.,,:;,.,:::;:,,.,,:;;,: `:      @@@@   ;
.```.          @@@@@@@,@    `..,:;:,,:::;;:,,,:::::: '`'     @@@@@
    "
  end
end




