# require 'rubygems'
# require 'date'
# require 'pp'
# require 'irb/completion'
# require 'irb/ext/save-history'

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
 
# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE
 
# Save History between irb sessions
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:LOAD_MODULES] = [] unless IRB.conf.key?(:LOAD_MODULES)

