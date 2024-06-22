eds_normalize <- function(eds) {
  fname <- eds@config@normalize@function_name
  f = get(fname)
  
  f(eds)
}
