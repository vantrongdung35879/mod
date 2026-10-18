.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$appPlatformBindCreate$6(Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;Lbolts/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
