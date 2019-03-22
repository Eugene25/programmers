import UIKit

var isPassed : Bool = false;
var answerList : [Character] = []
var compareList : [Character] = []

func calAnswer(_ skill:String, _ given:String) -> Int {
    
    var returnVal : Int = 0;
    
    for i in 0..<given.count {
        
        let givenIndex = given.index(given.startIndex, offsetBy: i)
        
        print(i);
        
        for j in 0..<skill.count {
            
            let answerIndex = skill.index(skill.startIndex, offsetBy: j)
            answerList.append(skill[answerIndex]);
            
            if( given[givenIndex] == skill[answerIndex] ) {
                
                let selectedVal = skill[answerIndex];
                
                switch j {
                    
                case 0:
                    
                    isPassed = true;
                    break;
                    
                default:
                    
                    for k in 0...i {
                        
                        let index0 = given.index(given.startIndex, offsetBy: k)
                        
                        for z in 0...j {
                
                            let index1 = skill.index(skill.startIndex, offsetBy: z)
                            if( given[index0] == skill[index1] && skill[index1] != selectedVal ) {
                                compareList.append(given[index0])
                            }
                            
                        }
                    }
                    
                    answerList.removeLast();
                    
                    if(answerList == compareList) {
                        isPassed=true;
                    }else{
                        isPassed=false;
                    }
                    break;
                  
                    
                    
                    
                    
                }
            }
            
        }
        
        
        
        /*if(isPassed) {
            returnVal = returnVal + 1;
            isPassed = false;
        }*/
        
        answerList.removeAll()
        compareList.removeAll()
    }
    
    print("isPassed ? \(isPassed)");
    
    return 0
}

calAnswer("cbd", "bda")
