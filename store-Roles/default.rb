name "base-build"
description "A role to configure our front line or first level builds"
run_list "recipe[yum_update]", "recipe[fetch_pkgs]"
env_run_lists "first_level" => ["recipe[neo-store-base-build::default]"], "second_level" => ["recipe[neo-store-deploy::default]"]
