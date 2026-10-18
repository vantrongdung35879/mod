.class public final synthetic Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->lambda$exchangeTokenFromGOP$1$com-beetalk-sdk-TwitterAuthRequestHandler(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
