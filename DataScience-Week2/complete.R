complete<- function(directory, id=1:332) {
        files <- list.files(directory)
        files <- files[id]
        f<-data.frame(id=numeric(), nobs= numeric())
        for(i in files) {
                fill<-read.csv(paste(directory, i, sep = '\\'))
                tt<- fill[complete.cases(fill), ]
                if(nrow(tt)>=1)
                f[nrow(f)+1, ] =list(head(tt$ID,1), nrow(tt))
                else f[nrow(f)+1, ] =list(head(fill$ID,1), nrow(tt))
        }
        f
}