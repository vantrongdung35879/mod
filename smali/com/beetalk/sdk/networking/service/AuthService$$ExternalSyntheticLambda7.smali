.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/beetalk/sdk/request/ResponseType;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$2:Lcom/beetalk/sdk/request/ResponseType;

    iput-object p4, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$4:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$2:Lcom/beetalk/sdk/request/ResponseType;

    iget-object v3, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda7;->f$4:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$grantGuestToken$1(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
