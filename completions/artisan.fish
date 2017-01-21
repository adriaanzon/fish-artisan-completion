function __fish_artisan_needs_command
  test -f artisan
  or return 1

  test (count (commandline -opc)) -eq 1
end

function __fish_artisan_using_command
  test -f artisan
  or return 1

  set cmd (commandline -opc)

  test (count $cmd) -gt 1
  and test $argv[1] = $cmd[2]
end

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

complete -c artisan -f -n '__fish_artisan_needs_command' -a '(__fish_artisan_commands_with_descriptions)'
complete -c artisan -f -n '__fish_artisan_using_command help' -a '(__fish_artisan_commands)'
