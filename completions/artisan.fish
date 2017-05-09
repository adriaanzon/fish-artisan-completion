function __fish_artisan_commands_with_descriptions
  php artisan list --raw ^ /dev/null | grep -vE '^ ' | sed 's/\s\+/\t/'
end

function __fish_artisan_commands
  __fish_artisan_commands_with_descriptions | cut -f 1
end

function __fish_artisan_providers
  php -r 'function env($a, $b = null) { return $b; }; echo implode("\n", (require("config/app.php"))["providers"]);'
end

function __fish_artisan_queue_connections
  php -r 'function env($a, $b = null) { return $b; }; echo implode("\n", array_keys((require("config/queue.php"))["connections"]));'
end

# Commands
complete -c artisan -f -n 'test -f artisan; and __fish_use_subcommand' -a '(__fish_artisan_commands_with_descriptions)'
complete -c artisan -f -n 'test -f artisan; and __fish_seen_subcommand_from help' -a '(__fish_artisan_commands)'

# Command arguments
complete -c artisan -f -n 'test -f artisan; and __fish_seen_subcommand_from queue:work queue:listen' -a '(__fish_artisan_queue_connections)'
complete -c artisan -x -n 'test -f artisan; and __fish_seen_subcommand_from vendor:publish' -l provider -a '(__fish_artisan_providers)'
