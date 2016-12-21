fish-artisan-completion
=======================

[Artisan][artisan] command completion for the [fish][fish] shell

Installation
------------

You can manually install this by copying the following files to your machine:

| file                                                 | location                                |
| ----                                                 | --------                                |
| [functions/artisan.fish](functions/artisan.fish)     | ~/.config/fish/functions/artisan.fish   |
| [completions/artisan.fish](completions/artisan.fish) | ~/.config/fish/completions/artisan.fish |

Or, if you use one, you can use a plugin manager.

Caveats
-------

- It only works when you type `artisan` or `./artisan`, not when you type `php
  artisan`, like you would normally. That's why an `artisan` function is
  provided.
- Command options are not (yet) supported.

[artisan]: https://laravel.com/docs/master/artisan
[fish]: https://fishshell.com
