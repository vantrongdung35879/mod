.class public final synthetic Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/data/AuthToken;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GGLoginSessionInspectTokenHelper;->$r8$lambda$vEMN-gNyrI0u9xD9nEOwN_xeSF4(Lcom/beetalk/sdk/data/AuthToken;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
