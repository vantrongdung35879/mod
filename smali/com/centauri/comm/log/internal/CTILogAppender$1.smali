.class Lcom/centauri/comm/log/internal/CTILogAppender$1;
.super Ljava/lang/Object;
.source "CTILogAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/comm/log/internal/CTILogAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/comm/log/internal/CTILogAppender;


# direct methods
.method constructor <init>(Lcom/centauri/comm/log/internal/CTILogAppender;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/centauri/comm/log/internal/CTILogAppender$1;->this$0:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 44
    const-string v0, "centauriComm<Log>"

    :try_start_0
    const-string v1, "auto flush"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender$1;->this$0:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-virtual {v1}, Lcom/centauri/comm/log/internal/CTILogAppender;->flushAndWrite()V

    .line 46
    invoke-static {}, Lcom/centauri/comm/log/internal/CTILogAppender;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string/jumbo v1, "stop auto flush"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender$1;->this$0:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-static {v1}, Lcom/centauri/comm/log/internal/CTILogAppender;->access$100(Lcom/centauri/comm/log/internal/CTILogAppender;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/centauri/comm/log/internal/CTILogAppender$1;->this$0:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-static {v1}, Lcom/centauri/comm/log/internal/CTILogAppender;->access$100(Lcom/centauri/comm/log/internal/CTILogAppender;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/comm/log/internal/CTILogAppender$1;->this$0:Lcom/centauri/comm/log/internal/CTILogAppender;

    invoke-static {v2}, Lcom/centauri/comm/log/internal/CTILogAppender;->access$200(Lcom/centauri/comm/log/internal/CTILogAppender;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auto flush error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
