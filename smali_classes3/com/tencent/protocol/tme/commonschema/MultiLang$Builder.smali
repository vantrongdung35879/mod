.class public final Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/commonschema/MultiLang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/commonschema/MultiLang;",
        ">;"
    }
.end annotation


# instance fields
.field public Lang:Ljava/util/List;
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

.method public constructor <init>(Lcom/tencent/protocol/tme/commonschema/MultiLang;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;->Lang:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Lang(Ljava/util/List;)Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;)",
            "Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/tmes/Message$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;->Lang:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;->build()Lcom/tencent/protocol/tme/commonschema/MultiLang;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/commonschema/MultiLang;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/commonschema/MultiLang;-><init>(Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;Lcom/tencent/protocol/tme/commonschema/MultiLang$1;)V

    return-object v0
.end method
