.class public Lcom/tencent/qmsp/sdk/c/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/c/g$c;
    }
.end annotation


# static fields
.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[[B

.field private static m:Lcom/tencent/qmsp/sdk/c/g;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/qmsp/sdk/c/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/SharedPreferences;

.field private d:J

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/qmsp/sdk/c/g;->f:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/tencent/qmsp/sdk/c/g;->g:[B

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/tencent/qmsp/sdk/c/g;->h:[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/tencent/qmsp/sdk/c/g;->i:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    sput-object v2, Lcom/tencent/qmsp/sdk/c/g;->j:[B

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    sput-object v2, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    new-array v3, v0, [B

    fill-array-data v3, :array_7

    new-array v4, v1, [B

    fill-array-data v4, :array_8

    new-array v0, v0, [[B

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    sput-object v0, Lcom/tencent/qmsp/sdk/c/g;->l:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x75t
        -0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x72t
        -0x60t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x7dt
        -0x60t
        0x50t
        0xdt
        0x39t
        0x39t
        -0x7t
        0x24t
        0x64t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0x7dt
        -0x60t
        0x50t
        0xdt
        0x39t
        0x5bt
        -0x14t
        0x31t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x34t
        0x64t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x14t
        0x7dt
        -0x60t
        0x50t
        0x60t
        0x18t
        0x75t
    .end array-data

    :array_6
    .array-data 1
        0x36t
        0x64t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x31t
        0x63t
        -0x46t
    .end array-data

    :array_8
    .array-data 1
        0x36t
        0x73t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->c:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qmsp/sdk/c/g;->e:I

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/qmsp/sdk/c/g;->i:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/g;->b()V

    return-void
.end method

.method private a(II)I
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/g;->a(Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

.method private a(Landroid/util/Pair;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x36ee80

    const/16 v3, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CB-CYC] Plugin Ruery TimeOut : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return v5

    :pswitch_1
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CB-CYC] CB Ruery TimeOut : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return v5

    :pswitch_2
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CB-CYC] Socket Read TimeOut: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return v5

    :pswitch_3
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_4

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CB-CYC] Socket Conn TimeOut: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(III)V
    .locals 6

    sget-object v0, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v2, "[CB] report: funType=%d, result=%d,  NowTaskID=%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qmsp/sdk/a/g;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/a/g;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/a/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tencent/qmsp/sdk/a/f;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/tencent/qmsp/sdk/f/g;->a:Ljava/lang/String;

    const-string p2, "onReport error!"

    invoke-static {p1, v5, p2}, Lcom/tencent/qmsp/sdk/f/g;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .locals 2

    new-instance v0, Lcom/tencent/qmsp/sdk/c/g$a;

    invoke-direct {v0, p0}, Lcom/tencent/qmsp/sdk/c/g$a;-><init>(Lcom/tencent/qmsp/sdk/c/g;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qmsp/sdk/c/f;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/g;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->f:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->g:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/tencent/qmsp/sdk/c/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/g;->a(Landroid/util/Pair;)I

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_3

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget v1, p0, Lcom/tencent/qmsp/sdk/c/g;->e:I

    const/16 v2, 0x3ea

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/tencent/qmsp/sdk/c/g;->a(III)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->g()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/c/g$c;

    invoke-interface {v1, v0}, Lcom/tencent/qmsp/sdk/c/g$c;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "cb-->Result: "

    const-string v1, "Task: "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/tencent/qmsp/sdk/c/g;->l:[[B

    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/tencent/qmsp/sdk/c/g;->e:I

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v0, ""

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/tencent/qmsp/sdk/c/g;->e:I

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v2, p1}, Lcom/tencent/qmsp/sdk/c/g;->a(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private b([B)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qmsp/sdk/c/g;->a(II)I

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p1
.end method

.method private c()Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tencent/qmsp/sdk/c/g;->j:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/d;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "make query head Fail!"

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v3, v5, v4}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x200

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Lcom/tencent/qmsp/sdk/c/g;
    .locals 2

    sget-object v0, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qmsp/sdk/c/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/c/g;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/c/g;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qmsp/sdk/c/g;->h:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/tencent/qmsp/sdk/c/g;->j:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private g()V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->h()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/c/m;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/c/m;-><init>()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/qmsp/sdk/c/m;->a(Ljava/lang/String;[BLjava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private h()[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :catch_2
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v2, v1

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return-object v0

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    throw v1
.end method

.method private i()V
    .locals 10

    const-string v0, "CB: "

    :try_start_0
    iget v1, p0, Lcom/tencent/qmsp/sdk/c/g;->e:I

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/tencent/qmsp/sdk/c/g;->a(III)V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->c()Lorg/json/JSONObject;

    move-result-object v8

    sget-object v1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/b/g;->b()Lcom/tencent/qmsp/sdk/b/g;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAppID()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/tencent/qmsp/sdk/c/g$b;

    invoke-direct {v9, p0}, Lcom/tencent/qmsp/sdk/c/g$b;-><init>(Lcom/tencent/qmsp/sdk/c/g;)V

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qmsp/sdk/b/g;->a(ILjava/lang/String;ILorg/json/JSONObject;Lcom/tencent/qmsp/sdk/b/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qmsp/sdk/c/g;->m:Lcom/tencent/qmsp/sdk/c/g;

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/qmsp/sdk/c/g$c;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 6

    const-string v0, "next time: "

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getTaskStatus()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cb Task Finish\uff01"

    invoke-static {p1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Start to query cb!"

    :try_start_1
    invoke-static {v4, v2, v5}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->f()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v4, "time has not arrived!"

    :try_start_2
    invoke-static {p1, v2, v4}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p1, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-wide v3, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a(J)V

    return-void

    :catchall_1
    move-exception p1

    sget-object v2, Lcom/tencent/qmsp/sdk/c/g;->k:[B

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/g;->a([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/qmsp/sdk/c/g;->d:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qmsp/sdk/c/g;->a(J)V

    throw p1
.end method

.method public b()V
    .locals 4

    new-instance v0, Lcom/tencent/qmsp/sdk/c/m;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/c/m;-><init>()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/g;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qmsp/sdk/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/g;->b([B)V

    :cond_0
    return-void
.end method
