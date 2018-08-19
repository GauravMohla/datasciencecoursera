pollutantmean <- function(directory, pollutant, id = 1:332) {
        files <- list.files(directory)
        files <- files[id]
        f<-data.frame()
        rbind(files)
        for(i in files) {
                f<- rbind(f, read.csv(paste(directory, i, sep = '\\')))
        }
        mean(f[[pollutant]], na.rm = TRUE)
}