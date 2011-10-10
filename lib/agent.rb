# Load the Agent module

# Load the agent modules.
agent_path = File.join(Madmass.root, 'madmass', 'agent')
require File.join(agent_path, 'executor')
require File.join(agent_path, 'f_s_a_executor')

# require all agent classes
Dir.glob(File.join(Madmass.root, 'madmass', 'agent', '**', '*.rb')).each do |source|
  require source
end