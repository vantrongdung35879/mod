.class public final Lcom/tencent/protocol/tme/commonschema/MultiLang;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_LANG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Lang:Ljava/util/List;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        label = .enum Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->DEFAULT_LANG:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;->Lang:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/protocol/tme/commonschema/MultiLang;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;Lcom/tencent/protocol/tme/commonschema/MultiLang$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/commonschema/MultiLang;-><init>(Lcom/tencent/protocol/tme/commonschema/MultiLang$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/commonschema/KV;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    invoke-static {p1}, Lcom/squareup/tmes/Message;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/squareup/tmes/Message;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    check-cast p1, Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object p1, p1, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/protocol/tme/commonschema/MultiLang;->Lang:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :goto_1
    return v0
.end method
