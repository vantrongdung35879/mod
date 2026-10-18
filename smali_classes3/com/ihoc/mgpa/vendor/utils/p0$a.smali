.class public final Lcom/ihoc/mgpa/vendor/utils/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static c:Lcom/ihoc/mgpa/vendor/utils/p0$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->b:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v1, "com.vivo.gamewatch.common.GameWatchManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->a:Ljava/lang/Object;

    const-string v0, "execute"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a()Lcom/ihoc/mgpa/vendor/utils/p0$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->c:Lcom/ihoc/mgpa/vendor/utils/p0$a;

    if-nez v0, :cond_1

    const-class v0, Lcom/ihoc/mgpa/vendor/utils/p0$a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/vendor/utils/p0$a;->c:Lcom/ihoc/mgpa/vendor/utils/p0$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/p0$a;

    invoke-direct {v1}, Lcom/ihoc/mgpa/vendor/utils/p0$a;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/vendor/utils/p0$a;->c:Lcom/ihoc/mgpa/vendor/utils/p0$a;

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
    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->c:Lcom/ihoc/mgpa/vendor/utils/p0$a;

    return-object v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ihoc/mgpa/vendor/utils/p0$a;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method
