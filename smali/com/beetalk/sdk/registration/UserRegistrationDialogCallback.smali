.class public interface abstract Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;
.super Ljava/lang/Object;
.source "UserRegistrationDialogCallback.java"


# virtual methods
.method public abstract onDialogClosed()V
.end method

.method public abstract onDialogShown()V
.end method

.method public abstract onResult(Lcom/garena/android/model/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/registration/model/RegistrationFormResult;",
            ">;)V"
        }
    .end annotation
.end method
