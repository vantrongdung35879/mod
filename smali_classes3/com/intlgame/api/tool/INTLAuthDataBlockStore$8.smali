.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreDeleteBytes(Ljava/util/List;)V
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

.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$request:Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iput-object p2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->val$request:Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;

    iput-object p3, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 428
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 431
    const-string p1, "INTLAuthDataBlockStore callBlockStoreDeleteBytes BlockStore api available, start delete bytes"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;->val$request:Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/blockstore/BlockstoreClient;->deleteBytes(Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8$1;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8$1;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$8;)V

    .line 434
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
