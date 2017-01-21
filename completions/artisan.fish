function __fish_artisan_needs_command
  test -f artisan
  or return 1

  test (count (commandline -opc)) -eq 1
end

function __fish_artisan_complete --description "Completion for Laravel's artisan command"
  php artisan --no-ansi ^ /dev/null \
    | sed '1,/Available commands/d' \
    | grep -E '^  ' \
    | sed 's/^  //' \
    | sed 's/\s\+/\t/'
end

complete -c artisan -f -n '__fish_artisan_needs_command' -a '(__fish_artisan_complete)'
