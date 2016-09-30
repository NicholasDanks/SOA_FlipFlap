# Module that can be included (mixin) to take and output Yaml data
module YamlBuddy
  require 'yaml'
  # take_yaml: converts a String with YAML data into @data
  # parameter: yaml - a String in YAML format
  
  def take_yaml(yaml)
  	#get yaml
  	@data = YAML.load(yaml)
  end
 
  # to_yaml: converts @data into yml string
  # returns: String in YML format
  def to_yaml
  @data.to_yaml
  end
end

