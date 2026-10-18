.class public final Lcom/tencent/gsdk/e;
.super Ljava/lang/Object;
.source "ActivityLifecycleDetector.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/e;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/tencent/gsdk/e;->b:Z

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/e;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-static {p0}, Lcom/tencent/gsdk/h;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/tencent/gsdk/e;->b:Z

    .line 12
    new-instance v0, Lcom/tencent/gsdk/e$b;

    invoke-direct {v0}, Lcom/tencent/gsdk/e$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/gsdk/d;)Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/tencent/gsdk/e;->b:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/tencent/gsdk/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/e;->a:Ljava/util/List;

    .line 6
    :cond_0
    sget-object v0, Lcom/tencent/gsdk/e;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    sget-boolean p0, Lcom/tencent/gsdk/e;->b:Z

    return p0
.end method

.method private static b()V
    .locals 4

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 6
    const-class v1, Landroid/app/ActivityThread;

    const-string v2, "mInstrumentation"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation;

    if-eqz v3, :cond_0

    .line 12
    sput-boolean v2, Lcom/tencent/gsdk/e;->b:Z

    .line 13
    new-instance v2, Lcom/tencent/gsdk/e$a;

    invoke-direct {v2, v3}, Lcom/tencent/gsdk/e$a;-><init>(Landroid/app/Instrumentation;)V

    .line 413
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/e;->a(Landroid/content/Context;)V

    return-void
.end method
