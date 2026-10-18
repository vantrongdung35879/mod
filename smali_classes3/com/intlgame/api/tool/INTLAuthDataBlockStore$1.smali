.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/intlgame/api/tool/INTLAuthDataBlockStore$ReadBlockStoreResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->readAuthDataFromBlockStore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

.field final synthetic val$baseParamsJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    iput-object p2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;->val$baseParamsJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadBlockStoreDataResult(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    invoke-static {v0, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->access$000(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/util/Map;)[B

    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAuthDataBlockStore readDataFromBlockStore size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    iget-object v1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$1;->val$baseParamsJson:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->access$100(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;[B)V

    return-void
.end method
