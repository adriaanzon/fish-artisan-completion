fish-artisan-completion
=======================

[Artisan][artisan] command completion for the [fish][fish] shell

Installation
------------

You can manually install this by copying the files in the
[completions](completions) directory to `~/.config/fish/completions/` on your
machine.

Or, if you have one, you can use a plugin manager. If you don't have a plugin
manager and you're looking for something simple, you may want to try
[this][universal-plugin-manager].

Usage
-----
The completion works on both `php artisan` and `./artisan`. A function or alias
named `artisan` will work too.

### Usage in fish 3.0

Commit [`4414d5c8`][fish-commit] in fish-shell (unreleased) broke this
completion, because `artisan` is not an executable in `$PATH`. As a workaround,
you can add this to your `config.fish`: 

```fish
alias artisan 'php artisan'
```

[artisan]: https://laravel.com/docs/master/artisan
[fish]: https://fishshell.com
[fish-commit]: https://github.com/fish-shell/fish-shell/commit/4414d5c8885b5cd53c7ab42f70bd2824050907f0
[universal-plugin-manager]: https://gist.github.com/adriaanzon/208e7651599d5234e51013b15f561a77
