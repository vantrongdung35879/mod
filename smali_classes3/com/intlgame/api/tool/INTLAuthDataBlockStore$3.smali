.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$3;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->callBlockStoreReadBytes(Ljava/util/List;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$3;->val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore callBlockStoreReadBytes checkApiAvailability exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$3;->val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1, v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;->onReadBlockStoreDataResult(Ljava/util/Map;)V

    return-void
.end method
