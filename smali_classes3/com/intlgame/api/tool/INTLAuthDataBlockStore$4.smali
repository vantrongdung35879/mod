.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreReadBytes(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
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
.field final synthetic val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;

.field final synthetic val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

.field final synthetic val$request:Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/blockstore/BlockstoreClient;Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iput-object p2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$request:Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;

    iput-object p3, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 304
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 307
    const-string p1, "INTLAuthDataBlockStore callBlockStoreReadBytes BlockStore api available, start retrieve bytes"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$client:Lcom/google/android/gms/auth/blockstore/BlockstoreClient;

    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$request:Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/blockstore/BlockstoreClient;->retrieveBytes(Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4$1;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4$1;-><init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;)V

    .line 310
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
