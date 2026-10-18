.class public abstract Lcom/squareup/tmes/Message$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/tmes/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/squareup/tmes/Message;->access$000(Lcom/squareup/tmes/Message;)Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap;

    invoke-static {p1}, Lcom/squareup/tmes/Message;->access$000(Lcom/squareup/tmes/Message;)Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/squareup/tmes/UnknownFieldMap;-><init>(Lcom/squareup/tmes/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/tmes/Message$Builder;->unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;

    :cond_0
    return-void
.end method

.method public static checkForNulls(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private ensureUnknownFieldMap()Lcom/squareup/tmes/UnknownFieldMap;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Message$Builder;->unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap;

    invoke-direct {v0}, Lcom/squareup/tmes/UnknownFieldMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/Message$Builder;->unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/Message$Builder;->unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;

    return-object v0
.end method


# virtual methods
.method public addFixed32(II)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/UnknownFieldMap;->addFixed32(ILjava/lang/Integer;)V

    return-void
.end method

.method public addFixed64(IJ)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/UnknownFieldMap;->addFixed64(ILjava/lang/Long;)V

    return-void
.end method

.method public addLengthDelimited(ILokio/ByteString;)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/UnknownFieldMap;->addLengthDelimited(ILokio/ByteString;)V

    return-void
.end method

.method public addVarint(IJ)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/tmes/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/UnknownFieldMap;->addVarint(ILjava/lang/Long;)V

    return-void
.end method

.method public abstract build()Lcom/squareup/tmes/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public checkRequiredFields()V
    .locals 2

    invoke-static {}, Lcom/squareup/tmes/Message;->access$100()Lcom/squareup/tmes/Wire;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->builderAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/BuilderAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/BuilderAdapter;->checkRequiredFields(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method
