# Neovim Setup

These are my config files for [neovim]. I'm managing plugins with [Lazy].

Specifically designed to be used with [neovide].

If you have no config of your own, you can cop my style by cloning this whole repo into your neovim config directory (`~/.config/nvim`):

If you do have config of your own, you probably at least know a little bit about what you're doing, so you can have a read and pick and choose the bits you like.

The config sets up [oxlint] and [oxfmt]. If you're using a different linting/formatting stack, you'll need to adjust those bits.

It also runs a TypeScript language server. For it to work, you'll need the appropriate packages installed in your `$PATH`:

```bash
{whatever-js-package-manager} install -g typescript typescript-language-server
```

[neovim]: https://neovim.io/
[neovide]: https://neovide.dev/
[Lazy]: https://www.lazyvim.org/
[oxlint]: https://oxc.rs/docs/guide/usage/linter
[oxfmt]: https://oxc.rs/docs/guide/usage/formatter.html
