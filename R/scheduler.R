#'@section fields:
#' List of fields/variables used in methods for lqueue class.
#' Lsize is used to check/manage the size of queue during jobs execution.
#' rear & Lqueue used to store nodes of linked list.
#' 
#'@section methods:
#'
#' isEmptyQueue: This method is used to check linked list/queue is empty or not.
#' 
#' create_emptyenv: This method is used to create empty environment.
#' 
#' Node: This method is used to initiate a linked list for storing jobs.
#' @param 'val' stores element/job section of node.
#' @param 'node' stores pointer to next node. 
#' 
#' enqueue: This method is used to populate jobs in list.
#' @param 'val' used to pass jobs/file path which scheduler will execute.
#' 
#' dequeue: This method is used to pop/remove element from the list.
#' 
#' bottom: This method is used to pick element from the bottom of list.
 

#' variables used in functions
Lsize = "integer"
rear =	"environment"
Lqueue = "environment"
Lsize <<- 0L	

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
    cat("Empty Queue")	
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





