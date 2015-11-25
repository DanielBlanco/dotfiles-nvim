"------------------------------------------------------------------------------
" Main Configuration file
"
" @see changelog.md
" @version 2015-11-25
" @author Daniel Blanco Rojas
"------------------------------------------------------------------------------
source ~/.config/nvim/includes/plugins.vim
source ~/.config/nvim/includes/general.vim
source ~/.config/nvim/includes/ui.vim
source ~/.config/nvim/includes/backups.vim
source ~/.config/nvim/includes/statusline.vim
source ~/.config/nvim/includes/mappings.vim
source ~/.config/nvim/includes/functions.vim
source ~/.config/nvim/includes/dbext_profiles.vim
source ~/.config/nvim/includes/nerd_tree.vim
source ~/.config/nvim/includes/ctrl_p.vim
source ~/.config/nvim/includes/fugitive.vim
source ~/.config/nvim/includes/neomake.vim
source ~/.config/nvim/includes/airline.vim

call ApplyLocalSettings(expand('.'))
