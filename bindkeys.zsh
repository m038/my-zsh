# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
#bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^R"      history-incremental-pattern-search-backward   # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a  
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "[B"      history-search-forward               # down arrow
bindkey "[A"      history-search-backward              # up arrow
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b
bindkey "^[[H"    beginning-of-line
bindkey "^[[F"    end-of-line
#bindkey -v   # Default to standard emacs bindings, regardless of editor string
bindkey -e   # Default to standard emacs bindings, regardless of editor string
#bindkey "^[OH" beginning-of-line
#bindkey "^[OF" end-of-line
