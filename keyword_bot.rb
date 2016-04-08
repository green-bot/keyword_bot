def keyword(str)
 
  keyword = str.split(":").first
  return keyword
end

firstMsg = gets()
prompts = []
prompts <<  ENV['PROMPT_1']
prompts <<  ENV['PROMPT_2']
prompts <<  ENV['PROMPT_3']
prompts <<  ENV['PROMPT_4']
prompts <<  ENV['PROMPT_5']
prompts <<  ENV['PROMPT_6']
prompts <<  ENV['PROMPT_7']
prompts <<  ENV['PROMPT_8']
prompts <<  ENV['PROMPT_9']

prompts.each do |p|
  unless p.nil?
    if keyword(p) == firstMsg.strip
      puts p.split(":").last
    end
 end
end

