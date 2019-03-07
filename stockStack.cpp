vector<int> answer;

    int target = 0;
    int compare = 0;

    int lastIndex = prices.size();
    bool alreadyDropped[lastIndex];

    for(int i=0;i<lastIndex;i++) {
        //alreadyDropped[i]=false;
        answer.push_back(0);
    }

    for(target=0;target<lastIndex;target++){
        for(compare=target+1;compare<lastIndex;compare++){
            
            int targetVal = prices[target];
            int compareVal = prices[compare];

            printf("targetVal : %d , compareVal : %d \n",targetVal,compareVal);
            //if(targetVal>compareVal && alreadyDropped[target]==false) {
            if(targetVal>compareVal && answer[target]==0) {
                printf(" %d sec Price dropped in %d sec\n",target,(compare-target));
                answer[target] = compare-target;
                alreadyDropped[target] = true;
               // answer[target]++;
            }

            if(answer[target]==0) { //한번도 떨어진적이 없으니까
                answer[target] = lastIndex-(target+1);
            }
        }
    }

    for(int i=0;i<answer.size();i++) printf("answer[%d]=%d \n",i,answer[i]);
