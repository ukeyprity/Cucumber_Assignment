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
                    sh 'bundle install'
                    
                }
            }
             stage('Execute')
            {
                steps
                {
                     sh 'cucumber --init'
                     sh 'cucumber features: Cucumber_Assignment
                    
                }
            }
          }
         
        
 } 
