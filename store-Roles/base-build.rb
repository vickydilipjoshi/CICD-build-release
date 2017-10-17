name": "base-build",
  "description": "description "A role to configure our front line or first level builds",
  "json_class": "Chef::Role",
  "default_attributes": {
    
    }
  },
/*  "override_attributes": {
    "": {
      "":""
    }
  },
*/ 
 "chef_type": "role",
  "run_list": [
    "recipe[java_base_build::default]",
    "recipe[java_base_build::fetch_pkgs]"
  ],
  "env_run_lists": {
    "first_level": [
      "recipe[java_base_build::default]"
      "recipe[neo-store-deploy::default]" 
    ]
  }

