
module Translatinator
  attr_accessor :input

# convert to hash FTW
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
    # puts ' '
    # puts 'SUPPORTED LANGUAGES:'
    # puts      'Afrikaans .......................... AF'
    # puts      'Albanian ........................... SQ'
    # puts      'Arabic ............................. AR'
    # puts      'Azerbaijani ........................ AZ'
    # puts      'Basque ............................. EU'
    # puts      'Bengali ............................ BN'
    # puts      'Belarusian ......................... BE'
    # puts      'Bulgarian .......................... BG'
    # puts      'Catalan ............................ CA'
    # puts      'Chinese Simplified ................. ZH-CN'
    # puts      'Chinese Traditional ................ ZH-TW'
    # puts      'Croatian ........................... HR'
    # puts      'Czech .............................. CS'
    # puts      'Danish ............................. DA'
    # puts      'Dutch .............................. NL'
    # puts      'English ............................ EN'
    # puts      'Esperanto .......................... EO'
    # puts      'Estonian ........................... ET'
    # puts      'Filipino ........................... TL'
    # puts      'Finnish ............................ FI'
    # puts      'French ............................. FR'
    # puts      'Galician ........................... GL'
    # puts      'Georgian ........................... KA'
    # puts      'German ............................. DE'
    # puts      'Greek .............................. EL'
    # puts      'Gujarati ........................... GU'
    # puts      'Haitian Creole ..................... HT'
    # puts      'Hebrew ............................. IW'
    # puts      'Hindi .............................. HI'
    # puts      'Hungarian .......................... HU'
    # puts      'Icelandic .......................... IS'
    # puts      'Indonesian ......................... ID'
    # puts      'Irish .............................. GA'
    # puts      'Italian ............................ IT'
    # puts      'Japanese ........................... JA'
    # puts      'Kannada ............................ KN'
    # puts      'Korean ............................. KO'
    # puts      'Latin .............................. LA'
    # puts      'Latvian ............................ LV'
    # puts      'Lithuanian ......................... LT'
    # puts      'Macedonian ......................... MK'
    # puts      'Malay .............................. MS'
    # puts      'Maltese ............................ MT'
    # puts      'Norwegian .......................... NO'
    # puts      'Persian ............................ FA'
    # puts      'Polish ............................. PL'
    # puts      'Portuguese ......................... PT'
    # puts      'Romanian ........................... RO'
    # puts      'Russian ............................ RU'
    # puts      'Serbian ............................ SR'
    # puts      'Slovak ............................. SK'
    # puts      'Slovenian .......................... SL'
    # puts      'Spanish ............................ ES'
    # puts      'Swahili ............................ SW'
    # puts      'Swedish ............................ SV'
    # puts      'Tamil .............................. TA'
    # puts      'Telugu ............................. TE'
    # puts      'Thai ............................... TH'
    # puts      'Turkish ............................ TR'
    # puts      'Ukrainian .......................... UK'
    # puts      'Urdu ............................... UR'
    # puts      'Vietnamese ......................... VI'
    # puts      'Welsh .............................. CY'
    # puts      'Yiddish ............................ YI'
    # puts ' '
  end

  def self.help
    "Welcome to Translatinator!
    Below are the commands to get your text translated.
    -lang ............................ Display supported languages and abbreviations.
    -use LANG \"text-to-translate\" .... Translate text (LANG = language abbreviation).
    -help ............................ Show these commands again.

      ***** **** *** ** *   Don't use !'s because... BUGS!  * ** *** **** *****
     "
  end

  def self.translate(language, text)
    text = text.gsub(' ', '%20')

    result = 'https://www.googleapis.com/language/translate/v2?key=AIzaSyCy9bWyky8mYNjYrSI-NA68Z4wFQVn__R8&q=' + text + '&source=en&target=' + language
    result = HTTP.get(result)
    parsed =  JSON.parse(result)

    unless parsed["data"]["translations"].count > 1
      parsed["data"]["translations"].each do |x|
        done = x["translatedText"].gsub("&#39;", "'")

        puts done
        puts ' '
      end
    end
  end

end




