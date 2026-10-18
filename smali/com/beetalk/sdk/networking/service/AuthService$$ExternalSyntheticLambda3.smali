.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGPlatform$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/GGPlatform$Callback;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/GGPlatform$Callback;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$getAppPlatformBindInfo$4(Lcom/beetalk/sdk/GGPlatform$Callback;Lbolts/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
