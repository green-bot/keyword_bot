def keyword(str)
  keyword = str.split(":").first
  return keyword
end

initialMsg = ENV['INITIAL_MSG'].strip.downcase

prompts = []
prompts <<  ENV['KEYWORD_1']
prompts <<  ENV['KEYWORD_2']
prompts <<  ENV['KEYWORD_3']
prompts <<  ENV['KEYWORD_4']
prompts <<  ENV['KEYWORD_5']
prompts <<  ENV['KEYWORD_6']
prompts <<  ENV['KEYWORD_7']
prompts <<  ENV['KEYWORD_8']
prompts <<  ENV['KEYWORD_9']

matched = false

prompts.each do |p|
  unless p.nil?
    if keyword(p) == initialMsg
      matched = true
      puts p.split(":").last
    end
 end
end

unless matched
  choices = ""
  prompts.each do |p|
    unless p.nil?
      choices += keyword(p) + " - "
    end
  end
  puts "Sorry, I don't know that keyword. Available choice are #{choices}"
end

