# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] )) && [[ -a `brew --prefix`/etc/grc.bashrc ]] 
then
  source `brew --prefix`/etc/grc.bashrc
fi
