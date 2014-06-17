require_relative "translatinator/version"

module Translatinator
  class TerminalClient
    attr_accessor :input

    def self.start
      puts 'Welcome to Translatinator!'
      puts 'Below are the commands to get your text translated.'
      puts 'lang                           Display supported languages and abbreviations.'
      puts "use LANG 'text-to-translate'   Translate text (LANG = language abbreviation)."
      puts 'help                           Show these commands again.'
      puts 'exit                           Closes application.'
      get_command
    end

    def self.get_command
      while true
        input = gets.chomp

        case input
          when 'lang'
            puts 'Supported Languages:'
            puts      'Afrikaans .......................... AF\n'
            puts      'Albanian ........................... SQ\n'
            puts      'Arabic ............................. AR\n'
            puts      'Azerbaijani ........................ AZ\n'
            puts      'Basque ............................. EU\n'
            puts      'Bengali ............................ BN\n'
            puts      'Belarusian ......................... BE\n'
            puts      'Bulgarian .......................... BG\n'
            puts      'Catalan ............................ CA\n'
            puts      'Chinese Simplified ................. ZH-CN\n'
            puts      'Chinese Traditional ................ ZH-TW\n'
            puts      'Croatian ........................... HR\n'
            puts      'Czech .............................. CS\n'
            puts      'Danish ............................. DA\n'
            puts      'Dutch .............................. NL\n'
            puts      'English ............................ EN\n'
            puts      'Esperanto .......................... EO\n'
            puts      'Estonian ........................... ET\n'
            puts      'Filipino ........................... TL\n'
            puts      'Finnish ............................ FI\n'
            puts      'French ............................. FR\n'
            puts      'Galician ........................... GL\n'
            puts      'Georgian ........................... KA\n'
            puts      'German ............................. DE\n'
            puts      'Greek .............................. EL\n'
            puts      'Gujarati ........................... GU\n'
            puts      'Haitian Creole ..................... HT\n'
            puts      'Hebrew ............................. IW\n'
            puts      'Hindi .............................. HI\n'
            puts      'Hungarian .......................... HU\n'
            puts      'Icelandic .......................... IS\n'
            puts      'Indonesian ......................... ID\n'
            puts      'Irish .............................. GA\n'
            puts      'Italian ............................ IT\n'
            puts      'Japanese ........................... JA\n'
            puts      'Kannada ............................ KN\n'
            puts      'Korean ............................. KO\n'
            puts      'Latin .............................. LA\n'
            puts      'Latvian ............................ LV\n'
            puts      'Lithuanian ......................... LT\n'
            puts      'Macedonian ......................... MK\n'
            puts      'Malay .............................. MS\n'
            puts      'Maltese ............................ MT\n'
            puts      'Norwegian .......................... NO\n'
            puts      'Persian ............................ FA\n'
            puts      'Polish ............................. PL\n'
            puts      'Portuguese ......................... PT\n'
            puts      'Romanian ........................... RO\n'
            puts      'Russian ............................ RU\n'
            puts      'Serbian ............................ SR\n'
            puts      'Slovak ............................. SK\n'
            puts      'Slovenian .......................... SL\n'
            puts      'Spanish ............................ ES\n'
            puts      'Swahili ............................ SW\n'
            puts      'Swedish ............................ SV\n'
            puts      'Tamil .............................. TA\n'
            puts      'Telugu ............................. TE\n'
            puts      'Thai ............................... TH\n'
            puts      'Turkish ............................ TR\n'
            puts      'Ukrainian .......................... UK\n'
            puts      'Urdu ............................... UR\n'
            puts      'Vietnamese ......................... VI\n'
            puts      'Welsh .............................. CY\n'
            puts      'Yiddish ............................ YI\n'

        when input.match(/[use]/)
          words = input.split(' ')
          command = words[0]
          language = words[1]
          text = words[2..words.length].join(' ')
            puts "we're going to translate '#{text}' into #{language}."

        when 'help'
          start
        when 'exit'
          Translatinator::TerminalClient.exit

        else
          puts "Oh no! It looks like you entered text that I'm unable to use. Please try again."
          puts 'lang                           Display supported languages and abbreviations.'
          puts "use LANG 'text-to-translate'   Translate text (LANG = language abbreviation)."
          puts 'help                           Show these commands again.'
          puts 'exit                           Closes application.'
          get_command
        end
      end
    end

    def translate
      # use google translate api here
    end

  end

end


Translatinator::TerminalClient.start

# $ bundle exec ruby translatinator_client.rb
