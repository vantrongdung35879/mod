.class public Lcom/tencent/tme/live/z1/e$a;
.super Lcom/tencent/tme/live/z1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/z1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public f:Ljava/nio/ByteBuffer;

.field public final synthetic g:Lcom/tencent/tme/live/z1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/z1/e;Lcom/tencent/tme/live/z1/e$a;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/z1/e$a;->g:Lcom/tencent/tme/live/z1/e;

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/z1/a;-><init>(Lcom/tencent/tme/live/z1/a;)V

    iput-object p3, p0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/z1/e;Ljava/nio/ByteBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/live/z1/e$a;->g:Lcom/tencent/tme/live/z1/e;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/z1/a;-><init>(Lcom/tencent/tme/live/z1/c;I)V

    iput-object p2, p0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public g()V
    .locals 0

    return-void
.end method
