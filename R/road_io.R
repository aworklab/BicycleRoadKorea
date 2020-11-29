library(magrittr)
add_data<-function(){
  #set working directory
  dir_name<-readline(prompt="Enter where your file exist")
  setwd(dir_name)

  #their isn't any 'list', but I don't know any other way to put it
  rbind.xlsx<-NULL
  rbind.csv<-NULL
  read_file<-NULL

  #if file isn't xlsx or csv, abort trial
  if (Path.GetExtension(file)=".xlsx"){
    xlsxlist<-list.files(pattern=".xlsx")
    rbind.xlsx<-lapply(xlsxlist,read_excel,na=".") %>%  rbind.fill
    read_file<-rbind.fill(rbind.xlsx)
  }
  else if(Path.GetExtension(file)=".csv"){
    csvlist<-list.files(pattern=".csv")
    rbind.csv<-lapply(csvlist,read.csv,check.names=F) %>% rbind.fill
    read_file<-rbind.fill(rbind.csv)
  }
  else{
    print("wrong extension. The according file cannot be added in")
  }


  #column name matching
  column_of_file<-names(file)

  for(name in column_of_file){
    if(name %in% names(road)){
      continue
    }
    else{
      print(name,"is not inside original dataframe. do you want to change its name as one of the following?")
      print(names(road))
      answer<-readline(prompt="Enter your choice: yes[1], no[2]")
      if(answer==1){
        #어떤 것으로 바꾸겠느냐?
        name_of_dest
      }
      else{

      }
    }
  }
}
