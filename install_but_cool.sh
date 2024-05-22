#!/bin/sh
set -e
append_sources() {
    local source_dir=$1
    local target_file=$2
    local base_dir=~/.vim_runtime

    find "${base_dir}/${source_dir}" -type f -name '*.vim' | sort | while read filename; do
        echo "source $filename" >> "${target_file}"
    done
    echo '' >> "${target_file}"
}
cd ~/.vim_runtime

# Start writing to .vimrc
cat > ~/.vimrc <<EOF
" DO NOT EDIT THIS FILE
" Add your own customizations in ~/.vim_runtime/my_configs.vim

set runtimepath+=~/.vim_runtime
EOF

append_sources "vimrcs" ~/.vimrc
append_sources "vimrcs4Extend" ~/.vimrc
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

cp ~/.vimrc ~/.ideavimrc
echo '
" IntelliJ IDEA specific settings' >> ~/.ideavimrc
append_sources "vimrcs4Jetbrains" ~/.ideavimrc
echo "Also configured the .ideavimrc for IntelliJ IDEA Vim plugin!"
