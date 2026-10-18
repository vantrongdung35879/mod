.class public Lcom/tencent/mna/a3;
.super Ljava/lang/Object;
.source "RouterMsg.java"


# instance fields
.field public a:I

.field public b:S

.field public c:S

.field public d:S

.field public e:Ljava/lang/String;

.field public f:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ISSLjava/lang/String;)Lcom/tencent/mna/a3;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/a3;

    invoke-direct {v0}, Lcom/tencent/mna/a3;-><init>()V

    .line 2
    iput p0, v0, Lcom/tencent/mna/a3;->a:I

    .line 3
    iput-short p1, v0, Lcom/tencent/mna/a3;->b:S

    .line 4
    iput-short p2, v0, Lcom/tencent/mna/a3;->c:S

    .line 5
    iput-object p3, v0, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    const/16 p0, 0x3e9

    if-ne p2, p0, :cond_0

    .line 9
    sget-object p0, Lcom/tencent/mna/a;->b:[B

    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    sget-object p0, Lcom/tencent/mna/c3;->b:Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    invoke-static {p0, p3}, Lcom/tencent/mna/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mna/a3;->f:[B

    if-eqz p0, :cond_1

    .line 19
    array-length p0, p0

    int-to-short p0, p0

    iput-short p0, v0, Lcom/tencent/mna/a3;->d:S

    :cond_1
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Lcom/tencent/mna/a3;
    .locals 5

    .line 20
    array-length v0, p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 25
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/mna/a3;

    invoke-direct {v0}, Lcom/tencent/mna/a3;-><init>()V

    .line 26
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/a3;->a:I

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/mna/a3;->b:S

    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/mna/a3;->c:S

    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/mna/a3;->d:S

    .line 31
    new-array v1, v1, [B

    .line 32
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    iput-object v1, v0, Lcom/tencent/mna/a3;->f:[B

    .line 36
    iget-short p0, v0, Lcom/tencent/mna/a3;->c:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x3ea

    const-string v3, "UTF-8"

    if-ne p0, v1, :cond_1

    .line 37
    :try_start_1
    sget-object p0, Lcom/tencent/mna/a;->b:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    :cond_1
    :try_start_2
    sget-object p0, Lcom/tencent/mna/c3;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mna/a3;->f:[B

    invoke-static {p0, v4}, Lcom/tencent/mna/a;->a([B[B)[B

    move-result-object p0

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mna/a3;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_0
    return-object v2

    :catch_1
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convert bytearray to RouterMsg failed, exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 49
    iget-short v0, p0, Lcom/tencent/mna/a3;->d:S

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public b([B)V
    .locals 3

    .line 3
    array-length v0, p1

    invoke-virtual {p0}, Lcom/tencent/mna/a3;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/tencent/mna/a3;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    iget-short v0, p0, Lcom/tencent/mna/a3;->b:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    iget-short v0, p0, Lcom/tencent/mna/a3;->c:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 10
    iget-short v0, p0, Lcom/tencent/mna/a3;->d:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v0, p0, Lcom/tencent/mna/a3;->f:[B

    iget-short v1, p0, Lcom/tencent/mna/a3;->d:S

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/mna/a3;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/mna/a3;->b([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RouterMsg::: bussId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mna/a3;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/tencent/mna/a3;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/tencent/mna/a3;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/tencent/mna/a3;->d:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/a3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
