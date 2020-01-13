*** Settings ***


*** Variables ***

*** Test Cases ***
#ForLoop1
 #   : FOR   ${i}    IN RANGE    1   10
   # \   log to console  ${i}


#ForLoop2
 #   : FOR   ${i}    IN      1   2   3   4   5   6   7   8
  #  \   log to console  ${i}


#ForLoopWithList
 #   @{items}    create list  1  2   3   4   5
  #  : FOR   ${i}    IN      @{items}
   # \   log to console  ${i}

#Forloop4
 #   : FOR   ${i}      IN    Ajinkya     Jadhav      John        Smith
  #  \   log to console  ${i}

#ForLoop5WithListString
 #   @{names}   create list  Ajinkya    Jadhav  John    Smith
  #  : FOR   ${i}    IN      @{names}
   # \   log to console  ${i}

ForLoopWithExit
    @{items}    create list     1   2   3   4   5
     : FOR     ${i}  IN     @{items}
     \  log to console  ${i}
     \  exit for loop if  ${i}==3
