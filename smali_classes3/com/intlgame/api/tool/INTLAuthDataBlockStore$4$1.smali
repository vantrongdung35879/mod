.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4$1;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;",
            ">;)V"
        }
    .end annotation

    .line 313
    const-string v0, "INTLAuthDataBlockStore callBlockStoreReadBytes retrieve bytes onComplete"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;

    iget-object v0, v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$4;->val$callback:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;

    invoke-static {p1, v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->access$200(Lcom/google/android/gms/tasks/Task;Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;)V

    return-void
.end method
