.class Lcom/perfsight/apm/utils/j$b;
.super Lcom/perfsight/apm/utils/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.unity3d.player.UnityPlayer"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/j$b;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/perfsight/apm/utils/j$b;->b:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfsight/apm/utils/j;-><init>(Lcom/perfsight/apm/utils/h;)V

    return-void
.end method

.method static b()Lcom/perfsight/apm/utils/j;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/utils/j$b;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfsight/apm/utils/j$b;

    invoke-direct {v0}, Lcom/perfsight/apm/utils/j$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/perfsight/apm/b/c;)V
    .locals 8

    invoke-static {p1}, Lcom/perfsight/apm/b/c;->a(Lcom/perfsight/apm/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/perfsight/apm/utils/j$b;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UnitySendMessage"

    const/4 v2, 0x3

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p1, Lcom/perfsight/apm/b/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfsight/apm/b/c;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UnityTApmCallBackGameObejct"

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    aput-object p1, v2, v7

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Send message to unity failed"

    invoke-static {p1, v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
