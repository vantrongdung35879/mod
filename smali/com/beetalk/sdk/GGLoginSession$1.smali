.class Lcom/beetalk/sdk/GGLoginSession$1;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;

    if-eqz p1, :cond_0

    .line 465
    invoke-interface {p1}, Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;->onComplete()V

    :cond_0
    return-void
.end method
