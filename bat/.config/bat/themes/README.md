# themes

If you want to preview the different themes on a custom file, you can use the following command (you need fzf for this):

```
    bat --list-themes | fzf --preview="bat --theme={} --color=always /path/of/file"
```
