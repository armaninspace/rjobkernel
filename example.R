library(processx)
library(rjobscheduler)

enqueue(list(val='/home/rjobs/job1.R'))
enqueue(list(val='/home/rjobs/job2.R'))
enqueue(list(val='/home/rjobs/job3.R'))

count <- 1

while(!isEmptyQueue()) {
  ll <- bottom()
  procname <- paste0('p',count)
  cat('Process Name:',procname,"\n")
  filepath <- ll$val
  Sys.sleep(10)
  procname <- process$new("Rscript", filepath)
  print(procname)
  dequeue();
  count <- count + 1
}