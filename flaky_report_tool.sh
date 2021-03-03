# params 1) python_test_file.py 2) result_text_file.txt

function flaky_tester_2 {
  LINE='=============================================================================\n'
  COUNTER=1.0
  MAX_RUN_LIMIT=200
  OUTPUT_FILE=$2
  
  INPUT_TEST_FILE=$1
  FAILURE_MESSAGE=''
  # check if OUTPUT_FILE param
  if [ -z "$OUTPUT_FILE" ]
  then
        echo "\n\$OUTPUT_FILE is not given, so default output_text.txt file is created"
        OUTPUT_FILE="./output_text.txt"
  else
        echo "\$OUTPUT_FILE is NOT empty"
  fi

  # COLORS
  GREEN="\033[0;32m"
  RED='\033[0;31m'
  NC='\033[0m'

  echo "Started testing flakiness of the following test:"
  echo $INPUT_TEST_FILE
  echo $LINE
  while [[ $COUNTER -lt $MAX_RUN_LIMIT ]]
  do
    OUTPUT=$(python3.8 -m pytest $INPUT_TEST_FILE)
    ANY_FAILURE='FAILURES'
    if [[ "$OUTPUT" == *"$ANY_FAILURE"* ]]; then
      echo "Failed at ==> $COUNTER" >> $OUTPUT_FILE
      echo $OUTPUT >> $FILE
      
      FAILURE_REGEX="FAILED"
      FAILURE_MESSAGE=$(echo $OUTPUT | grep -o "$FAILURE_REGEX.*")
      break
    else
      echo "passed $COUNTER" >> $OUTPUT_FILE
      printf "${GREEN}.${NC}"
    fi
     echo " $COUNTER running" >> $OUTPUT_FILE
     COUNTER=$[$COUNTER + 1]

  done
  echo "Report result"
  printf $LINE

  echo "It $COUNTER time(s) took to fail" >> $OUTPUT_FILE
  echo "It $COUNTER time(s) took to fail" 
  echo "${RED} Failure message: $FAILURE_MESSAGE ${NC}"
  SUCCESS_RATE="$((($COUNTER/($COUNTER + 1)*100)))"
  echo "${GREEN}SUCCESS RATE: $SUCCESS_RATE % ${NC}" 
}