# rjobscheduler
rjobscheduler is a package used to schedule your jobs/tasks which is dependent on processx (https://github.com/r-lib/processx) 
package for initiating processes for your jobs/tasks.

# Installation
For installation go through following steps
1) install.packages("devtools")
2) install.packages("processx")
3) devtools::install_github("KoolMonk/rjobscheduler")

# Demo
For a demo purpose 'example.R' file & 'jobs' directory could be used.
1) Put jobs directory available in current repository at your system's '/home/koolmonk/jobs' location.
2) Then place the example.R file available in current repository at '/home/koolmonk' location.
3) Then execute example.R file using Rstudio and you can see in your jobs directory it will add some .txt file as the processes are
completed

# Note: 
replace 'koolmonk' as per your user name
