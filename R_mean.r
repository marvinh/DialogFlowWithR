# mean.R
needs(magrittr)

mean(do.call(rnorm,input))
  



#do.call(what, args, quote = FALSE, envir = parent.frame())

#Arguments
#what
#either a function or a non-empty character string naming the function to be called.

#args
#a list of arguments to the function call. The names attribute of args gives the argument names.

#quote
#a logical value indicating whether to quote the arguments.

#envir
#an environment within which to evaluate the call. This will be most useful if what is a character string and the arguments are symbols or quoted expressions.