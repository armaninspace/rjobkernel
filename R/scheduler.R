#' Create empty environment Function
#'
#' This function allows you to create empty environment.
#' @keywords environment
#' @export
#' @examples
#' create_emptyenv()                       

create_emptyenv	<- function() {	
  emptyenv()	
}

#' variables used in functions
#' rear environment
#' @export
rear <-	new.env()
#' Lqueue environment
#' @export
Lqueue <- new.env()
#' Lsize variable
#' @export
Lsize <- 0L	

#' A isEmptyQueue Function
#'
#' This function allows you to check queue is empty or not.
#' @keywords empty
#' @export
#' @examples
#' isEmptyQueue()    
                    
isEmptyQueue <- function() {	
  if (Lsize==0)	{	
    return(TRUE)	
  }	else  {	
    return(FALSE) 
  }	
}

#' Create Node Function
#'
#' This function allows you to create node to be used in linked list/queue.
#' @keywords node
#' @export
#' @examples
#' Node() 
                        
Node <-	function(val,	node=NULL) {	
  llist	<- new.env(parent=create_emptyenv())	
  llist$element	<- val	
  llist$nextnode <- node	
  llist	
}

#' Create Queue Function
#'
#' This function allows you to create queue.
#' @keywords queue
#' @export
#' @examples
#' enqueue() 

enqueue = function(val) {	
  ListIsEmpty <- isEmptyQueue()	
  if (ListIsEmpty) {	
    Lqueue <<- Node(val)	
    Lsize <<- Lsize+1L	
    rear <<- Lqueue	
  }	else {	
    newNode <- Node(val)	
    assign("nextnode",	newNode,	
          envir	=	rear)	
    rear <<- newNode	
    Lsize <<- Lsize+1L			
  }	
  return(rear$element)
}

#' dqueue Function
#'
#' This function allows you to remove node from queue.
#' @keywords dqueue
#' @export
#' @examples
#' dequeue() 

dequeue = function() {	
  stackIsEmpty <- isEmptyQueue()	
  if (stackIsEmpty) {	
    stop("Empty Queue")
  }	else {	
    if (identical(NULL, Lqueue$nextnode)) {
      Lsize <<- Lsize-1L	
    } else {
      Lqueue <<- Lqueue$nextnode	
      Lsize <<- Lsize-1L	
    }
  }	
}

#' bottom Function
#'
#' This function allows you to pick first element from queue.
#' @keywords bottom
#' @export
#' @examples
#' bottom() 

bottom = function() {
  queueIsEmpty <- isEmptyQueue()	
  if (queueIsEmpty) {	
    cat("Empty Queue")	
  }	else {	
    return(Lqueue$element)	
  }	
}





