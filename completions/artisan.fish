function __artisan_complete --description "Completion for Laravel's artisan command"
  artisan --no-ansi ^ /dev/null \
    | sed '1,/Available commands/d' \
    | grep -E '^  ' \
    | sed 's/^  //' \
    | sed 's/\s\+/\t/'
end

complete -c artisan -f -n 'test -f artisan' -a '(__artisan_complete)'
