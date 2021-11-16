fish-artisan-completion
=======================

[Artisan][artisan] command completion for the [fish][fish] shell

Installation
------------

### Manual

To manually install the files from the [completions](completions) and [functions](functions) directories on your machine, you may run these commands:

```fish
curl -L --create-dirs -o ~/.config/fish/completions/artisan.fish https://github.com/adriaanzon/fish-artisan-completion/raw/master/completions/artisan.fish
curl -L --create-dirs -o ~/.config/fish/completions/php.fish https://github.com/adriaanzon/fish-artisan-completion/raw/master/completions/php.fish
curl -L --create-dirs -o ~/.config/fish/functions/artisan.fish https://github.com/adriaanzon/fish-artisan-completion/raw/master/functions/artisan.fish
```

### Plugin manager

If you have one, you can use a plugin manager. If you don't have a plugin
manager and you're looking for something simple, you may want to try
[this][universal-plugin-manager].

Usage
-----
The completion works on both `php artisan` and `./artisan`. It also works with
the `artisan` alias provided with this plugin.

[artisan]: https://laravel.com/docs/master/artisan
[fish]: https://fishshell.com
[universal-plugin-manager]: https://gist.github.com/adriaanzon/208e7651599d5234e51013b15f561a77
