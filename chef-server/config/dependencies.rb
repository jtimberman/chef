# dependencies are generated using a strict version, don't forget to edit the dependency versions when upgrading.
merb_gems_version = "> 1.0"

CHEF_SERVER_VERSION = "0.7.4" unless defined?(CHEF_SERVER_VERSION)

# For more information about each component, please read http://wiki.merbivore.com/faqs/merb_components
dependency "merb-core", merb_gems_version 
dependency "merb-assets", merb_gems_version  
dependency "merb-helpers", merb_gems_version 
dependency "merb-slices", merb_gems_version  
if defined?(CHEF_SERVER_VERSION)
  dependency "chef-server-slice", CHEF_SERVER_VERSION unless defined?(ChefServerSlice)
else
  dependency "chef-server-slice" unless defined?(ChefServerSlice)
end
