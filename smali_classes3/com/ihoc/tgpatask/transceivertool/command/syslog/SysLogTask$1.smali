.class Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;
.super Ljava/lang/Thread;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->executeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 132
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$000(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 133
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 135
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string v1, "logcat\u7ebf\u7a0b\u6267\u884c\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 138
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string v1, "logcat\u7ebf\u7a0b\u6267\u884c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->uploadFiles()I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    .line 142
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->errorCode:I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 144
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string v1, "logcat\u4e0a\u4f20\u65e5\u5fd7\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v2, "logPath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$100(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filesize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$100(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v2, "destName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "server_path"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    .line 150
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "upload_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->status:I

    .line 153
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->tag:Ljava/lang/String;

    const-string v1, "logcat\u4e0a\u4f20\u65e5\u5fd7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo v1, "threads_status"

    const-string v2, "done"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    iget-object v0, v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->access$200(Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "threads_result"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;->reportResult()V

    return-void
.end method
