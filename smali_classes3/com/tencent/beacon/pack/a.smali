.class public final Lcom/tencent/beacon/pack/a;
.super Ljava/lang/Object;
.source "JceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/pack/a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 2
    iput-object v0, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 4
    iput-object v0, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 7
    iput-object v0, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static a(Lcom/tencent/beacon/pack/a$a;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    .line 2
    iput-byte v1, p0, Lcom/tencent/beacon/pack/a$a;->a:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 3
    iput v0, p0, Lcom/tencent/beacon/pack/a$a;->b:I

    .line 4
    iget v0, p0, Lcom/tencent/beacon/pack/a$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/tencent/beacon/pack/a$a;->b:I

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 241
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 243
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 246
    invoke-virtual {p0, p3}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 247
    new-instance p3, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p3}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 248
    invoke-virtual {p0, p3}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 249
    iget-byte p3, p3, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p4, 0x8

    if-ne p3, p4, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 250
    invoke-virtual {p0, p3, p3, p4}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 251
    invoke-virtual {p0, v0, p3, p4}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 252
    invoke-virtual {p0, p2, p4, p4}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 253
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p4, :cond_5

    :cond_4
    return-object p1

    .line 256
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(B)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :pswitch_0
    new-instance v0, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 24
    iget-byte v1, v0, Lcom/tencent/beacon/pack/a$a;->a:B

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0, v4, v4, v3}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p1

    .line 26
    invoke-direct {p0, p1}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto/16 :goto_2

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/beacon/pack/a;->a()V

    goto :goto_2

    .line 29
    :pswitch_2
    invoke-virtual {p0, v4, v4, v3}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p1

    :goto_0
    if-ge v4, p1, :cond_2

    .line 30
    invoke-direct {p0}, Lcom/tencent/beacon/pack/a;->b()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :pswitch_3
    invoke-virtual {p0, v4, v4, v3}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p1

    :goto_1
    mul-int/lit8 v0, p1, 0x2

    if-ge v4, v0, :cond_2

    .line 32
    invoke-direct {p0}, Lcom/tencent/beacon/pack/a;->b()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 34
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 36
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 37
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 38
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 39
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 40
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/tencent/beacon/pack/a;->b(I)V

    goto :goto_2

    .line 41
    :pswitch_b
    invoke-direct {p0, v3}, Lcom/tencent/beacon/pack/a;->b(I)V

    :cond_2
    :goto_2
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_c
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/tencent/beacon/pack/a$a;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 1

    .line 3
    new-instance v0, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 5
    iget-byte v0, v0, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-direct {p0, v0}, Lcom/tencent/beacon/pack/a;->a(B)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p2}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 8
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 9
    iget-byte p2, p2, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p3, 0x9

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p0, p2, p2, p3}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(BIZ)B
    .locals 0

    .line 43
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 44
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 46
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    if-eqz p1, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return p1

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(DIZ)D
    .locals 0

    .line 84
    invoke-virtual {p0, p3}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 85
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 87
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    :goto_0
    return-wide p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(FIZ)F
    .locals 0

    .line 77
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 78
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 80
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(IIZ)I
    .locals 0

    .line 58
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 59
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 61
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    :goto_0
    return p1

    .line 66
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public a(JIZ)J
    .locals 0

    .line 67
    invoke-virtual {p0, p3}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 68
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 70
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0xc

    if-eq p1, p2, :cond_4

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 72
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    :goto_0
    int-to-long p1, p1

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_5
    if-nez p4, :cond_6

    :goto_1
    return-wide p1

    .line 76
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/beacon/pack/AbstractJceStruct;IZ)Lcom/tencent/beacon/pack/AbstractJceStruct;
    .locals 0

    .line 172
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/AbstractJceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    new-instance p2, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p2}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 175
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 176
    iget-byte p2, p2, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p3, 0xa

    if-ne p2, p3, :cond_0

    .line 177
    invoke-virtual {p1, p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;->readFrom(Lcom/tencent/beacon/pack/a;)V

    .line 178
    invoke-virtual {p0}, Lcom/tencent/beacon/pack/a;->a()V

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 180
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 181
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(ZIZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 186
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 188
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p1

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 191
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 192
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 193
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 195
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    .line 196
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 197
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/tencent/beacon/pack/a;->a(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 200
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 201
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 202
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 203
    :cond_9
    instance-of v0, p1, Lcom/tencent/beacon/pack/AbstractJceStruct;

    if-eqz v0, :cond_a

    .line 204
    check-cast p1, Lcom/tencent/beacon/pack/AbstractJceStruct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/AbstractJceStruct;IZ)Lcom/tencent/beacon/pack/AbstractJceStruct;

    move-result-object p1

    return-object p1

    .line 205
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 206
    instance-of v0, p1, [B

    const/4 v1, 0x0

    if-nez v0, :cond_12

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_b

    goto :goto_0

    .line 207
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 208
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([ZIZ)[Z

    move-result-object p1

    return-object p1

    .line 209
    :cond_c
    instance-of v0, p1, [S

    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([SIZ)[S

    move-result-object p1

    return-object p1

    .line 211
    :cond_d
    instance-of v0, p1, [I

    if-eqz v0, :cond_e

    .line 212
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([IIZ)[I

    move-result-object p1

    return-object p1

    .line 213
    :cond_e
    instance-of v0, p1, [J

    if-eqz v0, :cond_f

    .line 214
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([JIZ)[J

    move-result-object p1

    return-object p1

    .line 215
    :cond_f
    instance-of v0, p1, [F

    if-eqz v0, :cond_10

    .line 216
    move-object p1, v1

    check-cast p1, [F

    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([FIZ)[F

    move-result-object p1

    return-object p1

    .line 217
    :cond_10
    instance-of v0, p1, [D

    if-eqz v0, :cond_11

    .line 218
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([DIZ)[D

    move-result-object p1

    return-object p1

    .line 219
    :cond_11
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 220
    :cond_12
    :goto_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object p1

    return-object p1

    .line 221
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 223
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 225
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/4 p2, 0x6

    const-string v0, "UTF-8"

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    .line 226
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    .line 227
    iget-object p2, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 228
    new-array p1, p1, [B

    .line 229
    iget-object p2, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 232
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_3

    add-int/lit16 p1, p1, 0x100

    .line 235
    :cond_3
    new-array p1, p1, [B

    .line 236
    iget-object p2, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 237
    :try_start_1
    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/beacon/pack/a;->a:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    const/4 p2, 0x0

    :goto_0
    return-object p2

    .line 239
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public a(Ljava/util/List;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;IZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 263
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    :goto_0
    array-length p3, p1

    if-ge v0, p3, :cond_2

    .line 265
    aget-object p3, p1, v0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 266
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(SIZ)S
    .locals 0

    .line 50
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 53
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :goto_0
    return p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 3

    .line 17
    new-instance v0, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 19
    iget-byte v1, v0, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/beacon/pack/a;->a(B)V

    .line 20
    iget-byte v1, v0, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    return-void
.end method

.method public a(Lcom/tencent/beacon/pack/a$a;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {v1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 9
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/beacon/pack/a;->b(Lcom/tencent/beacon/pack/a$a;)I

    move-result v2

    .line 10
    iget-byte v3, v1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    return v0

    .line 11
    :cond_0
    iget v3, v1, Lcom/tencent/beacon/pack/a$a;->b:I

    if-gt p1, v3, :cond_2

    .line 12
    iget v1, v1, Lcom/tencent/beacon/pack/a$a;->b:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 13
    :cond_2
    invoke-direct {p0, v2}, Lcom/tencent/beacon/pack/a;->b(I)V

    .line 14
    iget-byte v2, v1, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/beacon/pack/a;->a(B)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public a(ZIZ)Z
    .locals 0

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public a([BIZ)[B
    .locals 6

    .line 102
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 103
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 105
    iget-byte p3, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_3

    const/16 v0, 0xd

    if-ne p3, v0, :cond_2

    .line 106
    new-instance p3, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p3}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 107
    invoke-virtual {p0, p3}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 108
    iget-byte v0, p3, Lcom/tencent/beacon/pack/a$a;->a:B

    const-string v3, ", "

    const-string v4, ", type: "

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 111
    new-array p1, v0, [B

    .line 112
    iget-object p2, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "invalid size, tag: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p3, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type mismatch, tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p3, Lcom/tencent/beacon/pack/a$a;->a:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p1

    if-ltz p1, :cond_5

    .line 117
    iget-object p2, p0, Lcom/tencent/beacon/pack/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-gt p1, p2, :cond_5

    .line 118
    new-array p2, p1, [B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    .line 119
    aget-byte v0, p2, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/tencent/beacon/pack/a;->a(BIZ)B

    move-result v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    move-object p1, p2

    goto :goto_1

    .line 120
    :cond_5
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-nez p3, :cond_7

    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 121
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([DIZ)[D
    .locals 4

    .line 162
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 165
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 166
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 167
    new-array v0, p3, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 168
    aget-wide v2, v0, p1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/tencent/beacon/pack/a;->a(DIZ)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 171
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([FIZ)[F
    .locals 3

    .line 152
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 155
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 156
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 157
    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 158
    aget v2, v0, p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/beacon/pack/a;->a(FIZ)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 161
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([IIZ)[I
    .locals 3

    .line 132
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 135
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 136
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 137
    new-array v0, p3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 138
    aget v2, v0, p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 141
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([JIZ)[J
    .locals 4

    .line 142
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 145
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 146
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 147
    new-array v0, p3, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 148
    aget-wide v2, v0, p1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/tencent/beacon/pack/a;->a(JIZ)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 258
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 259
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/beacon/pack/a;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([SIZ)[S
    .locals 3

    .line 122
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 125
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 127
    new-array v0, p3, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 128
    aget-short v2, v0, p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/beacon/pack/a;->a(SIZ)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([ZIZ)[Z
    .locals 3

    .line 92
    invoke-virtual {p0, p2}, Lcom/tencent/beacon/pack/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Lcom/tencent/beacon/pack/a$a;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/a$a;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/pack/a;->a(Lcom/tencent/beacon/pack/a$a;)V

    .line 95
    iget-byte p1, p1, Lcom/tencent/beacon/pack/a$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 96
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/beacon/pack/a;->a(IIZ)I

    move-result p3

    if-ltz p3, :cond_0

    .line 97
    new-array v0, p3, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 98
    aget-boolean v2, v0, p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/beacon/pack/a;->a(ZIZ)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "size invalid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "type mismatch."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
