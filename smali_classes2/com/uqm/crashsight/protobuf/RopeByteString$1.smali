.class Lcom/uqm/crashsight/protobuf/RopeByteString$1;
.super Lcom/uqm/crashsight/protobuf/ByteString$AbstractByteIterator;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/RopeByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

.field private b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

.field private synthetic c:Lcom/uqm/crashsight/protobuf/RopeByteString;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/RopeByteString;)V
    .locals 2

    .line 301
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->c:Lcom/uqm/crashsight/protobuf/RopeByteString;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 302
    new-instance p1, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->c:Lcom/uqm/crashsight/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;B)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->a:Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    .line 303
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    return-void
.end method

.method private b()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->a:Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->a:Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;->a()Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()B
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_1

    .line 321
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->a()B

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    :cond_0
    return v0

    .line 319
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
