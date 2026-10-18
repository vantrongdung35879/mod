.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$bindGuestAccount$2(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
