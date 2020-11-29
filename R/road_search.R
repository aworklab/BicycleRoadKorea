#location
search_road_by_location<-function(number_output=0,search_condition=T){

  #location에 대한 함수므로 일단 그 column을 vector로 불러온다
  vector<-road$지역

  #receive search conditons: 시군구
  if(search_condition==T){


    print("Select how many conditions do you choose:[1],[2],[3]")
    choice1<-NULL
    choice2<-NULL
    choice3<-NULL
    num_choice<-readline(prompt="your choice:")

    if(num_choice==1){
      choice1<-readline(prompt="write in your condition:")

      for(entry in vector){
        if(choice1 %in% entry){

        }
      }

    }
    else if(num_choice==2){
      choice1<-readline(promt="write in your 1st condition:")
      choice2<-readline(promt="write in your 2nd condition:")
    }
    else if(num_choice==3){
      choice1<-readline(promt="write in your 1st condition:")
      choice2<-readline(promt="write in your 2nd condition:")
      choice3<-readline(promt="write in your 3rd condition:")
    }
    else{
      print("wrong number of conditions")
    }
  }

  #according to number_output, wrap appropriate elements into a dataframe
  output_data
  for(i in range(number_output)){

  }
  return(output_data)
}

#length
search_road_by_length<-function(number_output=0,search_condition=T){

}

#type
search_road_by_type<-function(number_output=0,search_condition=T){

}


search_road<-function(){
  ##사용자에게 어떤 종류의 search를 바라는 지 물어본다.
  print("what do you want to search for?(location, length, type):\n")
  tag=readline(prompt="Enter your choice")

  ##얼마나 많은 수의 예를 바라는 지 물어본다.
  print("how many elements do you want it to return?")
  number_output=readline(prompt="Enter your number")
  #전부

  ##입력 받은 tag에 따라 함수를 실행한다.
  if(tag=='location'){

  }
  else if(tag=='length'){

  }
  else if(tag=='type'){

  }
  else{
    print("wrong tag!")
  }

  ##결과에 따라 위의 세 함수 중 하나에 맞는 input을 요구한다.

}
