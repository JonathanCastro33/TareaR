# # Coloque comentarios aquí que brinden una descripción general de lo que
# # funciones hacen

# # Escriba un breve comentario describiendo esta función

makeCacheMatrix  <-  function ( x  =  matrix ()) {
  inversa <-NULL
  set<-function(y){
    x<<-y
    inversa<<-NULL
    
  }
  get<-function(){x}
  setInversa<-function(inversacalculada){inversa<<-inversacalculada}
  getInversa<-function(){inversa}
  list(set = set , get = get,
       setInversa = setInversa,
       getInversa = getInversa)
  
}


# # Escriba un breve comentario describiendo esta función

cacheSolve  <-  function ( x , ... ) {
    inversa <-x$getInversa()
    if(!is.null(inversa)){
      message("getting cached data")
      return(inversa)
      
    }
    data<-x$get()
    inversa <- solve(data,..)
    x$setInversa(inversa)
    inversa
  
  
  # # Devuelve una matriz que es la inversa de 'x'
}