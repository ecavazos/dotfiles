require "rubygems"
require 'hirb'
 
Hirb.enable :output=>{'Object'=>{:class=>:auto_table, :ancestor=>true}}
 
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
 
# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE
 
# Tab Completion
require 'irb/completion'
 
# Save History between irb sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:LOAD_MODULES] = [] unless IRB.conf.key?(:LOAD_MODULES)

