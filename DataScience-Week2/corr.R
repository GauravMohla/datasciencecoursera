corr<-function(directory, threshold =0) {
        files <- list.files(directory)
        cr <- c()
        for(file in files) {
                csvfile<-read.csv(paste(directory, file, sep = '\\'))
                temp<- csvfile[complete.cases(csvfile), ]
                if(nrow(temp) > threshold) {
                        cr <- c(cr, cor(temp$sulfate, temp$nitrate))
                }
        }
        cr
}