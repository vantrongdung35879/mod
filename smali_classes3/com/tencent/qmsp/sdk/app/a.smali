.class abstract Lcom/tencent/qmsp/sdk/app/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static LOGTag:[B = null

.field private static Txt1:[B = null

.field private static volatile atomCbTimeout:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static volatile atomConnTimeOut:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static volatile atomReadTimeOut:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static volatile atomUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static isLogin:Z = false

.field private static isTaskRuning:Z

.field private static mAppID:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDevID:Ljava/lang/String;

.field private static mQ16:Ljava/lang/String;

.field private static mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/tencent/qmsp/sdk/c/i;->a:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomCbTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/tencent/qmsp/sdk/c/i;->b:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomConnTimeOut:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/tencent/qmsp/sdk/c/i;->c:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomReadTimeOut:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/tencent/qmsp/sdk/c/i;->d:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->LOGTag:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->Txt1:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qmsp/sdk/app/a;->isTaskRuning:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0x60t
        -0x3t
        0x62t
        0x1ft
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x75t
        -0x5dt
        0x45t
        0x2ft
        0x2ft
        0x72t
        -0x7t
        0x65t
        0x79t
        -0x43t
        0x49t
        0x3at
        0x7at
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkParam(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/qmsp/sdk/app/a;->LOGTag:[B

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/tencent/qmsp/sdk/f/h;->a:[B

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAtomCbTimeout()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomCbTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomConnTimeOut:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomReadTimeOut:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getAtomUpdateInterval()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->atomUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDevId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->mDevID:Ljava/lang/String;

    return-object v0
.end method

.method public static getQ16()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->mQ16:Ljava/lang/String;

    return-object v0
.end method

.method public static getTaskStatus()Z
    .locals 2

    sget-boolean v0, Lcom/tencent/qmsp/sdk/app/a;->isTaskRuning:Z

    sget-boolean v1, Lcom/tencent/qmsp/sdk/app/a;->isLogin:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/app/a;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qmsp/sdk/app/a;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/tencent/qmsp/sdk/app/a;->mUid:Ljava/lang/String;

    sput-object p2, Lcom/tencent/qmsp/sdk/app/a;->mDevID:Ljava/lang/String;

    sput-object p3, Lcom/tencent/qmsp/sdk/app/a;->mAppID:Ljava/lang/String;

    sput-object p4, Lcom/tencent/qmsp/sdk/app/a;->mQ16:Ljava/lang/String;

    return-void
.end method

.method protected static login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0}, Lcom/tencent/qmsp/sdk/app/a;->checkParam(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-boolean v1, Lcom/tencent/qmsp/sdk/app/a;->isLogin:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object p0, Lcom/tencent/qmsp/sdk/app/a;->LOGTag:[B

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/tencent/qmsp/sdk/app/a;->Txt1:[B

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_1
    invoke-static {v2}, Lcom/tencent/qmsp/sdk/app/a;->setTaskStatus(Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qmsp/sdk/app/a;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/b/g;->b()Lcom/tencent/qmsp/sdk/b/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/b/g;->a()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/f;->f()V

    const/4 p0, 0x4

    invoke-static {v0, p0}, Lcom/tencent/qmsp/sdk/a/a;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/tencent/qmsp/sdk/a/a;->a(II)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->logout()V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x3

    return p0
.end method

.method protected static login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qmsp/sdk/b/f;)I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0}, Lcom/tencent/qmsp/sdk/app/a;->checkParam(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-boolean v1, Lcom/tencent/qmsp/sdk/app/a;->isLogin:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object p0, Lcom/tencent/qmsp/sdk/app/a;->LOGTag:[B

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/tencent/qmsp/sdk/app/a;->Txt1:[B

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/tencent/qmsp/sdk/f/g;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_1
    invoke-static {v2}, Lcom/tencent/qmsp/sdk/app/a;->setTaskStatus(Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qmsp/sdk/app/a;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/b/g;->b()Lcom/tencent/qmsp/sdk/b/g;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/tencent/qmsp/sdk/b/g;->a(Lcom/tencent/qmsp/sdk/b/f;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/f;->f()V

    const/4 p0, 0x4

    invoke-static {v0, p0}, Lcom/tencent/qmsp/sdk/a/a;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/tencent/qmsp/sdk/a/a;->a(II)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/a;->logout()V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x3

    return p0
.end method

.method protected static logout()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/tencent/qmsp/sdk/app/a;->setTaskStatus(Z)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/b;->e()Lcom/tencent/qmsp/sdk/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/app/b;->d()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static reset()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->mUid:Ljava/lang/String;

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->mDevID:Ljava/lang/String;

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->mAppID:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/qmsp/sdk/app/a;->isLogin:Z

    sput-object v0, Lcom/tencent/qmsp/sdk/app/a;->mQ16:Ljava/lang/String;

    return-void
.end method

.method private static setTaskStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qmsp/sdk/app/a;->isTaskRuning:Z

    sput-boolean p0, Lcom/tencent/qmsp/sdk/app/a;->isLogin:Z

    return-void
.end method

.method public static setmUid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qmsp/sdk/app/a;->mUid:Ljava/lang/String;

    return-void
.end method
