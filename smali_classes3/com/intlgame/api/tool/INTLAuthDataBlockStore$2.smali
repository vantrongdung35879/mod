.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->startReadAuthDataTimeoutTimer(Ljava/lang/String;)V
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

    .line 105
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    iput-object p2, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;->val$baseParamsJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    const-string v0, "INTLAuthDataBlockStore readAuthDataFromBlockStore timeout"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore;

    iget-object v1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$2;->val$baseParamsJson:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->access$100(Lcom/intlgame/api/tool/INTLAuthDataBlockStore;Ljava/lang/String;[B)V

    return-void
.end method
