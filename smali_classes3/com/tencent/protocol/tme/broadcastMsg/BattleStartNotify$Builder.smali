.class public final Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;",
        ">;"
    }
.end annotation


# instance fields
.field public Param:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;->Param:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;->Param:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Param(Ljava/util/List;)Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;)",
            "Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/tmes/Message$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;->Param:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify$1;)V

    return-object v0
.end method
