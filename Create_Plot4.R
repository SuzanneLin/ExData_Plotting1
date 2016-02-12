##This code creates plot4.png
 source("load_data.R") 
  png(filename = "plot4.png",  
      width = 480, height = 480, 
      units = "px", bg = "transparent") 
  par(mfrow = c(2, 2)) 
 
  ## put graph to top left
  plot(DateTime, Global_active_power,  
       type = "l", 
       xlab = "", ylab = "Global Active Power") 

  ## put graph to top right  
  plot(DateTime, Voltage, 
       type = "l", 
       xlab = "datetime", ylab = "Voltage") 

   ## put graph to bottom left 
  plot(DateTime, Sub_metering_1,  
       type = "l", 
       col = "black", 
       xlab = "", ylab = "Energy sub metering") 
  lines(DateTime, Sub_metering_2, col = "red") 
  lines(DateTime, Sub_metering_3, col = "blue") 

 
  legend("topright",  
         bty = "n", 
         col = c("black", "red", "blue"), 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lwd = 1) 
  ## put graph to top right
  plot(DateTime, Global_reactive_power,  
       type = "l", 
       col = "black", 
       xlab = "datetime", ylab = colnames(newData)[4]) 
  dev.off() 
