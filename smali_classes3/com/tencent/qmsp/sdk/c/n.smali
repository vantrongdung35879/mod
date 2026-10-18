.class public Lcom/tencent/qmsp/sdk/c/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/c/e;
.implements Lcom/tencent/qmsp/sdk/c/d;


# static fields
.field private static volatile a:Lcom/tencent/qmsp/sdk/c/n;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qmsp/sdk/c/n$a;

    invoke-direct {v0, p0}, Lcom/tencent/qmsp/sdk/c/n$a;-><init>(Lcom/tencent/qmsp/sdk/c/n;)V

    const-wide/16 v1, 0x3

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/c/f;->a(JLcom/tencent/qmsp/sdk/c/f$f;)V

    return-void
.end method

.method public static b()Lcom/tencent/qmsp/sdk/c/n;
    .locals 2

    sget-object v0, Lcom/tencent/qmsp/sdk/c/n;->a:Lcom/tencent/qmsp/sdk/c/n;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qmsp/sdk/c/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/c/n;->a:Lcom/tencent/qmsp/sdk/c/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/c/n;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/c/n;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/sdk/c/n;->a:Lcom/tencent/qmsp/sdk/c/n;

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
    sget-object v0, Lcom/tencent/qmsp/sdk/c/n;->a:Lcom/tencent/qmsp/sdk/c/n;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Rpt"

    return-object v0
.end method

.method public a(JJLjava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    :cond_0
    long-to-int p1, p3

    invoke-static {p5, p1}, Lcom/tencent/qmsp/sdk/a/f;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
