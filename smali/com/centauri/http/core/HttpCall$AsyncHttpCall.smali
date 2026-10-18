.class Lcom/centauri/http/core/HttpCall$AsyncHttpCall;
.super Ljava/lang/Object;
.source "HttpCall.java"

# interfaces
.implements Lcom/centauri/http/core/ExecutableCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/http/core/HttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHttpCall"
.end annotation


# instance fields
.field private final mCallback:Lcom/centauri/http/core/Callback;

.field final synthetic this$0:Lcom/centauri/http/core/HttpCall;

.field private final withNoCustomInterceptors:Z


# direct methods
.method constructor <init>(Lcom/centauri/http/core/HttpCall;Lcom/centauri/http/core/Callback;Z)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->mCallback:Lcom/centauri/http/core/Callback;

    .line 129
    iput-boolean p3, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->withNoCustomInterceptors:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/http/core/Request;->stopRequest()V

    :cond_0
    return-void
.end method

.method public getRequestName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 5

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->getRequestName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v1}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v1}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/centauri/http/core/NetworkManager;->registerAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    iget-boolean v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->withNoCustomInterceptors:Z

    invoke-static {v1, v2}, Lcom/centauri/http/core/HttpCall;->access$200(Lcom/centauri/http/core/HttpCall;Z)Lcom/centauri/http/core/Response;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 177
    iput-boolean v2, v1, Lcom/centauri/http/core/Response;->isStopped:Z

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/http/core/Request;->delivery:Lcom/centauri/http/core/Delivery;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$000(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/Request;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/http/core/Request;->delivery:Lcom/centauri/http/core/Delivery;

    iget-object v3, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->mCallback:Lcom/centauri/http/core/Callback;

    invoke-interface {v2, v1, v3}, Lcom/centauri/http/core/Delivery;->deliverResult(Lcom/centauri/http/core/Response;Lcom/centauri/http/core/Callback;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/http/core/NetworkManager;->delivery()Lcom/centauri/http/core/Delivery;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v2}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/http/core/NetworkManager;->delivery()Lcom/centauri/http/core/Delivery;

    move-result-object v2

    iget-object v3, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->mCallback:Lcom/centauri/http/core/Callback;

    invoke-interface {v2, v1, v3}, Lcom/centauri/http/core/Delivery;->deliverResult(Lcom/centauri/http/core/Response;Lcom/centauri/http/core/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/centauri/http/core/NetworkManager;->unregisterAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/centauri/http/core/HttpCall$AsyncHttpCall;->this$0:Lcom/centauri/http/core/HttpCall;

    invoke-static {v0}, Lcom/centauri/http/core/HttpCall;->access$100(Lcom/centauri/http/core/HttpCall;)Lcom/centauri/http/core/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/centauri/http/core/NetworkManager;->unregisterAsyncHttpCall(Lcom/centauri/http/core/ExecutableCall;)V

    .line 195
    :cond_5
    throw v1
.end method
