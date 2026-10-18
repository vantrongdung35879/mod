.class public final synthetic Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

.field public final synthetic f$1:Lcom/garena/android/model/Result;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;->f$0:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    iput-object p2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;->f$1:Lcom/garena/android/model/Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;->f$0:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda4;->f$1:Lcom/garena/android/model/Result;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->$r8$lambda$xlfCmy4PhE3pQxeE21a-EvVkAZ0(Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/garena/android/model/Result;)V

    return-void
.end method
