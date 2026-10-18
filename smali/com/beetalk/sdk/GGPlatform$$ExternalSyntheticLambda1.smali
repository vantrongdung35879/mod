.class public final synthetic Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$3:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda1;->f$3:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGPlatform;->lambda$openRegistrationForm$3(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
