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

prompts.each do |p|
  unless p.nil?
    if keyword(p) == initialMsg
      puts p.split(":").last
    end
 end
end

