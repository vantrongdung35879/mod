.class public Lcom/perfsight/apm/utils/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/utils/j$c;,
        Lcom/perfsight/apm/utils/j$b;,
        Lcom/perfsight/apm/utils/j$a;
    }
.end annotation


# static fields
.field private static a:Lcom/perfsight/apm/utils/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/perfsight/apm/utils/j;->b()Lcom/perfsight/apm/utils/j;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/j;->a:Lcom/perfsight/apm/utils/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perfsight/apm/utils/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfsight/apm/utils/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/perfsight/apm/utils/j;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/utils/j;->a:Lcom/perfsight/apm/utils/j;

    return-object v0
.end method

.method private static b()Lcom/perfsight/apm/utils/j;
    .locals 1

    invoke-static {}, Lcom/perfsight/apm/utils/j$a;->b()Lcom/perfsight/apm/utils/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/utils/j$b;->b()Lcom/perfsight/apm/utils/j;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/perfsight/apm/utils/j$c;->b()Lcom/perfsight/apm/utils/j;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/perfsight/apm/utils/j;

    invoke-direct {v0}, Lcom/perfsight/apm/utils/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/perfsight/apm/b/c;)V
    .locals 6

    invoke-static {p1}, Lcom/perfsight/apm/b/c;->a(Lcom/perfsight/apm/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/perfsight/apm/b/c;->a:Ljava/lang/Class;

    iget-object v1, p1, Lcom/perfsight/apm/b/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p1, p1, Lcom/perfsight/apm/b/c;->c:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Send message failed"

    invoke-static {p1, v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
