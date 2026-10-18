.class public Lcom/tencent/tme/live/w0/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/w0/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;)Lcom/tencent/tme/live/w0/b;
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/w0/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/b;-><init>()V

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;->Param:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/tme/live/w0/b;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/tencent/protocol/tme/broadcastMsg/BattleStartNotify;->Param:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/protocol/tme/commonschema/KV;

    new-instance v2, Lcom/tencent/tme/live/w0/b$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/w0/b$a;-><init>()V

    iget-object v3, v1, Lcom/tencent/protocol/tme/commonschema/KV;->key:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/tme/live/w0/b$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/protocol/tme/commonschema/KV;->value:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/tme/live/w0/b$a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tme/live/w0/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/tencent/protocol/tme/commonschema/KV;->key:Ljava/lang/String;

    const-string v3, "schedule_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/tencent/protocol/tme/commonschema/KV;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v0
.end method
