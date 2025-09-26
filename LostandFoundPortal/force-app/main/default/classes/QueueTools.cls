public class QueueTools {

    @InvocableMethod(label='Get Queue ID' description='Returns the ID of a Queue from its developer name.')
    public static List<String> getQueueId(List<String> queueDeveloperNames) {
        
        Group queue = [SELECT Id FROM Group WHERE Type = 'Queue' AND DeveloperName = :queueDeveloperNames[0] LIMIT 1];
        
        List<String> results = new List<String>();
        results.add(queue.Id);
        
        return results;
    }
}