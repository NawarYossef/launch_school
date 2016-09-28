# Challenge :
# Gordon Ramsay shouts. He shouts and swears. There may be something wrong with him.
# Anyway, you will be given a string of four words. Your job is to turn them in to Gordon language.
# Rules:
# Obviously the words should be Caps, Every word should end with '!!!!', Any letter 'a' or 'A' should become '@', Any other vowel should become '*'.

# Solution : 
def gordon(string)
  words = string.scan(/\w+/)
  words.each {|word| word.upcase!}
  words.each {|word| word << "!!!!"}
  words.each {|word| word.gsub!(/[ieou]/i,"*")}
  words.each {|word| word.gsub!('A',"@")}
  words.join(' ')
end

gordon('are you stu pid') == '@R*!!!! Y**!!!! ST*!!!! P*D!!!!'
gordon('i am a chef') == '*!!!! @M!!!! @!!!! CH*F!!!!'
gordon('dont you talk tome') == 'D*NT!!!! Y**!!!! T@LK!!!! T*M*!!!!'
gordon('how dare you feck') == 'H*W!!!! D@R*!!!! Y**!!!! F*CK!!!!'