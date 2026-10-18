.class Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->access$000(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Z

    move-result v0

    const-string v1, "MGPA-ForegroundCallbacks"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->access$100(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->access$002(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;Z)Z

    .line 3
    const-string/jumbo v0, "went background"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$1;->this$0:Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->access$200(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;

    .line 6
    :try_start_0
    invoke-interface {v2}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Listener threw exception!:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo v0, "still foreground"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
