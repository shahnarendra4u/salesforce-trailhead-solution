trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
	List<Task> taskList=new List<Task>();
    for(Opportunity opportunity : [select id,name from opportunity where 	id in :trigger.new and StageName='Closed Won']) {
        taskList.add(new Task(subject='Follow Up Test Task'));
    }
    System.debug('taskList size'  + taskList.size());
    if(taskList.size() > 0){
    	insert taskList;
    }
}