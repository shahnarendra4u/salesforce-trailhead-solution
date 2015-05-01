global class lookUpAccountPlugin implements Process.Plugin { 

   global Process.PluginResult invoke(Process.PluginRequest request) { 
      String name = (String) request.inputParameters.get('name');
      Account account = [SELECT Id FROM Account WHERE Name = :name LIMIT 1][0];

      Map<String,Object> result = new Map<String,Object>();
      result.put('accountId', account.Id);
      return new Process.PluginResult(result);
   }

   global Process.PluginDescribeResult describe() { 
      Process.PluginDescribeResult result = new Process.PluginDescribeResult(); 
      result.Name = 'Look Up Account ID By Name';
      result.Tag = 'Account Classes';
      result.inputParameters = new 
         List<Process.PluginDescribeResult.InputParameter>{ 
            new Process.PluginDescribeResult.InputParameter('name', 
            Process.PluginDescribeResult.ParameterType.STRING, true) 
         }; 
      result.outputParameters = new 
         List<Process.PluginDescribeResult.OutputParameter>{              
            new Process.PluginDescribeResult.OutputParameter('accountId', 
            Process.PluginDescribeResult.ParameterType.STRING)
                }; 
      return result; 
   }
}