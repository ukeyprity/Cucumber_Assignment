pipeline 
{
     agent any
    
    environment 
    {
            CI = true
    }
        stages
         {
                    
             stage('Build')
            {
                steps
                {
                    sh 'gem install cucumber'
                    
                }
            }
             stage('Execute')
            {
                steps
                {
                    sh 'cucumber'
                    
                }
            }
          }
         
        
 } 
