.class Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForegroundCallbacks"
.end annotation


# instance fields
.field private activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;


# direct methods
.method private constructor <init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;-><init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityStarted: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TGPAManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->setForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityStopped: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TGPAManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->setForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
