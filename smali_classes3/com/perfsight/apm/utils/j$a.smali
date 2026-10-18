.class Lcom/perfsight/apm/utils/j$a;
.super Lcom/perfsight/apm/utils/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static b:Ljava/lang/Class;


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.cocos2dx.lib.Cocos2dxActivity"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/perfsight/apm/utils/j$a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/perfsight/apm/utils/j$a;->b:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfsight/apm/utils/j;-><init>(Lcom/perfsight/apm/utils/h;)V

    iput-object v0, p0, Lcom/perfsight/apm/utils/j$a;->c:Landroid/app/Activity;

    return-void
.end method

.method static b()Lcom/perfsight/apm/utils/j;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/utils/j$a;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfsight/apm/utils/j$a;

    invoke-direct {v0}, Lcom/perfsight/apm/utils/j$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/perfsight/apm/b/c;)V
    .locals 7

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

    new-instance v1, Lcom/perfsight/apm/utils/i;

    invoke-direct {v1, p0, v0, p1}, Lcom/perfsight/apm/utils/i;-><init>(Lcom/perfsight/apm/utils/j$a;Ljava/lang/reflect/Method;Lcom/perfsight/apm/b/c;)V

    iget-boolean p1, p1, Lcom/perfsight/apm/b/c;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perfsight/apm/utils/j$a;->c:Landroid/app/Activity;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/perfsight/apm/utils/j$a;->c()Landroid/app/Activity;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/perfsight/apm/utils/j$a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "runOnGLThread"

    :try_start_1
    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Send message to cocos failed"

    invoke-static {p1, v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/utils/j$a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/perfsight/apm/utils/j$a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getContext"

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/perfsight/apm/utils/j$a;->c:Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Get Activity failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/perfsight/apm/utils/j$a;->c:Landroid/app/Activity;

    return-object v0
.end method
