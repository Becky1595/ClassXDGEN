public with sharing class QueueableFuture implements Queueable{

    private List<Account> accounts;
    private ID parent;

    public QueueableFuture(List<Account> records, ID id) {
        this.accounts = records;
        this.parent = id;
    }

    public void execute(QueueableContext context){
        for (Account acc : accounts) {
            acc.ParentId = parent;
        }
        update accounts;
    }
}