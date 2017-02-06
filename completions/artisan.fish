function __fish_artisan_commands_with_descriptions
  php artisan --no-ansi ^ /dev/null \
    | sed '1,/Available commands/d' \
    | grep -E '^  ' \
    | sed 's/^  //' \
    | sed 's/\s\+/\t/'
end

function __fish_artisan_commands
  __fish_artisan_commands_with_descriptions | cut -f 1
end

complete -c artisan -f -n 'test -f artisan; and __fish_use_subcommand' -a '(__fish_artisan_commands_with_descriptions)'
complete -c artisan -f -n 'test -f artisan; and __fish_seen_subcommand_from help' -a '(__fish_artisan_commands)'
