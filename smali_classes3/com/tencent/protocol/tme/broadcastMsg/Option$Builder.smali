.class public final Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
        ">;"
    }
.end annotation


# instance fields
.field public option_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public option_id:Ljava/lang/Integer;

.field public take_number:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/Option;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/Option;->option_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->option_id:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/Option;->option_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->option_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/Option;->take_number:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->take_number:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/Option;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/Option;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/Option;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;Lcom/tencent/protocol/tme/broadcastMsg/Option$1;)V

    return-object v0
.end method

.method public option_content(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->option_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public option_id(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->option_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public take_number(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/Option$Builder;->take_number:Ljava/lang/Integer;

    return-object p0
.end method
