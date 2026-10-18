.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreSaveBytes(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$request:Lcom/google/android/gms/auth/blockstore/StoreBytesData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/StoreBytesData;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iput-object p2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$request:Lcom/google/android/gms/auth/blockstore/StoreBytesData;

    iput-object p3, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 374
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 377
    const-string p1, "INTLAuthDataBlockStore callBlockStoreSaveBytes BlockStore api available, start save bytes"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$request:Lcom/google/android/gms/auth/blockstore/StoreBytesData;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/blockstore/BlockstoreClient;->storeBytes(Lcom/google/android/gms/auth/blockstore/StoreBytesData;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6$1;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6$1;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;)V

    .line 380
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
