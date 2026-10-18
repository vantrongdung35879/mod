.class public final synthetic Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lbolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lbolts/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda1;->f$0:Lbolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda1;->f$0:Lbolts/TaskCompletionSource;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/pgs/PgsController;->lambda$checkIsSignIn$9(Lbolts/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
